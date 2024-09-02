circuit FPComplexMul_blackbox :
  extmodule Ip_ComplexMul_blackbox :
    input aclk : Clock
    input enA : UInt<1>
    input A_re : UInt<32>
    input A_im : UInt<32>
    input enB : UInt<1>
    input B_re : UInt<32>
    input B_im : UInt<32>
    output valid : UInt<1>
    output res_re : UInt<32>
    output res_im : UInt<32>
    defname = Ip_ComplexMul_blackbox

  module FPComplexMul_blackbox :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>, res : { re : UInt<32>, im : UInt<32>}}

    inst commul of Ip_ComplexMul_blackbox @[Ip_BlackBox.scala 138:23]
    commul.res_im is invalid
    commul.res_re is invalid
    commul.valid is invalid
    commul.B_im is invalid
    commul.B_re is invalid
    commul.enB is invalid
    commul.A_im is invalid
    commul.A_re is invalid
    commul.enA is invalid
    commul.aclk is invalid
    commul.aclk <= clock @[Ip_BlackBox.scala 139:18]
    commul.enA <= io.ready @[Ip_BlackBox.scala 140:17]
    commul.A_re <= io.op1.re @[Ip_BlackBox.scala 141:18]
    commul.A_im <= io.op1.im @[Ip_BlackBox.scala 142:18]
    commul.enB <= io.ready @[Ip_BlackBox.scala 143:17]
    commul.B_re <= io.op2.re @[Ip_BlackBox.scala 144:18]
    commul.B_im <= io.op2.im @[Ip_BlackBox.scala 145:18]
    io.valid <= commul.valid @[Ip_BlackBox.scala 146:12]
    io.res.re <= commul.res_re @[Ip_BlackBox.scala 147:13]
    io.res.im <= commul.res_im @[Ip_BlackBox.scala 148:13]

