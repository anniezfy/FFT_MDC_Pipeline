circuit Address_Generation_4_3 :
  module Address_Generation_4_3 :
    input clock : Clock
    input reset : UInt<1>
    input io_ready : UInt<1>
    output io_address : UInt<32>
    input io_counter : UInt<32>

    reg j : UInt<32>, clock with :
      reset => (UInt<1>("h0"), j) @[Address_Generation_4_3.scala 78:18]
    node _T = sub(io_counter, UInt<1>("h1")) @[Address_Generation_4_3.scala 92:31]
    node _T_1 = tail(_T, 1) @[Address_Generation_4_3.scala 92:31]
    node _T_2 = lt(j, _T_1) @[Address_Generation_4_3.scala 92:12]
    node _j_T = add(j, UInt<1>("h1")) @[Address_Generation_4_3.scala 93:14]
    node _j_T_1 = tail(_j_T, 1) @[Address_Generation_4_3.scala 93:14]
    node _GEN_0 = mux(_T_2, _j_T_1, UInt<1>("h0")) @[Address_Generation_4_3.scala 92:37 93:9 95:9]
    node _GEN_1 = mux(io_ready, _GEN_0, j) @[Address_Generation_4_3.scala 78:18 91:18]
    io_address <= j @[Address_Generation_4_3.scala 98:14]
    j <= mux(reset, UInt<32>("h0"), _GEN_1) @[Address_Generation_4_3.scala 78:{18,18}]
