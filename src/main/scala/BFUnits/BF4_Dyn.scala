package BFUnits

import chisel3._
import Chisel.{Bits, Module}
import Compute.FloatPoint.FloatUtils.floatToBigInt
import Compute._
import DataConfig._
import chisel3.stage.ChiselGeneratorAnnotation

class BF4_Dyn_blackbox(n:Int) extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val in_data_a = Input(new Complex(Bits(n.W)))
    val in_data_b = Input(new Complex(Bits(n.W)))
    val ready = Input(Bool())
    val row = Input(UInt(4.W))
    val out_data_add = Output(new Complex(Bits(n.W)))
    val out_data_mul = Output(new Complex(Bits(n.W)))
    val valid = Output(Bool())
  });

  /** **************************************************************初始化输出端口列表***************************************** */
  io.out_data_mul.re := RegInit(0.U(n.W))
  io.out_data_mul.im := RegInit(0.U(n.W))
  io.out_data_add.re := RegInit(0.U(n.W))
  io.out_data_add.im := RegInit(0.U(n.W))
  io.valid := false.B

  /** *************************************添加寄存器以此来减少关键路径上的延迟*************************************************** */
  //to do

  /** *************************************调用复数乘法、复数加法以及复数减法黑盒模块*************************************************** */
  val Mul = Module(new Ip_ComplexMul_blackbox_wrapper)
  val Add = Module(new FPComplexAdd_blackbox)
  val Sub = Module(new FPComplexSub_blackbox)

  /** **************************************************连接输入信号与黑盒加法、减法模块***************************************** */
  Add.io.op1 := io.in_data_a
  Add.io.op2 := io.in_data_b
  Add.io.ready := io.ready

  Sub.io.op1 := io.in_data_a
  Sub.io.op2 := io.in_data_b
  Sub.io.ready := io.ready

  /** **************************************************添加寄存器减少关键路径的延迟***************************************** */
  //to do

  /** **************************************************乘法单元需要的旋转因子********************************************************* */

  val TF_re_ROM = VecInit(Seq(
    floatToBigInt(1).asUInt,
    floatToBigInt(0).asUInt))

  val TF_im_ROM = VecInit(Seq(
    floatToBigInt(0f).asUInt,
    floatToBigInt(-1).asUInt
  ))

  val twiddle_Address_BF_4_3 = Module(new Twiddle_Address(n))
  twiddle_Address_BF_4_3.io.row :=io.row  //第四行
  twiddle_Address_BF_4_3.io.ready := Sub.io.valid
  twiddle_Address_BF_4_3.io.counter := 2.U // 存储器中深度为个2

  /*调用计数器*/
  val TF_im_reg = TF_im_ROM(twiddle_Address_BF_4_3.io.address)
  val TF_re_reg = TF_re_ROM(twiddle_Address_BF_4_3.io.address)

  /** **************************************************************添加乘法模块******************************************************************** */

  Mul.io.ready := Sub.io.valid
  Mul.io.op1 := Sub.io.res
  Mul.io.op2.re := TF_re_reg
  Mul.io.op2.im := TF_im_reg
  io.out_data_mul := Mul.io.res
  io.valid := Mul.io.valid

  /** *****************************************************添加加法延迟模块************************************************************************* */
  //调用apply方法，无序显示地创建和连接模块
  io.out_data_add := Delay(Add.io.res, 32)


}
