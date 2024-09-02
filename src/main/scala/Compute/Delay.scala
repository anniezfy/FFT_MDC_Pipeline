package Compute

import Chisel.Bits
import chisel3.{Data, _}
import DataConfig.{Complex, _}
import chisel3.experimental.FixedPoint
import treadle.executable.DataType

class Delay(n:Int,cycle:Int)  extends Module with HasDataConfig  {
  val io = IO(new Bundle {
    val in_data  = Input(new Complex(Bits(n.W)))
    val out_data = Output(new Complex(Bits(n.W)))
  })
  if (cycle == 0) {
    io.out_data := io.in_data
  }
  else {
    val reg_delay_re: Vec[UInt] = RegInit(VecInit(Seq.fill(cycle)(0.U(n.W))))
    val reg_delay_im: Vec[UInt] = RegInit(VecInit(Seq.fill(cycle)(0.U(n.W))))
    reg_delay_re(0) := io.in_data.re
    reg_delay_im(0) := io.in_data.im
    for (i <- 1 until cycle) {
      reg_delay_re(i) := reg_delay_re(i - 1)
      reg_delay_im(i) := reg_delay_im(i - 1)
    }
    io.out_data.re := reg_delay_re(cycle.U - 1.U)
    io.out_data.im := reg_delay_im(cycle.U - 1.U)
  }
}
/*伴生对象，可以直接显式调用Delay模块，不用说明模块之间的连接方式*/
/*比如 io.output := Delay(io.input, io.cycle)*/
object Delay extends App with HasDataConfig {
  def apply(data: Complex[UInt], cycle: Int): Complex[UInt] = {
    val delay = Module(new Delay(32,cycle))
    delay.io.in_data := data
    /*函数返回的类型为Complex[UInt]*/
    delay.io.out_data
  }
}

class Delayu(n:Int,cycle:Int)  extends Module with HasDataConfig  {
  val io = IO(new Bundle {
    val in_data  = Input(Bits(n.W))
    val out_data = Output(Bits(n.W))
  })
  if (cycle == 0) {
    io.out_data := io.in_data
  }
  else {
    val reg_delay: Vec[UInt] = RegInit(VecInit(Seq.fill(cycle)(0.U(n.W))))
    reg_delay(0) := io.in_data
    for (i <- 1 until cycle) {
      reg_delay(i) := reg_delay(i - 1)
    }
    io.out_data := reg_delay(cycle.U - 1.U)
  }
}
object Delayu extends App{
  def apply(data: Bits, cycle: Int): Bits = {
    val delay = Module(new Delayu(32,cycle))
    delay.io.in_data := data
    delay.io.out_data
  }
}

class DelayUint(n:Int,cycle:Int)  extends Module with HasDataConfig  {
  val io = IO(new Bundle {
    val in_data  = Input(UInt(n.W))
    val out_data = Output(UInt(n.W))
  })
  if (cycle == 0) {
    io.out_data := io.in_data
  }
  else {
    val reg_delay: Vec[UInt] = RegInit(VecInit(Seq.fill(cycle)(0.U(n.W))))
    reg_delay(0) := io.in_data
    for (i <- 1 until cycle) {
      reg_delay(i) := reg_delay(i - 1)
    }
    io.out_data := reg_delay(cycle.U - 1.U)
  }
}
object DelayUint extends App{
  def apply(data: UInt, cycle: Int): UInt = {
    val delay = Module(new Delayu(32,cycle))
    delay.io.in_data := data
    delay.io.out_data
  }
}


class Delayb(val cycle: Int)  extends Module with HasDataConfig  {
  val io = IO(new Bundle {
    val in_data = Input(new Bool)
    val out_data = Output(new Bool)
  })
  if(cycle == 0){
    io.out_data := io.in_data
  }
  else {
    val reg_delay: Vec[Bool] = RegInit(VecInit(Seq.fill(cycle)(false.B)))
    reg_delay(0) := io.in_data
    for (i <- 1 until cycle) {
      reg_delay(i) := reg_delay(i - 1)
    }
    io.out_data := reg_delay(cycle.U - 1.U)
  }
}
object Delayb extends App{
  def apply(data: Bool, cycle: Int): Bool = {
    val delay = Module(new Delayb(cycle))
    delay.io.in_data := data
    delay.io.out_data
  }

}

