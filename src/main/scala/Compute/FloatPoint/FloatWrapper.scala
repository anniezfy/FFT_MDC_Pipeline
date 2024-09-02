package Compute.FloatPoint

import Chisel._

// Wraps a Chisel Flo or Dbl datatype to allow easy
// extraction of the different parts (sign, exponent, mantissa)

class FloatWrapper(val num: Bits) {
  val (sign, exponent, mantissa, zero) = num.getWidth match {
    case 32 => (num(31).asBool(),
      num(30, 23).asUInt(),
      // if the exponent is 0
      // this is a denormalized number
      Cat(Mux(num(30, 23) === Bits(0),
        Bits(0, 1), Bits(1, 1)),
        num(22, 0).toUInt),
      num(30, 0) === Bits(0))
    case 64 => (num(63).asBool(),
      num(62, 52).toUInt,
      Cat(Mux(num(62, 52) === Bits(0),
        Bits(0, 1), Bits(1, 1)),
        num(51, 0).toUInt),
      num(62, 0) === Bits(0))
  }
}
