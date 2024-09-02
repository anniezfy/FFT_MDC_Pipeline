package Shuffle_Unit

import chisel3._
import DataConfig._
import Chisel.{Bits, Cat, Module}
import Compute.FloatPoint.FloatUtils.floatToBigInt
import Compute._
import chisel3.stage.ChiselGeneratorAnnotation
import chisel3.util.{RegEnable, log2Ceil}

class Divider_frequency(maxValue: Int) extends Module {
  val io = IO(new Bundle {
    val en = Input(Bool())          // 使能信号
    val out = Output(Bool())        // 输出信号
  })

  val countReg = RegInit(0.U(log2Ceil(maxValue + 1).W))  // 计数器寄存器
  val toggleReg = RegInit(false.B)  // 输出信号的状态寄存器

  when(io.en) {
    when(countReg === (maxValue).U-1.U) {
      countReg := 0.U             // 计数器达到最大值时复位为0
      toggleReg := !toggleReg     // 输出信号状态翻转
    } .otherwise {
      countReg := countReg + 1.U  // 正常情况下计数器增加
    }
  }

  io.out := toggleReg  // 将翻转后的状态输出
}
//class Divider_frequency(cycle: Int) extends Module with HasDataConfig {
//  val io = IO(new Bundle {
//    val en = Input(Bool())
//    val en_out = Output(Bool())
//  })
//
//  val resReg = RegInit(0.U(32.W))
//  val out_data = RegInit(false.B)
//  val cntReg = RegInit(0.U(32.W))
//
//  // 上一周期的en信号值
//  val prev_en = RegNext(io.en, init=false.B)
//
//  // 检测en信号的上升沿
//  val risingEdge = io.en && !prev_en
//
//  // 在en的上升沿将cntReg初始化为0
//  when(risingEdge) {
//    cntReg := 0.U
//  } .elsewhen(io.en) {
//    when(cntReg === (cycle.U - 1.U)) {
//      cntReg := 0.U
//      out_data := ~out_data
//    } .otherwise {
//      cntReg := cntReg + 1.U
//    }
//  }
//
//  // 利用reset信号来控制输出，仅在reset为1时输出out_data，reset为0时输出0
//  io.en_out := out_data
//}


object  Divider_frequency_direct extends App{
  def apply(en:Bool,cycle:Int): Bool = {
    val div = Module(new Divider_frequency(cycle))
    div.io.en := en
    div.io.out
  }
}

class MyComplex extends Bundle {
  val re = UInt(32.W)
  val im = UInt(32.W)
}

class Myselect extends Module {
  val io = IO(new Bundle {
    val en = Input(Bool())
    val condition = Input(Bool())
    val in_data_1 = Input(new MyComplex())
    val in_data_2 = Input(new MyComplex())
    val out_data = Output(new MyComplex())
  })


  when(io.en) {
    when(io.condition) {
      io.out_data := io.in_data_1
    }.otherwise {
      io.out_data:= io.in_data_2
    }
  }otherwise{
    io.out_data := DontCare
  }
}




class shuffle(Cycle: Int, n: Int) extends Module with HasDataConfig {
  val io = IO(new Bundle {
    val in_data_add = Input(new Complex(Bits(n.W)))
    val in_data_mul = Input(new Complex(Bits(n.W)))
    val ready = Input(Bool())
    val valid = Output(Bool())
    val out_delay_data_add = Output(new Complex(Bits(n.W)))
    val out_delay_data_mul = Output(new Complex(Bits(n.W)))
  })

  io.out_delay_data_mul.re := RegInit(0.U(n.W))
  io.out_delay_data_mul.im := RegInit(0.U(n.W))
  io.out_delay_data_add.re := RegInit(0.U(n.W))
  io.out_delay_data_add.im := RegInit(0.U(n.W))


  val condition = Divider_frequency_direct(io.ready, Cycle)
//  val condition_reg = RegNext(condition)
  val mul_delay = Delay(io.in_data_mul, Cycle)
  val mux_add = Module(new Myselect())
  val mux_mul = Module(new Myselect())

  mux_add.io.condition := condition
  mux_add.io.in_data_1 := mul_delay
  mux_add.io.in_data_2 := io.in_data_add
  mux_add.io.en := io.ready

  mux_mul.io.condition := condition
  mux_mul.io.in_data_1 := io.in_data_add
  mux_mul.io.in_data_2 := mul_delay
  mux_mul.io.en := io.ready

  io.out_delay_data_add.re := Delayu(mux_add.io.out_data.re, Cycle)
  io.out_delay_data_add.im := Delayu(mux_add.io.out_data.im, Cycle)
  io.out_delay_data_mul := mux_mul.io.out_data


  io.valid := Delayb(io.ready, Cycle)
}







object shuffle extends App {
  val outputFileName = "/Users/anniezfy/IdeaProjects/FFT_Processor_Hybrid_Architecture/src/main/scala/Shuffle_Unit/shuffle_Unit_8.v"

  // 创建ChiselStage实例
  val chiselStage = new chisel3.stage.ChiselStage

  // 使用ChiselGeneratorAnnotation将生成的Verilog代码写入指定的文件
  chiselStage.execute(
    Array("-X", "verilog", "--target-dir", "/Users/anniezfy/IdeaProjects/FFT_Processor_Hybrid_Architecture/src/main/scala/Shuffle_Unit", "--output-file", outputFileName),
    /*修改类的实例化名字*/
    Seq(ChiselGeneratorAnnotation(() => new shuffle(8,32)))
  )

  // 打印出生成文件的位置信息
  println(s"Verilog code is generated at: $outputFileName")
}
