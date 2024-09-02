package BFUnits

import BFUnits.Dyn.{BF5_Fourth, BF5_first_withblackbox}
import DataConfig.HasDataConfig
import chisel3._
import chisel3.util._
import DataConfig.{Complex, HasDataConfig}
import Compute._
import Shuffle_Unit.shuffle
import chisel3.stage.ChiselGeneratorAnnotation
import chisel3.{Bits, Bool, Bundle, Input, Module, Output, UInt}
import firrtl.Utils.True

class Row_Fourth(n:Int) extends Module with HasDataConfig {
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
  val shuffle_262144 = Module(new shuffle(262144, n))

  BF1.io.in_data_a := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF1.io.in_data_b := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF1.io.ready := false.B
  BF1.io.row := 0.U

  shuffle_262144.io.ready := false.B
  shuffle_262144.io.in_data_add := 0.U.asTypeOf(new Complex(Bits(n.W)))
  shuffle_262144.io.in_data_mul := 0.U.asTypeOf(new Complex(Bits(n.W)))


  val BF2 = Module(new BF2_Dyn_blackbox(32))
  val shffle_131072= Module(new shuffle(131072, n))


  BF2.io.in_data_a := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF2.io.in_data_b := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF2.io.ready := false.B
  BF2.io.row := 0.U

  shffle_131072.io.ready := false.B
  shffle_131072.io.in_data_add := 0.U.asTypeOf(new Complex(Bits(n.W)))
  shffle_131072.io.in_data_mul := 0.U.asTypeOf(new Complex(Bits(n.W)))


  val BF3 = Module(new BF3_Dyn_blackbox(32))
  val shuffle_65536 = Module(new shuffle(65536, n))

  BF3.io.in_data_a := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF3.io.in_data_b := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF3.io.ready := false.B
  BF3.io.row := 0.U

  shuffle_65536.io.ready := false.B
  shuffle_65536.io.in_data_add := 0.U.asTypeOf(new Complex(Bits(n.W)))
  shuffle_65536.io.in_data_mul := 0.U.asTypeOf(new Complex(Bits(n.W)))

  val BF4 = Module(new BF4_Dyn_blackbox(32))
  val shuffle_32768 = Module(new shuffle(32768, n))

  BF4.io.in_data_a := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF4.io.in_data_b := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF4.io.ready := false.B
  BF4.io.row := 0.U

  shuffle_32768.io.ready := false.B
  shuffle_32768.io.in_data_add := 0.U.asTypeOf(new Complex(Bits(n.W)))
  shuffle_32768.io.in_data_mul := 0.U.asTypeOf(new Complex(Bits(n.W)))

  val BF5 = Module(new BF5_first_withblackbox(32))
  val shuffle_16384 = Module(new shuffle(16384, n))

  BF5.io.in_data_a := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF5.io.in_data_b := 0.U.asTypeOf(new Complex(Bits(n.W)))
  BF5.io.ready := false.B


  shuffle_16384.io.ready := false.B
  shuffle_16384.io.in_data_add := 0.U.asTypeOf(new Complex(Bits(n.W)))
  shuffle_16384.io.in_data_mul := 0.U.asTypeOf(new Complex(Bits(n.W)))

  when(io.number === 1048576.U){
    BF1.io.in_data_a:= io.in_data_a
    BF1.io.in_data_b := io.in_data_b
    BF5.io.ready := io.ready
    shuffle_262144.io.ready := BF1.io.valid
    shuffle_262144.io.in_data_add := BF1.io.out_data_add
    shuffle_262144.io.in_data_mul := BF1.io.out_data_mul
    BF2.io.in_data_a := shuffle_262144.io.out_delay_data_add
    BF2.io.in_data_b := shuffle_262144.io.out_delay_data_mul
    BF2.io.ready := shuffle_262144.io.valid
    shffle_131072.io.ready := BF2.io.valid
    shffle_131072.io.in_data_add := BF2.io.out_data_add
    shffle_131072.io.in_data_mul := BF2.io.out_data_mul
    BF3.io.in_data_a := shffle_131072.io.out_delay_data_add
    BF3.io.in_data_b := shffle_131072.io.out_delay_data_mul
    BF3.io.ready := shffle_131072.io.valid
    shuffle_65536.io.ready := BF3.io.valid
    shuffle_65536.io.in_data_add := BF3.io.out_data_add
    shuffle_65536.io.in_data_mul := BF3.io.out_data_mul
    BF4.io.in_data_a := shuffle_65536.io.out_delay_data_add
    BF4.io.in_data_b := shuffle_65536.io.out_delay_data_mul
    BF4.io.ready := shuffle_65536.io.valid
    shuffle_32768.io.ready := BF4.io.valid
    shuffle_32768.io.in_data_add := BF4.io.out_data_add
    shuffle_32768.io.in_data_mul := BF4.io.out_data_mul
    BF5.io.in_data_a := shuffle_32768.io.out_delay_data_add
    BF5.io.in_data_b := shuffle_32768.io.out_delay_data_mul
    BF5.io.ready := shuffle_32768.io.valid
    BF5.io.number := io.number
    shuffle_16384.io.ready := BF5.io.valid
    shuffle_16384.io.in_data_add := BF5.io.out_data_add
    shuffle_16384.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_16384.io.out_delay_data_add
    io.out_data_b := shuffle_16384.io.out_delay_data_mul
    io.valid := shuffle_16384.io.valid
  }.elsewhen(io.number === 524288.U){
    BF2.io.in_data_a := io.in_data_a
    BF2.io.in_data_b := io.in_data_b
    BF2.io.ready := io.ready
    shffle_131072.io.ready := BF2.io.valid
    shffle_131072.io.in_data_add := BF2.io.out_data_add
    shffle_131072.io.in_data_mul := BF2.io.out_data_mul
    BF3.io.in_data_a := shffle_131072.io.out_delay_data_add
    BF3.io.in_data_b := shffle_131072.io.out_delay_data_mul
    BF3.io.ready := shffle_131072.io.valid
    shuffle_65536.io.ready := BF3.io.valid
    shuffle_65536.io.in_data_add := BF3.io.out_data_add
    shuffle_65536.io.in_data_mul := BF3.io.out_data_mul
    BF4.io.in_data_a := shuffle_65536.io.out_delay_data_add
    BF4.io.in_data_b := shuffle_65536.io.out_delay_data_mul
    BF4.io.ready := shuffle_65536.io.valid
    shuffle_32768.io.ready := BF4.io.valid
    shuffle_32768.io.in_data_add := BF4.io.out_data_add
    shuffle_32768.io.in_data_mul := BF4.io.out_data_mul
    BF5.io.in_data_a := shuffle_32768.io.out_delay_data_add
    BF5.io.in_data_b := shuffle_32768.io.out_delay_data_mul
    BF5.io.ready := shuffle_32768.io.valid
    BF5.io.number := io.number
    shuffle_16384.io.ready := BF5.io.valid
    shuffle_16384.io.in_data_add := BF5.io.out_data_add
    shuffle_16384.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_16384.io.out_delay_data_add
    io.out_data_b := shuffle_16384.io.out_delay_data_mul
    io.valid := shuffle_16384.io.valid
  }.elsewhen(io.number=== 262144.U){
    BF3.io.in_data_a := io.in_data_a
    BF3.io.in_data_b := io.in_data_b
    BF3.io.ready := io.ready
    shuffle_65536.io.ready := BF3.io.valid
    shuffle_65536.io.in_data_add := BF3.io.out_data_add
    shuffle_65536.io.in_data_mul := BF3.io.out_data_mul
    BF4.io.in_data_a := shuffle_65536.io.out_delay_data_add
    BF4.io.in_data_b := shuffle_65536.io.out_delay_data_mul
    BF4.io.ready := shuffle_65536.io.valid
    shuffle_32768.io.ready := BF4.io.valid
    shuffle_32768.io.in_data_add := BF4.io.out_data_add
    shuffle_32768.io.in_data_mul := BF4.io.out_data_mul
    BF5.io.in_data_a := shuffle_32768.io.out_delay_data_add
    BF5.io.in_data_b := shuffle_32768.io.out_delay_data_mul
    BF5.io.ready := shuffle_32768.io.valid
    BF5.io.number := io.number
    shuffle_16384.io.ready := BF5.io.valid
    shuffle_16384.io.in_data_add := BF5.io.out_data_add
    shuffle_16384.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_16384.io.out_delay_data_add
    io.out_data_b := shuffle_16384.io.out_delay_data_mul
    io.valid := shuffle_16384.io.valid
  }.elsewhen(io.number===131072.U){
    BF4.io.in_data_a :=  io.in_data_a
    BF4.io.in_data_b := io.in_data_b
    BF4.io.ready := io.ready
    shuffle_32768.io.ready := BF4.io.valid
    shuffle_32768.io.in_data_add := BF4.io.out_data_add
    shuffle_32768.io.in_data_mul := BF4.io.out_data_mul
    BF5.io.in_data_a := shuffle_32768.io.out_delay_data_add
    BF5.io.in_data_b := shuffle_32768.io.out_delay_data_mul
    BF5.io.ready := shuffle_32768.io.valid
    BF5.io.number := io.number
    shuffle_16384.io.ready := BF5.io.valid
    shuffle_16384.io.in_data_add := BF5.io.out_data_add
    shuffle_16384.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_16384.io.out_delay_data_add
    io.out_data_b := shuffle_16384.io.out_delay_data_mul
    io.valid := shuffle_16384.io.valid
  }.otherwise{
    BF5.io.in_data_a := io.in_data_b
    BF5.io.in_data_b := io.in_data_b
    BF5.io.ready := io.ready
    BF5.io.number := io.number
    shuffle_16384.io.ready := BF5.io.valid
    shuffle_16384.io.in_data_add := BF5.io.out_data_add
    shuffle_16384.io.in_data_mul := BF5.io.out_data_mul
    io.out_data_a := shuffle_16384.io.out_delay_data_add
    io.out_data_b := shuffle_16384.io.out_delay_data_mul
    io.valid := shuffle_16384.io.valid
  }

}

object Link_Fist_Second_row_2 extends App {
  val outputFileName = "/Users/anniezfy/IdeaProjects/Pipeline_512K/src/main/scala/Verilog/Row_Fourth.v"

  // 创建ChiselStage实例
  val chiselStage = new chisel3.stage.ChiselStage

  // 使用ChiselGeneratorAnnotation将生成的Verilog代码写入指定的文件
  chiselStage.execute(
    Array("-X", "verilog", "--target-dir", "/Users/anniezfy/IdeaProjects/Pipeline_512K/src/main/scala/Verilog", "--output-file", outputFileName),
    /*修改类的实例化名字*/
    Seq(ChiselGeneratorAnnotation(() => new  Row_Fourth(32)))
  )

  // 打印出生成文件的位置信息
  println(s"Verilog code is generated at: $outputFileName")

}