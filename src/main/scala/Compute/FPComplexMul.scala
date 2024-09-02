package Compute
/* 15级流水浮点乘累加 */
/*复数乘法模块时间延迟为10个周期*/
import Chisel.{Bits, _}
import Compute.FloatPoint._
import DataConfig._
import chisel3.experimental._
import chisel3.{Bool, Bundle, Mux, getVerilogString}
class FPComplexMul(val n: Int) extends Module {
  val io = IO(new ComplexOperationIO(Bits(n.W)))

  /* 输入信号与中间信号寄存器 */
  val FPAdd2ResReg = RegInit(Bits(0, n))
  val FPAdd3ResReg = RegInit(Bits(0, n))
  val FPAdd4ResReg = RegInit(Bits(0, n))
  val FPAdd5ResReg = RegInit(Bits(0, n))
  val FPAdd6ResReg = RegInit(Bits(0, n))
  val FPMultResReg1 = RegInit(Bits(0, n))
  val FPMultResReg2 = RegInit(Bits(0, n))
  val FPMultResReg3 = RegInit(Bits(0, n))

  /* 计算使用的乘、加模块 */
  /*一共有5个加法模块以及3个乘法模块*/
  /*(a+bi)*(c+di)=(ac-bd)+(ad+bc)i*/
  val FPAdd2 = Module(new FPAdd(n))
  val FPAdd3 = Module(new FPAdd(n))
  val FPAdd4 = Module(new FPAdd(n))
  val FPAdd5 = Module(new FPAdd(n))
  val FPAdd6 = Module(new FPAdd(n))
  val FPMult1 = Module(new FPMult(n))
  val FPMult2 = Module(new FPMult(n))
  val FPMult3 = Module(new FPMult(n))

  /* 定义函数式调用浮点模块的函数，简化连接 */

  /* 定义函数式调用浮点模块的函数，简化连接 */
  def FPAddInputAssign(select: Int, a: Bits, b: Bits): Unit = {
    if (select == 2) {
      FPAdd2.io.a := a
      FPAdd2.io.b := b
    }
    else if (select == 3) {
      FPAdd3.io.a := a
      FPAdd3.io.b := b
    }
    else if (select == 4) {
      FPAdd4.io.a := a
      FPAdd4.io.b := b
    }
    else if (select == 5) {
      FPAdd5.io.a := a
      FPAdd5.io.b := b
    } else {
      FPAdd6.io.a := a
      FPAdd6.io.b := b
    }
  }

  def FPMultInputAssign(select: Int, a: Bits, b: Bits): Unit = {
    if (select == 1) {
      FPMult1.io.a := a
      FPMult1.io.b := b
    }
    else if (select == 2) {
      FPMult2.io.a := a
      FPMult2.io.b := b
    } else {
      FPMult3.io.a := a
      FPMult3.io.b := b
    }
  }
  /*乘法延迟四个周期*/
  val delay0 = Module(new Delay(n,4))
  val delay1 = Module(new Delay(n,4))
  //  val delay0 = Module(new Delay(n, 3))
  //  val delay1 = Module(new Delay(n, 7))
  delay0.io.in_data:=io.op2
  delay1.io.in_data:=io.op1

  FPAddInputAssign(2, io.op1.re, io.op1.im)
  val temp2 = Cat(~io.op2.re(n-1),io.op2.re(n-2,0))
  FPAddInputAssign(3, io.op2.im, temp2)
  FPAddInputAssign(4, io.op2.re, io.op2.im)
  FPAdd2ResReg := FPAdd2.io.res
  FPAdd3ResReg := FPAdd3.io.res
  FPAdd4ResReg := FPAdd4.io.res
  val delay_op2_re = delay0.io.out_data.re
  val delay_op1_re = delay1.io.out_data.re
  val delay_op1_im = delay1.io.out_data.im
  FPMultInputAssign(1,delay_op2_re,FPAdd2ResReg)
  FPMultInputAssign(2,delay_op1_re,FPAdd3ResReg)
  FPMultInputAssign(3,delay_op1_im,FPAdd4ResReg)
  FPMultResReg1:=FPMult1.io.res
  FPMultResReg2:=FPMult2.io.res
  FPMultResReg3:=FPMult3.io.res
  val temp3 = Cat(~FPMultResReg3(n-1),FPMultResReg3(n-2,0))
  FPAddInputAssign(5, FPMultResReg1, temp3)
  FPAddInputAssign(6, FPMultResReg1, FPMultResReg2)
  FPAdd5ResReg := FPAdd5.io.res
  FPAdd6ResReg := FPAdd6.io.res
  io.res.re:=FPAdd5ResReg
  io.res.im:=FPAdd6ResReg

  io.valid := Delayb(io.ready,10)

}
