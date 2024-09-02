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

class Row_One(n:Int) extends Module with HasDataConfig{
  val io = IO(new Bundle{
    val number = Input(UInt(32.W))
    val ready = Input(Bool())
    val input_add = Input(new Complex(Bits(n.W)))
    val input_sub = Input(new Complex(Bits(n.W)))
    val out_data_add = Output(new Complex(Bits(n.W)))
    val out_data_sub = Output(new Complex(Bits(n.W)))
    val valid = Output(Bool())
  })

  val BF1 = Module(new BF1_Dyn_blackbox(32))
  val shuffle_8 = Module(new shuffle(8, n))
  val BF2 = Module(new BF2_Dyn_blackbox(32))
  val shffle_4 = Module(new shuffle(4, n))
  val BF3 = Module(new BF3_Dyn_blackbox(32))
  val shuffle_2 = Module(new shuffle(2, n))
  val BF4 = Module(new BF4_Dyn_blackbox(32))
  val shuffle_1 = Module(new shuffle(1, n))
  val BF5 = Module(new BF5_first_withblackbox(32))

  BF1.io.ready := io.ready
  BF1.io.in_data_a := io.input_add
  BF1.io.in_data_b := io.input_sub
  BF1.io.row := 1.U

  shuffle_8.io.ready := BF1.io.valid
  shuffle_8.io.in_data_add := BF1.io.out_data_add
  shuffle_8.io.in_data_mul := BF1.io.out_data_mul

  BF2.io.in_data_a := shuffle_8.io.out_delay_data_add
  BF2.io.in_data_b := shuffle_8.io.out_delay_data_mul
  BF2.io.ready := shuffle_8.io.valid
  BF2.io.row := 1.U

  shffle_4.io.ready := BF2.io.valid
  shffle_4.io.in_data_add := BF2.io.out_data_add
  shffle_4.io.in_data_mul := BF2.io.out_data_mul

  BF3.io.in_data_a := shffle_4.io.out_delay_data_add
  BF3.io.in_data_b := shffle_4.io.out_delay_data_mul
  BF3.io.ready := shffle_4.io.valid
  BF3.io.row := 1.U

  shuffle_2.io.ready := BF3.io.valid
  shuffle_2.io.in_data_add := BF3.io.out_data_add
  shuffle_2.io.in_data_mul := BF3.io.out_data_mul

  BF4.io.in_data_a := shuffle_2.io.out_delay_data_add
  BF4.io.in_data_b := shuffle_2.io.out_delay_data_mul
  BF4.io.ready := shuffle_2.io.valid
  BF4.io.row := 1.U

  shuffle_1.io.ready := BF4.io.valid
  shuffle_1.io.in_data_add := BF4.io.out_data_add
  shuffle_1.io.in_data_mul := BF4.io.out_data_mul

  BF5.io.in_data_a := shuffle_1.io.out_delay_data_add
  BF5.io.in_data_b := shuffle_1.io.out_delay_data_mul
  BF5.io.ready := shuffle_1.io.valid
  BF5.io.number := io.number

  io.out_data_add := BF5.io.out_data_add
  io.out_data_sub := BF5.io.out_data_mul
  io.valid := BF5.io.valid


}
