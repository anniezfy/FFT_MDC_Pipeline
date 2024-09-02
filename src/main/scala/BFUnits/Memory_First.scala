package BFUnits
import chisel3._
import chisel3.util._
import DataConfig.{Complex, HasDataConfig}
import Compute._
import chisel3.{Bits, Bool, Bundle, Input, Module, Output, UInt}
import firrtl.Utils.True



class Counter_Self_Addre(width:Int) extends Module {
  val io = IO(new Bundle{
    val en: Bool = Input(Bool())
    val cycle = Input(UInt(32.W))
    val out: UInt = Output(UInt(width.W))
  })
  val cntReg: UInt = RegInit(0.U(width.W))
  when(io.en) {
    when(cntReg === (io.cycle - 1.U))  {
      cntReg := 0.U
    } otherwise {
      cntReg := cntReg + 1.U
    }
  }
  io.out := cntReg
}


class Memory_First (n:Int)extends Module with HasDataConfig {
  val io = IO(new Bundle {
    val ready = Input(Bool())
    val number = Input(UInt(32.W))
    val out_data_add = Output(new Complex(Bits(n.W)))
    val out_data_sub = Output(new Complex(Bits(n.W)))
    val valid = Output(Bool())
  })

  val first_row_a_re = Module(new Simple_Dual_Port_a_re_blackbox_1)
  val first_row_a_im = Module(new Simple_Dual_Port_a_im_blackbox_1)
  val first_row_b_re = Module(new Simple_Dual_Port_b_re_blackbox_1)
  val first_row_b_im = Module(new Simple_Dual_Port_b_im_blackbox_1)

  /*地址数量为输入点数的一半*/
  val width = 18
  val counter = Module(new Counter_Self_Addre(width))

  counter.io.en := io.ready
  counter.io.cycle := io.number >> 1

  first_row_a_re.io.ena := true.B
  first_row_a_re.io.enb := true.B
  first_row_a_re.io.write_en := false.B
  first_row_a_re.io.write_addr := DontCare
  first_row_a_re.io.read_addr := counter.io.out
  first_row_a_re.io.dataIn := DontCare
  io.out_data_add.re := first_row_a_re.io.dataOut

  first_row_a_im.io.ena := true.B
  first_row_a_im.io.enb := true.B
  first_row_a_im.io.write_en := false.B
  first_row_a_im.io.write_addr := DontCare
  first_row_a_im.io.read_addr := counter.io.out
  first_row_a_im.io.dataIn := DontCare
  io.out_data_add.im := first_row_a_im.io.dataOut


  first_row_b_re.io.ena := true.B
  first_row_b_re.io.enb := true.B
  first_row_b_re.io.write_en := false.B
  first_row_b_re.io.write_addr := DontCare
  first_row_b_re.io.read_addr := counter.io.out
  first_row_b_re.io.dataIn := DontCare
  io.out_data_sub.re := first_row_b_re.io.dataOut


  first_row_b_im.io.ena := true.B
  first_row_b_im.io.write_en := false.B
  first_row_b_im.io.enb := true.B
  first_row_b_im.io.write_addr := DontCare
  first_row_b_im.io.read_addr := counter.io.out
  first_row_b_im.io.dataIn := DontCare
  io.out_data_sub.im := first_row_b_im.io.dataOut

  io.valid := Delayb(io.ready,2)

}