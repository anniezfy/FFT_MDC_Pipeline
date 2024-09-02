package BFUnits

import BFUnits.Dyn.{BF5_Fourth, BF5_first_withblackbox}
import DataConfig.HasDataConfig
import chisel3.{Bits, Bool, Bundle, Input, Module, Output, UInt, _}
import chisel3.util._
import DataConfig.{Complex, HasDataConfig}
import Compute._
import Shuffle_Unit.shuffle
import firrtl.Utils.True

class Row_Third(n:Int) extends Module with HasDataConfig {
  val io = IO(new Bundle {
    val number = Input(UInt(32.W))
    val in_data_a = Input(new Complex(Bits(n.W)))
    val in_data_b = Input(new Complex(Bits(n.W)))
    val out_data_a = Output(new Complex(Bits(n.W)))
    val out_data_b = Output(new Complex(Bits(n.W)))
    val ready = Input(new Bool())
    val valid = Output(new Bool())
  })
  /*初始化*/
  val BF1 = Module(new BF1_Dyn_blackbox(32))
  val shuffle_8192 = Module(new shuffle(256, n))
  BF1.io.in_data_a := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF1.io.in_data_b := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF1.io.ready := false.B
  BF1.io.row := 0.U

  shuffle_8192.io.ready := false.B
  shuffle_8192.io.in_data_add := 0.U.asTypeOf(new Complex(Bits(n.W)))
  shuffle_8192.io.in_data_mul := 0.U.asTypeOf(new Complex(Bits(n.W)))
  /*初始化*/
  val BF2 = Module(new BF2_Dyn_blackbox(32))
  val shffle_4096= Module(new shuffle(128, n))
  BF2.io.in_data_a := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF2.io.in_data_b := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF2.io.ready := false.B
  BF2.io.row := 0.U

  shffle_4096.io.ready := false.B
  shffle_4096.io.in_data_add := 0.U.asTypeOf(new Complex(Bits(n.W)))
  shffle_4096.io.in_data_mul := 0.U.asTypeOf(new Complex(Bits(n.W)))
  /*初始化*/
  val BF3 = Module(new BF3_Dyn_blackbox(32))
  val shuffle_2048 = Module(new shuffle(64, n))
  BF3.io.in_data_a := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF3.io.in_data_b := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF3.io.ready := false.B
  BF3.io.row := 0.U

  shuffle_2048.io.ready := false.B
  shuffle_2048.io.in_data_add := 0.U.asTypeOf(new Complex(Bits(n.W)))
  shuffle_2048.io.in_data_mul := 0.U.asTypeOf(new Complex(Bits(n.W)))
  val BF4 = Module(new BF4_Dyn_blackbox(32))
  val shuffle_1024 = Module(new shuffle(32, n))
  BF4.io.in_data_a := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF4.io.in_data_b := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF4.io.ready := false.B
  BF4.io.row := 0.U
   val temp = RegInit(0.U(32.W))
  shuffle_1024.io.ready := false.B
  shuffle_1024.io.in_data_add := 0.U.asTypeOf(new Complex(Bits(n.W)))
  shuffle_1024.io.in_data_mul := 0.U.asTypeOf(new Complex(Bits(n.W)))

  val BF5 = Module(new BF5_first_withblackbox(32))
  val shuffle_512 = Module(new shuffle(16, n))
  BF5.io.in_data_a := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF5.io.in_data_b := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF5.io.ready := false.B


  shuffle_512.io.ready := false.B
  shuffle_512.io.in_data_add := 0.U.asTypeOf(new Complex(Bits(n.W)))
  shuffle_512.io.in_data_mul := 0.U.asTypeOf(new Complex(Bits(n.W)))

  when(io.number >= 32768.U){
    BF1.io.in_data_a:= io.in_data_a
    BF1.io.in_data_b := io.in_data_b
    BF1.io.ready := io.ready
    BF1.io.row := 3.U
    shuffle_8192.io.ready := BF1.io.valid
    shuffle_8192.io.in_data_add := BF1.io.out_data_add
    shuffle_8192.io.in_data_mul := BF1.io.out_data_mul
    BF2.io.in_data_a := shuffle_8192.io.out_delay_data_add
    BF2.io.in_data_b := shuffle_8192.io.out_delay_data_mul
    BF2.io.ready := shuffle_8192.io.valid
    BF2.io.row := 3.U
    shffle_4096.io.ready := BF2.io.valid
    shffle_4096.io.in_data_add := BF2.io.out_data_add
    shffle_4096.io.in_data_mul := BF2.io.out_data_mul
    BF3.io.in_data_a := shffle_4096.io.out_delay_data_add
    BF3.io.in_data_b := shffle_4096.io.out_delay_data_mul
    BF3.io.ready := shffle_4096.io.valid
    BF3.io.row := 3.U
    shuffle_2048.io.ready := BF3.io.valid
    shuffle_2048.io.in_data_add := BF3.io.out_data_add
    shuffle_2048.io.in_data_mul := BF3.io.out_data_mul
    BF4.io.in_data_a := shuffle_2048.io.out_delay_data_add
    BF4.io.in_data_b := shuffle_2048.io.out_delay_data_mul
    BF4.io.ready := shuffle_2048.io.valid
    BF4.io.row := 3.U
    shuffle_1024.io.ready := BF4.io.valid
    shuffle_1024.io.in_data_add := BF4.io.out_data_add
    shuffle_1024.io.in_data_mul := BF4.io.out_data_mul
    BF5.io.in_data_a := shuffle_1024.io.out_delay_data_add
    BF5.io.in_data_b := shuffle_1024.io.out_delay_data_mul
    BF5.io.ready := shuffle_1024.io.valid
    BF5.io.number := io.number
    shuffle_512.io.ready := BF5.io.valid
    shuffle_512.io.in_data_add := BF5.io.out_data_add
    shuffle_512.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_512.io.out_delay_data_add
    io.out_data_b := shuffle_512.io.out_delay_data_mul
    io.valid := shuffle_512.io.valid
  }.elsewhen(io.number === 16384.U){
    BF2.io.in_data_a := io.in_data_a
    BF2.io.in_data_b := io.in_data_b
    BF2.io.ready := io.ready
    BF2.io.row := 3.U
    shffle_4096.io.ready := BF2.io.valid
    shffle_4096.io.in_data_add := BF2.io.out_data_add
    shffle_4096.io.in_data_mul := BF2.io.out_data_mul
    BF3.io.in_data_a := shffle_4096.io.out_delay_data_add
    BF3.io.in_data_b := shffle_4096.io.out_delay_data_mul
    BF3.io.ready := shffle_4096.io.valid
    BF3.io.row := 3.U
    shuffle_2048.io.ready := BF3.io.valid
    shuffle_2048.io.in_data_add := BF3.io.out_data_add
    shuffle_2048.io.in_data_mul := BF3.io.out_data_mul
    BF4.io.in_data_a := shuffle_2048.io.out_delay_data_add
    BF4.io.in_data_b := shuffle_2048.io.out_delay_data_mul
    BF4.io.ready := shuffle_2048.io.valid
    BF4.io.row := 3.U
    shuffle_1024.io.ready := BF4.io.valid
    shuffle_1024.io.in_data_add := BF4.io.out_data_add
    shuffle_1024.io.in_data_mul := BF4.io.out_data_mul
    BF5.io.in_data_a := shuffle_1024.io.out_delay_data_add
    BF5.io.in_data_b := shuffle_1024.io.out_delay_data_mul
    BF5.io.ready := shuffle_1024.io.valid
    BF5.io.number := io.number
    shuffle_512.io.ready := BF5.io.valid
    shuffle_512.io.in_data_add := BF5.io.out_data_add
    shuffle_512.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_512.io.out_delay_data_add
    io.out_data_b := shuffle_512.io.out_delay_data_mul
    io.valid := shuffle_512.io.valid
  }.elsewhen(io.number=== 8192.U){
    BF3.io.in_data_a := io.in_data_a
    BF3.io.in_data_b := io.in_data_b
    BF3.io.ready := io.ready
    BF3.io.row := 3.U
    shuffle_2048.io.ready := BF3.io.valid
    shuffle_2048.io.in_data_add := BF3.io.out_data_add
    shuffle_2048.io.in_data_mul := BF3.io.out_data_mul
    BF4.io.in_data_a := shuffle_2048.io.out_delay_data_add
    BF4.io.in_data_b := shuffle_2048.io.out_delay_data_mul
    BF4.io.ready := shuffle_2048.io.valid
    BF4.io.row := 3.U
    shuffle_1024.io.ready := BF4.io.valid
    shuffle_1024.io.in_data_add := BF4.io.out_data_add
    shuffle_1024.io.in_data_mul := BF4.io.out_data_mul
    BF5.io.in_data_a := shuffle_1024.io.out_delay_data_add
    BF5.io.in_data_b := shuffle_1024.io.out_delay_data_mul
    BF5.io.ready := shuffle_1024.io.valid
    BF5.io.number := io.number
    shuffle_512.io.ready := BF5.io.valid
    shuffle_512.io.in_data_add := BF5.io.out_data_add
    shuffle_512.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_512.io.out_delay_data_add
    io.out_data_b := shuffle_512.io.out_delay_data_mul
    io.valid := shuffle_512.io.valid
  }.elsewhen(io.number===4096.U){
    BF4.io.in_data_a :=  io.in_data_a
    BF4.io.in_data_b := io.in_data_b
    BF4.io.ready := io.ready
    BF4.io.row := 3.U
    shuffle_1024.io.ready := BF4.io.valid
    shuffle_1024.io.in_data_add := BF4.io.out_data_add
    shuffle_1024.io.in_data_mul := BF4.io.out_data_mul
    BF5.io.in_data_a := shuffle_1024.io.out_delay_data_add
    BF5.io.in_data_b := shuffle_1024.io.out_delay_data_mul
    BF5.io.ready := shuffle_1024.io.valid
    BF5.io.number := io.number
    shuffle_512.io.ready := BF5.io.valid
    shuffle_512.io.in_data_add := BF5.io.out_data_add
    shuffle_512.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_512.io.out_delay_data_add
    io.out_data_b := shuffle_512.io.out_delay_data_mul
    io.valid := shuffle_512.io.valid
  }.otherwise{
    BF5.io.in_data_a := io.in_data_b
    BF5.io.in_data_b := io.in_data_b
    BF5.io.ready := io.ready
    BF5.io.number := io.number
    shuffle_512.io.ready := BF5.io.valid
    shuffle_512.io.in_data_add := BF5.io.out_data_add
    shuffle_512.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_512.io.out_delay_data_add
    io.out_data_b := shuffle_512.io.out_delay_data_mul
    io.valid := shuffle_512.io.valid
  }

}
