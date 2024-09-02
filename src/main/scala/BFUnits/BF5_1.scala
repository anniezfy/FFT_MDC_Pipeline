package BFUnits.Dyn

import Chisel.Module
import Compute._
import DataConfig.{Complex, HasDataConfig}
import chisel3._


class BF5_first_withblackbox (n:Int) extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val number = Input(UInt(32.W))
    val in_data_a = Input(new Complex(Bits(n.W)))
    val in_data_b = Input(new Complex(Bits(n.W)))
    val ready = Input(Bool())
    val out_data_add = Output(new Complex(Bits(n.W)))
    val out_data_mul = Output(new  Complex(Bits(n.W)))
    val valid = Output(Bool())
  })

  // To do multiplication
  val Add = Module(new FPComplexAdd_blackbox)
  val Sub = Module(new FPComplexSub_blackbox)
  val Mul_a = Module(new Ip_ComplexMul_blackbox_wrapper)
  val Mul_b = Module(new Ip_ComplexMul_blackbox_wrapper)

  val tf_a_re = Module(new Simple_Dual_Port_tf_a_re_blackbox)
  val tf_a_im = Module(new Simple_Dual_Port_tf_a_im_blackbox)
  val tf_b_re = Module(new Simple_Dual_Port_tf_b_re_blackbox)
  val tf_b_im = Module(new Simple_Dual_Port_tf_b_im_blackbox)
  // Connect the adder and subtractor
  Add.io.op1 := io.in_data_a
  Add.io.op2 := io.in_data_b
  Add.io.ready := io.ready


  Sub.io.op1 := io.in_data_a
  Sub.io.op2 := io.in_data_b
  Sub.io.ready := io.ready

  // Connect the memory
  val counter = Module(new Counter_Self_Dyn)

  counter.io.en := Add.io.valid
  counter.io.cycle := io.number>>1

  tf_a_re.io.enable := Add.io.valid
  tf_a_re.io.write_addr := DontCare
  tf_a_re.io.dataIn  := DontCare
  tf_a_re.io.write_en := DontCare
  tf_a_re.io.read_addr := counter.io.out

  tf_a_im.io.enable := Add.io.valid
  tf_a_im.io.write_addr := DontCare
  tf_a_im.io.dataIn  := DontCare
  tf_a_im.io.write_en := DontCare
  tf_a_im.io.read_addr := counter.io.out

  Mul_a.io.ready := Delayb(Sub.io.valid,2)
  /*因为存储器BRAM读延迟有两个周期，因此需要延迟输入数据到乘法单元中*/
  Mul_a.io.op1 := Delay(Add.io.res,2)
  Mul_a.io.op2.re := tf_a_re.io.dataOut
  Mul_a.io.op2.im := tf_a_im.io.dataOut

  tf_b_re.io.enable := Sub.io.valid
  tf_b_re.io.write_addr := DontCare
  tf_b_re.io.dataIn  := DontCare
  tf_b_re.io.write_en := DontCare
  tf_b_re.io.read_addr := counter.io.out

  tf_b_im.io.enable := Sub.io.valid
  tf_b_im.io.write_addr := DontCare
  tf_b_im.io.dataIn  := DontCare
  tf_b_im.io.write_en := DontCare
  tf_b_im.io.read_addr := counter.io.out

  Mul_b.io.ready := Delayb(Sub.io.valid,2)
  /*因为存储器BRAM读延迟有两个周期，因此需要延迟输入数据到乘法单元中*/
  Mul_b.io.op1 := Delay(Sub.io.res,2)
  Mul_b.io.op2.re := tf_b_re.io.dataOut
  Mul_b.io.op2.im := tf_b_im.io.dataOut


  io.valid := Mul_a.io.valid
  io.out_data_add := Mul_a.io.res
  io.out_data_mul := Mul_b.io.res

}

class Counter_Self_Dyn extends Module {
  val io = IO(new Bundle{
    val en = Input(Bool())
    val cycle = Input(UInt(32.W))
    val out = Output(UInt(32.W))
  })
  val cntReg = RegInit(0.U(32.W))
  when(io.en) {
    when(cntReg === ( io.cycle.asUInt - 1.U))  {
      cntReg := 0.U
    } otherwise {
      cntReg := cntReg + 1.U
    }
  }
  io.out := cntReg
}
