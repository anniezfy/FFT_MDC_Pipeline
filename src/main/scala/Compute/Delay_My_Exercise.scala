package Compute
import Chisel.Bits
import DataConfig._
import chisel3._

class Delay_My_Exercise(Length:Int,n:Int) extends Module{
    val io = IO(new Bundle {
        val in_data = Input(new Complex(Bits(n.W)))
        val out_data = Output(new Complex(Bits(n.W)))
    }
    )
   /*声明变量*/
    val delay_array_re = RegInit(VecInit(Seq.fill(Length)(0.U(n.W)))
    )
    val delay_array_im = RegInit(VecInit(Seq.fill(Length)(0.U(n.W)))
    )
    /*初始化变量*/
    delay_array_re(0) := io.in_data.re
    delay_array_im(0) := io.in_data.im

    for(i<-1 until Length){
        delay_array_re(i) := delay_array_re(i-1)
        delay_array_im(i) := delay_array_im(i-1)
    }

    io.out_data.re := delay_array_re(Length.U-1.U)
    io.out_data.im := delay_array_im(Length.U-1.U)

}
class TopLevelModule extends Module {
  val io = IO(new Bundle {
    val input = Input(new Complex(UInt(32.W)))
    val output = Output(new Complex(UInt(32.W)))

  })

  // 使用Delay伴生对象的apply方法
  val cycle = 5
  io.output := Delay(io.input, cycle)
}