
package BFUnits.Dyn

import Chisel.Cat
import Compute._
import DataConfig.{Complex, HasDataConfig}
import chisel3._

class BF5_Fourth(n:Int) extends Module with HasDataConfig{
  val io = IO(new Bundle {
    val in_data_a = Input(new Complex(Bits(n.W)))
    val in_data_b = Input(new Complex(Bits(n.W)))
    val ready = Input(Bool())
    val out_data_add = Output(new Complex(Bits(n.W)))
    val out_data_mul = Output(new Complex(Bits(n.W)))
    val valid = Output(Bool())
  })

  // To do multiplication
  val Add = Module(new FPComplexAdd_blackbox)
  val Sub = Module(new FPComplexSub_blackbox)



  // Connect the adder and subtractor
  Add.io.op1 := io.in_data_a
  Add.io.op2 := io.in_data_b
  Add.io.ready := io.ready


  Sub.io.op1 := io.in_data_a
  Sub.io.op2 := io.in_data_b
  Sub.io.ready := io.ready


  io.valid := Sub.io.valid
  io.out_data_add := Add.io.res
  io.out_data_mul := Sub.io.res


}

