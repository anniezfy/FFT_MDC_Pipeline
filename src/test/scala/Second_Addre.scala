
import BFUnits.Twiddle_Address
import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class Second_TF_AddreTester extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "Second_TF_Addre"

  it should "correctly handle the increment and output address based on the input number" in {
    test(new Twiddle_Address(32)) { c =>


      c.io.ready.poke(true.B)
      c.io.counter.poke(16.U)
      c.io.row.poke(3.U)
      for (i <- 0 until 65) {
        println(s"********** Test Cycle${i} **********")
        println(s"currnet counter value is ${c.io.address.peek()}")
        c.clock.step(1) // 时钟前进一步

      }
    }
  }
}