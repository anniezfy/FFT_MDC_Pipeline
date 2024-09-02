package Compute
import DataConfig.{Complex, HasDataConfig}
import chisel3._
import chisel3.stage._

/*
单个浮点类型的加法模块
 */

/*继承BlackBox,例化黑盒时不会给端口名加上前缀io_*/
class FPAdd_blackbox extends BlackBox with HasDataConfig{
  val io = IO(new Bundle{
    val aclk = Input(Clock())
    val s_axis_a_tdata = Input(UInt(32.W))
    val s_axis_a_tvalid = Input(Bool())

    val s_axis_b_tdata = Input(UInt(32.W))
    val s_axis_b_tvalid = Input(Bool())

    val m_axis_result_tdata = Output(UInt(32.W))
    val m_axis_result_tvalid = Output(Bool())
  })
}

/*
一个复数加法由两个浮点加法单元构成
 */

/*每一个模块中隐藏了clock和reset信号端口*/
class FPComplexAdd_blackbox extends Module with HasDataConfig{
   val io = IO(new Bundle{
     val op1 = Input(new Complex(UInt(DataWidth.W)))
     val op2 = Input(new Complex(UInt(DataWidth.W)))
     val res = Output(new Complex(UInt(DataWidth.W)))
     val ready = Input(Bool())
     val valid = Output(Bool())
   })

  val commul_re = Module(new FPAdd_blackbox)
  val commul_im = Module(new FPAdd_blackbox)

  commul_im.io.aclk := clock
  commul_im.io.s_axis_a_tdata := io.op1.im
  commul_im.io.s_axis_a_tvalid := io.ready
  commul_im.io.s_axis_b_tdata := io.op2.im
  commul_im.io.s_axis_b_tvalid := io.ready
  io.res.im := commul_im.io.m_axis_result_tdata

  commul_re.io.aclk := clock
  commul_re.io.s_axis_a_tdata := io.op1.re
  commul_re.io.s_axis_a_tvalid := io.ready
  commul_re.io.s_axis_b_tdata := io.op2.re
  commul_re.io.s_axis_b_tvalid := io.ready
  io.res.re := commul_re.io.m_axis_result_tdata
  io.valid := commul_im.io.m_axis_result_tvalid
}

/*
单个浮点类型的减法模块
 */

class FPSub_blackbox extends BlackBox with HasDataConfig{
  val io = IO(new Bundle{
    val aclk = Input(Clock())
    val s_axis_a_tdata = Input(UInt(32.W))
    val s_axis_a_tvalid = Input(Bool())

    val s_axis_b_tdata = Input(UInt(32.W))
    val s_axis_b_tvalid = Input(Bool())

    val m_axis_result_tdata = Output(UInt(32.W))
    val m_axis_result_tvalid = Output(Bool())
  })


}

/*
一个复数减法由两个浮点减法单元构成
 */
class FPComplexSub_blackbox extends Module with HasDataConfig{
 val io = IO(new Bundle{
   val op1 = Input(new Complex(UInt(DataWidth.W)))
   val op2 = Input(new Complex(UInt(DataWidth.W)))
   val res = Output(new Complex(UInt(DataWidth.W)))
   val ready = Input(Bool())
   val valid = Output(Bool())
 })

  val commul_re = Module(new FPSub_blackbox)
  val commul_im = Module(new FPSub_blackbox)

  commul_im.io.aclk := clock
  commul_im.io.s_axis_a_tdata := io.op1.im
  commul_im.io.s_axis_a_tvalid := io.ready
  commul_im.io.s_axis_b_tdata := io.op2.im
  commul_im.io.s_axis_b_tvalid := io.ready
  io.res.im := commul_im.io.m_axis_result_tdata

  commul_re.io.aclk := clock
  commul_re.io.s_axis_a_tdata := io.op1.re
  commul_re.io.s_axis_a_tvalid := io.ready
  commul_re.io.s_axis_b_tdata := io.op2.re
  commul_re.io.s_axis_b_tvalid := io.ready
  io.res.re := commul_re.io.m_axis_result_tdata
  io.valid := commul_im.io.m_axis_result_tvalid

}

/*
单个浮点复数乘法单元
 */
class Ip_ComplexMul_blackbox_0 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val aclk: Clock = Input(Clock())
    val enA: Bool = Input(Bool())
    val A_re = Input(UInt(32.W))
    val A_im = Input(UInt(32.W))
    val enB: Bool = Input(Bool())
    val B_re = Input(UInt(32.W))
    val B_im = Input(UInt(32.W))
    val valid: Bool = Output(Bool())
    val res_re = Output(UInt(32.W))
    val res_im = Output(UInt(32.W))
  })
}

/*
单个浮点复数乘法单元，进一步封装黑盒因为只有模块可以生成Verilog代码
*/

class Ip_ComplexMul_blackbox_wrapper extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val op1                      = Input(new Complex(UInt(32.W)))
    val op2                      = Input(new Complex(UInt(32.W)))
    val ready: Bool              = Input(Bool())
    val valid: Bool              = Output(Bool())
    val res                      = Output(new Complex(UInt(32.W)))
  })
  val commul  = Module(new Ip_ComplexMul_blackbox_0)
  commul.io.aclk := clock
  commul.io.enA := io.ready
  commul.io.A_re := io.op1.re
  commul.io.A_im := io.op1.im
  commul.io.enB := io.ready
  commul.io.B_re := io.op2.re
  commul.io.B_im := io.op2.im
  io.valid := commul.io.valid
  io.res.re := commul.io.res_re
  io.res.im := commul.io.res_im
}

/*****************第一行MDC单元需要的URAM存储器***********/
class Ip_Dual_Port_URAM_a_re extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

/*有两个相互独立的端口*/
/*A端口负责写入数据，B端口负责读出数据*/
class Simple_Dual_Port_a_re_blackbox extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val enable           = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_a_re)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.enable
  commul.io.enb    :=  io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}

class Ip_Dual_Port_URAM_a_im extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_a_im_blackbox extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_URAM_a_im)
  /*写端口A下的端口列表*/
  commul.io.clk := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

class Ip_Dual_Port_URAM_b_re extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_b_re_blackbox extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_URAM_b_re)
  /*写端口A下的端口列表*/
  commul.io.clk := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

class Ip_Dual_Port_URAM_b_im extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_b_im_blackbox extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_URAM_b_im)
  /*写端口A下的端口列表*/
  commul.io.clk := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

/*****************第一行旋转因子单元BRAM存储器***********/
class Ip_Dual_Port_BRAM_tf_a_re extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_a_re_blackbox extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_a_re)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

class Ip_Dual_Port_BRAM_tf_a_im extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_a_im_blackbox extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_a_im)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

class Ip_Dual_Port_BRAM_tf_b_re extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_b_re_blackbox extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_b_re)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

class Ip_Dual_Port_BRAM_tf_b_im extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_b_im_blackbox extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_b_im)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}


/******************第二行MDC存储单元*****************/
/*数据A端口*/
class Ip_Dual_Port_URAM_a_re_1 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

/*有两个相互独立的端口*/
/*A端口负责写入数据，B端口负责读出数据*/
class Simple_Dual_Port_a_re_blackbox_1 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena           = Input(new Bool())
    val enb           = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_a_re_1)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}


class Ip_Dual_Port_URAM_a_im_1 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}


class Simple_Dual_Port_a_im_blackbox_1 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena           = Input(new Bool())
    val enb           = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_a_im_1)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}

class Ip_Dual_Port_URAM_b_re_1 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_b_re_blackbox_1 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena           = Input(new Bool())
    val enb           = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_b_re_1)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}

class Ip_Dual_Port_URAM_b_im_1 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_b_im_blackbox_1 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena              = Input(new Bool())
    val enb              = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_b_im_1)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}

/*****************第二行旋转因子单元BRAM存储器***********/
class Ip_Dual_Port_BRAM_tf_a_re_1 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_a_re_blackbox_1 extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_a_re_1)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

class Ip_Dual_Port_BRAM_tf_a_im_1 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_a_im_blackbox_1 extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_a_im_1)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

class Ip_Dual_Port_BRAM_tf_b_re_1 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_b_re_blackbox_1 extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_b_re_1)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

class Ip_Dual_Port_BRAM_tf_b_im_1 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_b_im_blackbox_1 extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_b_im_1)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}


/******************第三行MDC存储单元*****************/
/*数据A端口*/
class Ip_Dual_Port_URAM_a_re_2 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

/*有两个相互独立的端口*/
/*A端口负责写入数据，B端口负责读出数据*/
class Simple_Dual_Port_a_re_blackbox_2 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena           = Input(new Bool())
    val enb           = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_a_re_2)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}


class Ip_Dual_Port_URAM_a_im_2 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}


class Simple_Dual_Port_a_im_blackbox_2 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena           = Input(new Bool())
    val enb           = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_a_im_2)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}

class Ip_Dual_Port_URAM_b_re_2 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_b_re_blackbox_2 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena           = Input(new Bool())
    val enb           = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_b_re_2)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}

class Ip_Dual_Port_URAM_b_im_2 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_b_im_blackbox_2 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena              = Input(new Bool())
    val enb              = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_b_im_2)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}

/******************第三行旋转因子存储器*****************/

class Ip_Dual_Port_BRAM_tf_a_re_2 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_a_re_blackbox_2 extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_a_re_2)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

class Ip_Dual_Port_BRAM_tf_a_im_2 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_a_im_blackbox_2 extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_a_im_2)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

class Ip_Dual_Port_BRAM_tf_b_re_2 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_b_re_blackbox_2 extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_b_re_2)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}

class Ip_Dual_Port_BRAM_tf_b_im_2 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clka: Clock = Input(Clock())
    val clkb: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_tf_b_im_blackbox_2 extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val enable = Input(new Bool())
    val write_en = Input(Bool())
    val read_addr = Input(UInt(32.W))
    val write_addr = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val dataOut = Output(UInt(32.W))
  })

  val commul = Module(new Ip_Dual_Port_BRAM_tf_b_im_2)
  /*写端口A下的端口列表*/
  commul.io.clka := clock
  commul.io.clkb := clock
  commul.io.ena := io.enable
  commul.io.enb := io.enable
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea := io.write_en
  commul.io.addra := io.write_addr
  commul.io.dina := io.dataIn
  commul.io.addrb := io.read_addr
  io.dataOut := commul.io.doutb
}


/******************第四行MDC存储单元*****************/
class Ip_Dual_Port_URAM_a_re_3 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

/*有两个相互独立的端口*/
/*A端口负责写入数据，B端口负责读出数据*/
class Simple_Dual_Port_a_re_blackbox_3 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena           = Input(new Bool())
    val enb           = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_a_re_3)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}


class Ip_Dual_Port_URAM_a_im_3 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}


class Simple_Dual_Port_a_im_blackbox_3 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena           = Input(new Bool())
    val enb           = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_a_im_3)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}

class Ip_Dual_Port_URAM_b_re_3 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_b_re_blackbox_3 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena           = Input(new Bool())
    val enb           = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_b_re_3)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}

class Ip_Dual_Port_URAM_b_im_3 extends BlackBox with HasDataConfig{
  val io = IO(new Bundle {
    val clk: Clock = Input(Clock())
    /*写端口A下的端口列表*/
    val ena: Bool = Input(Bool())
    val wea: Bool = Input(Bool())
    val addra: UInt = Input(UInt(32.W))
    val dina  = Input(UInt(32.W))
    /*读端口B下的端口列表*/
    val enb: Bool = Input(Bool())
    val addrb: UInt = Input(UInt(32.W))
    val doutb = Output(UInt(32.W))

  })
}

class Simple_Dual_Port_b_im_blackbox_3 extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val ena              = Input(new Bool())
    val enb              = Input(new Bool())
    val write_en         = Input(Bool())
    val read_addr        = Input(UInt(32.W))
    val write_addr       = Input(UInt(32.W))
    val dataIn           = Input(UInt(32.W))
    val dataOut          = Output(UInt(32.W))
  })
  val commul        =  Module(new Ip_Dual_Port_URAM_b_im_3)
  /*写端口A下的端口列表*/
  commul.io.clk    :=  clock
  commul.io.ena    :=  io.ena
  commul.io.enb    :=  io.enb
  /*to do 修改写入信号*/
  /*读端口B下的端口列表*/
  commul.io.wea     :=  io.write_en
  commul.io.addra   :=  io.write_addr
  commul.io.dina    :=  io.dataIn
  commul.io.addrb   :=  io.read_addr
  io.dataOut        := commul.io.doutb
}








object Ip_ComplexMul_blackbox extends App {
  // 设置输出的Verilog文件路径和文件名
  val outputFileName = "/Users/anniezfy/IdeaProjects/FFT_Processor_Hybrid_Architecture/src/main/scala/BF_Compute_Units/BFI_WithBlackBox/Ip_ComplexMul_blackbox.v"

  // 创建ChiselStage实例
  val chiselStage = new chisel3.stage.ChiselStage

  // 使用ChiselGeneratorAnnotation将生成的Verilog代码写入指定的文件
  chiselStage.execute(
    Array("-X", "verilog", "--target-dir", "/Users/anniezfy/IdeaProjects/FFT_Processor_Hybrid_Architecture/src/main/scala/BF_Compute_Units/BFI_WithBlackBox", "--output-file", outputFileName),
    Seq(ChiselGeneratorAnnotation(() => new Ip_ComplexMul_blackbox_wrapper))
  )

  // 打印出生成文件的位置信息
  println(s"Verilog code is generated at: $outputFileName")
}
