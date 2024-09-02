package BFUnits
import chisel3._
import chisel3.util._
import DataConfig.{Complex, HasDataConfig}
import Compute._
import chisel3.stage.ChiselGeneratorAnnotation
import chisel3.{Bits, Bool, Bundle, Input, Module, Output, UInt}
import firrtl.Utils.True


class Pipeline_Module(n:Int) extends Module with HasDataConfig {
  val io = IO(new Bundle {
    val number = Input(UInt(32.W))
    val ready = Input(Bool())
    val out_data_add = Output(new Complex(Bits(32.W)))
    val out_data_sub = Output(new Complex(Bits(32.W)))
    val valid = Output(Bool())
  })

  val memory_First = Module(new Memory_First(32))
  memory_First.io.ready := io.ready
  memory_First.io.number := io.number
  val first_row = Module(new Row_One(32))
  val second_row = Module(new Row_Second(32))
  val third_row = Module(new Row_Third(32))
  val fourth_row = Module(new Row_Fourth(32))
  when(io.number === 32.U){
    first_row.io.ready := memory_First.io.valid
    first_row.io.input_add:= memory_First.io.out_data_add
    first_row.io.input_sub:= memory_First.io.out_data_sub
    io.out_data_add := first_row.io.out_data_add
    io.out_data_sub := first_row.io.out_data_sub
    io.valid := first_row.io.valid
  }.elsewhen(io.number === 64.U||io.number === 128.U||io.number===256.U||io.number===512.U||io.number===1024.U){
    first_row.io.ready := memory_First.io.valid
    first_row.io.input_add := memory_First.io.out_data_add
    first_row.io.input_sub := memory_First.io.out_data_sub
    second_row.io.number := io.number
    second_row.io.in_data_a := first_row.io.out_data_add
    second_row.io.in_data_b := first_row.io.out_data_sub
    second_row.io.ready := first_row.io.valid
    io.out_data_add := second_row.io.out_data_a
    io.out_data_sub := second_row.io.out_data_b
    io.valid := second_row.io.valid
  }.elsewhen(io.number===2048.U||io.number ===4096.U||io.number===8192.U||io.number===16384.U||io.number===32768.U){
    first_row.io.ready := memory_First.io.valid
    first_row.io.input_add := memory_First.io.out_data_add
    first_row.io.input_sub := memory_First.io.out_data_sub
    second_row.io.number := io.number
    second_row.io.in_data_a := first_row.io.out_data_add
    second_row.io.in_data_b := first_row.io.out_data_sub
    second_row.io.ready := first_row.io.valid
    io.out_data_add := second_row.io.out_data_a
    io.out_data_sub := second_row.io.out_data_b
    io.valid := second_row.io.valid
  }.elsewhen(io.number===65536.U||io.number===131072.U||io.number===262144.U||io.number===524288.U){
    first_row.io.ready := memory_First.io.valid
    first_row.io.input_add := memory_First.io.out_data_add
    first_row.io.input_sub := memory_First.io.out_data_sub
    second_row.io.number := io.number
    second_row.io.in_data_a := first_row.io.out_data_add
    second_row.io.in_data_b := first_row.io.out_data_sub
    second_row.io.ready := first_row.io.valid
    third_row.io.number := io.number
    third_row.io.in_data_a := second_row.io.out_data_a
    third_row.io.in_data_b := second_row.io.out_data_b
    third_row.io.ready := second_row.io.valid
    io.out_data_add := third_row.io.out_data_a
    io.out_data_sub := third_row.io.out_data_b
    io.valid := third_row.io.valid
  }.otherwise{
    first_row.io.ready := memory_First.io.valid
    first_row.io.input_add := memory_First.io.out_data_add
    first_row.io.input_sub := memory_First.io.out_data_sub
    second_row.io.number := io.number
    second_row.io.in_data_a := first_row.io.out_data_add
    second_row.io.in_data_b := first_row.io.out_data_sub
    second_row.io.ready := first_row.io.valid
    third_row.io.number := io.number
    third_row.io.in_data_a := second_row.io.out_data_a
    third_row.io.in_data_b := second_row.io.out_data_b
    third_row.io.ready := second_row.io.valid
    fourth_row.io.ready := third_row.io.valid
    fourth_row.io.number := io.number
    fourth_row.io.in_data_a := third_row.io.out_data_a
    fourth_row.io.in_data_b := third_row.io.out_data_b
    io.out_data_add := fourth_row.io.out_data_a
    io.out_data_sub := fourth_row.io.out_data_b
    io.valid := fourth_row.io.valid
  }

}
object Link_Fist_Second_row extends App {
  val outputFileName = "/Users/anniezfy/IdeaProjects/Pipeline_512K/src/main/scala/Verilog/Pipeline_Module.v"

  // 创建ChiselStage实例
  val chiselStage = new chisel3.stage.ChiselStage

  // 使用ChiselGeneratorAnnotation将生成的Verilog代码写入指定的文件
  chiselStage.execute(
    Array("-X", "verilog", "--target-dir", "/Users/anniezfy/IdeaProjects/Pipeline_512K/src/main/scala/Verilog", "--output-file", outputFileName),
    /*修改类的实例化名字*/
    Seq(ChiselGeneratorAnnotation(() => new  Pipeline_Module(32)))
  )

  // 打印出生成文件的位置信息
  println(s"Verilog code is generated at: $outputFileName")

}