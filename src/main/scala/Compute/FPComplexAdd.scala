package Compute
/* 15级流水浮点乘累加 */
import Chisel.{Bits, _}
import Compute.FloatPoint._
import DataConfig._
import chisel3.experimental._
import chisel3.{Bool, Bundle, Mux, getVerilogString}
class FPComplexAdd(val n: Int) extends Module {
  val io = IO(new ComplexOperationIO(Bits(n.W)))

  /* 输入信号与中间信号寄存器 */
  /*Bits类型用于定义一个固定位宽的变量，UInt和SInt分别是Bits的子类*/
  val FPAdd0ResReg = RegInit(Bits(0, n))
  val FPAdd1ResReg = RegInit(Bits(0, n))
  /* 计算使用复数加法模块，一个加法模块表示实部另一个加法模块表示虚部 */
  val FPAdd0 = Module(new FPAdd(n))
  val FPAdd1 = Module(new FPAdd(n))

  /* 定义函数式调用浮点模块的函数，简化连接 */
  def FPAddInputAssign(select: Int, a: Bits, b: Bits): Unit = {
    if (select == 0) {
      FPAdd0.io.a := a
      FPAdd0.io.b := b
    }
    else if (select == 1) {
      FPAdd1.io.a := a
      FPAdd1.io.b := b
    }

  }
  FPAddInputAssign(0,io.op1.re,io.op2.re)
  FPAddInputAssign(1,io.op1.im,io.op2.im)
  FPAdd0ResReg    :=  FPAdd0.io.res
  FPAdd1ResReg    :=  FPAdd1.io.res

  io.res.re       :=  FPAdd0ResReg
  io.res.im       :=  FPAdd1ResReg
  /*功能部件的有效信号延迟4个周期输出*/
  io.valid        :=  Delayb(io.ready,4)
}
