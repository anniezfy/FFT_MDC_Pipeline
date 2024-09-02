package Compute
/* 15级流水浮点乘累加 */
import Chisel.{Bits, _}
import Compute.FloatPoint._
import DataConfig._
import chisel3.experimental._
import chisel3.{Bool, Bundle, Mux, getVerilogString}
class FPComplexSub(val n: Int) extends Module {
  val io = IO(new ComplexOperationIO(Bits(n.W)))

  /* 输入信号与中间信号寄存器 */
  val FPAdd0ResReg = RegInit(Bits(0, n))
  val FPAdd1ResReg = RegInit(Bits(0, n))
  /* 计算使用的乘、加模块 */
  val FPAdd0 = Module(new FPAdd(n))
  val FPAdd1 = Module(new FPAdd(n))
  /*最高位取反，其他位不变*/
  val temp0 = Cat(~io.op2.re(n-1),io.op2.re(n-2,0))
  val temp1 = Cat(~io.op2.im(n-1),io.op2.im(n-2,0))
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
  FPAddInputAssign(0,io.op1.re,temp0)
  FPAddInputAssign(1,io.op1.im,temp1)
  FPAdd0ResReg:=FPAdd0.io.res
  FPAdd1ResReg:=FPAdd1.io.res

  io.res.re := FPAdd0ResReg
  io.res.im := FPAdd1ResReg

  io.valid  := Delayb(io.ready,4)
}
