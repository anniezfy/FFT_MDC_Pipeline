circuit Address_Generation :
  module Address_Generation :
    input clock : Clock
    input reset : UInt<1>
    input io_ready : UInt<1>
    output io_address : UInt<32>

    reg j : UInt<32>, clock with :
      reset => (UInt<1>("h0"), j) @[Address_Generation.scala 77:18]
    node _T = lt(j, UInt<1>("h1")) @[Address_Generation.scala 91:10]
    node _j_T = add(j, UInt<1>("h1")) @[Address_Generation.scala 92:12]
    node _j_T_1 = tail(_j_T, 1) @[Address_Generation.scala 92:12]
    node _GEN_0 = mux(_T, _j_T_1, UInt<1>("h0")) @[Address_Generation.scala 91:17 92:7 94:7]
    node _GEN_1 = mux(io_ready, _GEN_0, j) @[Address_Generation.scala 90:16 77:18]
    io_address <= j @[Address_Generation.scala 97:14]
    j <= mux(reset, UInt<32>("h0"), _GEN_1) @[Address_Generation.scala 77:{18,18}]
