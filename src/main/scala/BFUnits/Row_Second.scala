package BFUnits

import BFUnits.Dyn.{BF5_Fourth, BF5_first_withblackbox}
import DataConfig.HasDataConfig
import chisel3._
import chisel3.util._
import DataConfig.{Complex, HasDataConfig}
import Compute._
import Shuffle_Unit.shuffle
import chisel3.{Bits, Bool, Bundle, Input, Module, Output, UInt}
import firrtl.Utils.True

class Row_Second(n:Int) extends Module with HasDataConfig {
  val io = IO(new Bundle {
    val number = Input(UInt(32.W))
    val in_data_a = Input(new Complex(Bits(n.W)))
    val in_data_b = Input(new Complex(Bits(n.W)))
    val out_data_a = Output(new Complex(Bits(n.W)))
    val out_data_b = Output(new Complex(Bits(n.W)))
    val ready = Input(new Bool())
    val valid = Output(new Bool())
  })

  val BF1 = Module(new BF1_Dyn_blackbox(32))
  val shuffle_256 = Module(new shuffle(256, n))
  val BF2 = Module(new BF2_Dyn_blackbox(32))
  val shffle_128= Module(new shuffle(128, n))
  val BF3 = Module(new BF3_Dyn_blackbox(32))
  val shuffle_64 = Module(new shuffle(64, n))
  val BF4 = Module(new BF4_Dyn_blackbox(32))
  val shuffle_32 = Module(new shuffle(32, n))
  val BF5 = Module(new BF5_first_withblackbox(32))
  val shuffle_16 = Module(new shuffle(16, n))

  when(io.number >= 1024.U){
     BF1.io.in_data_a:= io.in_data_a
     BF1.io.in_data_b := io.in_data_b
     BF1.io.ready := io.ready
     BF1.io.row := 2.U
     shuffle_256.io.ready := BF1.io.valid
     shuffle_256.io.in_data_add := BF1.io.out_data_add
     shuffle_256.io.in_data_mul := BF1.io.out_data_mul
     BF2.io.in_data_a := shuffle_256.io.out_delay_data_add
     BF2.io.in_data_b := shuffle_256.io.out_delay_data_mul
     BF2.io.ready := shuffle_256.io.valid
     BF2.io.row := 2.U
      shffle_128.io.ready := BF2.io.valid
      shffle_128.io.in_data_add := BF2.io.out_data_add
      shffle_128.io.in_data_mul := BF2.io.out_data_mul
      BF3.io.in_data_a := shffle_128.io.out_delay_data_add
      BF3.io.in_data_b := shffle_128.io.out_delay_data_mul
      BF3.io.ready := shffle_128.io.valid
      BF3.io.row := 2.U
      shuffle_64.io.ready := BF3.io.valid
      shuffle_64.io.in_data_add := BF3.io.out_data_add
      shuffle_64.io.in_data_mul := BF3.io.out_data_mul
      BF4.io.in_data_a := shuffle_64.io.out_delay_data_add
      BF4.io.in_data_b := shuffle_64.io.out_delay_data_mul
      BF4.io.ready := shuffle_64.io.valid
      BF4.io.row := 2.U
      shuffle_32.io.ready := BF4.io.valid
      shuffle_32.io.in_data_add := BF4.io.out_data_add
      shuffle_32.io.in_data_mul := BF4.io.out_data_mul
      BF5.io.in_data_a := shuffle_32.io.out_delay_data_add
      BF5.io.in_data_b := shuffle_32.io.out_delay_data_mul
      BF5.io.ready := shuffle_32.io.valid
      BF5.io.number := io.number
      shuffle_16.io.ready := BF5.io.valid
      shuffle_16.io.in_data_add := BF5.io.out_data_add
      shuffle_16.io.in_data_mul := BF5.io.out_data_mul
      io.out_data_a := shuffle_16.io.out_delay_data_add
      io.out_data_b := shuffle_16.io.out_delay_data_mul
      io.valid := shuffle_16.io.valid
  }.elsewhen(io.number === 512.U){
    BF2.io.in_data_a := io.in_data_a
    BF2.io.in_data_b := io.in_data_b
    BF2.io.ready := io.ready
    BF2.io.row := 2.U
    shffle_128.io.ready := BF2.io.valid
    shffle_128.io.in_data_add := BF2.io.out_data_add
    shffle_128.io.in_data_mul := BF2.io.out_data_mul
    BF3.io.in_data_a := shffle_128.io.out_delay_data_add
    BF3.io.in_data_b := shffle_128.io.out_delay_data_mul
    BF3.io.ready := shffle_128.io.valid
    BF3.io.row := 2.U
    shuffle_64.io.ready := BF3.io.valid
    shuffle_64.io.in_data_add := BF3.io.out_data_add
    shuffle_64.io.in_data_mul := BF3.io.out_data_mul
    BF4.io.in_data_a := shuffle_64.io.out_delay_data_add
    BF4.io.in_data_b := shuffle_64.io.out_delay_data_mul
    BF4.io.ready := shuffle_64.io.valid
    BF4.io.row := 2.U
    shuffle_32.io.ready := BF4.io.valid
    shuffle_32.io.in_data_add := BF4.io.out_data_add
    shuffle_32.io.in_data_mul := BF4.io.out_data_mul
    BF5.io.in_data_a := shuffle_32.io.out_delay_data_add
    BF5.io.in_data_b := shuffle_32.io.out_delay_data_mul
    BF5.io.ready := shuffle_32.io.valid
    BF5.io.number := io.number
    shuffle_16.io.ready := BF5.io.valid
    shuffle_16.io.in_data_add := BF5.io.out_data_add
    shuffle_16.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_16.io.out_delay_data_add
    io.out_data_b := shuffle_16.io.out_delay_data_mul
    io.valid := shuffle_16.io.valid
  }.elsewhen(io.number=== 256.U){
    BF3.io.in_data_a := io.in_data_a
    BF3.io.in_data_b := io.in_data_b
    BF3.io.ready := io.ready
    BF3.io.row := 2.U
    shuffle_64.io.ready := BF3.io.valid
    shuffle_64.io.in_data_add := BF3.io.out_data_add
    shuffle_64.io.in_data_mul := BF3.io.out_data_mul
    BF4.io.in_data_a := shuffle_64.io.out_delay_data_add
    BF4.io.in_data_b := shuffle_64.io.out_delay_data_mul
    BF4.io.ready := shuffle_64.io.valid
    BF4.io.row := 2.U
    shuffle_32.io.ready := BF4.io.valid
    shuffle_32.io.in_data_add := BF4.io.out_data_add
    shuffle_32.io.in_data_mul := BF4.io.out_data_mul
    BF5.io.in_data_a := shuffle_32.io.out_delay_data_add
    BF5.io.in_data_b := shuffle_32.io.out_delay_data_mul
    BF5.io.ready := shuffle_32.io.valid
    BF5.io.number := io.number
    shuffle_16.io.ready := BF5.io.valid
    shuffle_16.io.in_data_add := BF5.io.out_data_add
    shuffle_16.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_16.io.out_delay_data_add
    io.out_data_b := shuffle_16.io.out_delay_data_mul
    io.valid := shuffle_16.io.valid
  }.elsewhen(io.number===128.U){
    BF4.io.in_data_a :=  io.in_data_a
    BF4.io.in_data_b := io.in_data_b
    BF4.io.ready := io.ready
    BF4.io.row:= 2.U
    shuffle_32.io.ready := BF4.io.valid
    shuffle_32.io.in_data_add := BF4.io.out_data_add
    shuffle_32.io.in_data_mul := BF4.io.out_data_mul
    BF5.io.in_data_a := shuffle_32.io.out_delay_data_add
    BF5.io.in_data_b := shuffle_32.io.out_delay_data_mul
    BF5.io.ready := shuffle_32.io.valid
    BF5.io.number := io.number
    shuffle_16.io.ready := BF5.io.valid
    shuffle_16.io.in_data_add := BF5.io.out_data_add
    shuffle_16.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_16.io.out_delay_data_add
    io.out_data_b := shuffle_16.io.out_delay_data_mul
    io.valid := shuffle_16.io.valid
  }.otherwise{
    BF5.io.in_data_a := io.in_data_b
    BF5.io.in_data_b := io.in_data_b
    BF5.io.ready := io.ready
    BF5.io.number := io.number
    shuffle_16.io.ready := BF5.io.valid
    shuffle_16.io.in_data_add := BF5.io.out_data_add
    shuffle_16.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_16.io.out_delay_data_add
    io.out_data_b := shuffle_16.io.out_delay_data_mul
    io.valid := shuffle_16.io.valid
  }

}
