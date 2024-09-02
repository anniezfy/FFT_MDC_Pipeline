package BFUnits

import chisel3._
import chisel3.stage.ChiselGeneratorAnnotation
import chisel3.util._
import Chisel.{Bits, Module}
import chisel3._

/*
 * @brief Twiddle_Address模块用于生成存储器的地址
 * @param counter  常数旋转因子的数量，第一个阶段的常数旋转因子数量是16，第二阶段的常数旋转因子数量是8，第三阶段的常数旋转因子数量是4，第四阶段的常数旋转因子数量是2
 */

class Twiddle_Address(n:Int) extends Module{
  val io = IO(new Bundle{
    val row = Input(UInt(2.W))
    val ready = Input(Bool())
    val counter = Input(UInt(n.W))  //counter变量表示存储器的深度 16 8 4 2
    val address = Output(UInt(n.W))
  })

  //  val iteration = Wire(UInt(n.W))
  //  iteration := 0.U

  //  switch(io.input_number) {
  //    is(4.U){
  //      iteration := 1.U
  //    }
  //    is(8.U){
  //      iteration := 2.U
  //    }
  //    is(16.U){
  //      iteration := 4.U
  //    }
  //    is(32.U){
  //      iteration := 8.U
  //    }
  //    is(64.U){
  //      iteration := 16.U
  //    }
  //    is(128.U){
  //      iteration := 32.U
  //    }
  //    is(256.U){
  //      iteration := 64.U
  //    }
  //    is(512.U){
  //      iteration := 128.U
  //    }
  //    is(1024.U){
  //      iteration := 256.U
  //    }
  //    is(2048.U) {
  //      iteration := 512.U
  //    }
  //    is(4096.U) {
  //      iteration := 1024.U
  //    }
  //    is(8192.U) {
  //      iteration := 2048.U
  //    }
  //    is(16384.U) {
  //      iteration := 4096.U
  //    }
  //    is(32768.U) {
  //      iteration := 8192.U
  //    }
  //    is(65536.U) {
  //      iteration := 16384.U
  //    }
  //    is(131072.U) {
  //      iteration := 32768.U
  //    }
  //    is(262144.U) {
  //      iteration := 65536.U
  //    }
  //    is(524288.U) {
  //      iteration := 131072.U
  //    }
  //  }
  //
  //
  //  val i = RegInit(0.U(32.W))
  val j = RegInit(0.U(32.W))
  val k = RegInit(0.U(32.W))
  //
  //  when(i<iteration){
  //    when(j<1.U){
  //      j := j + 1.U
  //    }.otherwise{
  //      j := 0.U
  //      i := i + 1.U
  //    }
  //  }.otherwise{
  //    i := 0.U
  //    j:= 1.U
  //  }

  /*
  * @param repeat: 表示重复读取存储器地址的次数
  *                第四行 一个地址读取一次
  *                第三行  一个地址重复读取32次
  *                第二行  一个地址重复读取1024次
  *                第一行  一个地址重复读取32768次
  */
  val repeat = Wire(UInt(n.W))

  repeat := 0.U
  switch(io.row){
    is(4.U){
      repeat := 32761.U
    }
    is(3.U){
      repeat := 1023.U
    }
    is(2.U){
      repeat := 31.U
    }
    is(1.U){
      repeat := 0.U
    }
  }

  when(io.ready) {
    when(j < io.counter.asUInt-1.U){
      // 存储器的深度
      when(k< repeat){
        // 反复读取某一个存储器地址
        k := k + 1.U
      }.otherwise{
        k := 0.U
        j := j + 1.U
      }
    }.otherwise {
      j := 0.U
    }
  }
  io.address := j


}
object Link_Fist_Second_row_1 extends App {
  val outputFileName = "/Users/anniezfy/IdeaProjects/Pipeline_512K/src/main/scala/Verilog/Twiddle_Address.v"

  // 创建ChiselStage实例
  val chiselStage = new chisel3.stage.ChiselStage

  // 使用ChiselGeneratorAnnotation将生成的Verilog代码写入指定的文件
  chiselStage.execute(
    Array("-X", "verilog", "--target-dir", "/Users/anniezfy/IdeaProjects/Pipeline_512K/src/main/scala/Verilog", "--output-file", outputFileName),
    /*修改类的实例化名字*/
    Seq(ChiselGeneratorAnnotation(() => new  Twiddle_Address(32)))
  )

  // 打印出生成文件的位置信息
  println(s"Verilog code is generated at: $outputFileName")

}