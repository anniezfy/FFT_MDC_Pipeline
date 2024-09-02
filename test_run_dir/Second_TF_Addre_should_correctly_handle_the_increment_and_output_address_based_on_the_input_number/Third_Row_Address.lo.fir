circuit Third_Row_Address :
  module Third_Row_Address :
    input clock : Clock
    input reset : UInt<1>
    input io_row : UInt<2>
    input io_ready : UInt<1>
    input io_counter : UInt<32>
    output io_address : UInt<32>

    reg j : UInt<32>, clock with :
      reset => (UInt<1>("h0"), j) @[Third_Row_Address.scala 78:18]
    reg k : UInt<32>, clock with :
      reset => (UInt<1>("h0"), k) @[Third_Row_Address.scala 79:18]
    node _T = eq(UInt<1>("h1"), io_row) @[Third_Row_Address.scala 94:17]
    node _T_1 = eq(UInt<2>("h2"), io_row) @[Third_Row_Address.scala 94:17]
    node _T_2 = eq(UInt<2>("h3"), io_row) @[Third_Row_Address.scala 94:17]
    node _T_3 = eq(UInt<3>("h4"), io_row) @[Third_Row_Address.scala 94:17]
    node _GEN_0 = mux(_T_3, UInt<1>("h0"), UInt<1>("h0")) @[Third_Row_Address.scala 105:14 93:10 94:17]
    node _GEN_1 = mux(_T_2, UInt<5>("h1f"), _GEN_0) @[Third_Row_Address.scala 102:14 94:17]
    node _GEN_2 = mux(_T_1, UInt<10>("h3ff"), _GEN_1) @[Third_Row_Address.scala 94:17 99:14]
    node _GEN_3 = mux(_T, UInt<15>("h7ff9"), _GEN_2) @[Third_Row_Address.scala 94:17 96:14]
    node _T_4 = sub(io_counter, UInt<1>("h1")) @[Third_Row_Address.scala 110:31]
    node _T_5 = tail(_T_4, 1) @[Third_Row_Address.scala 110:31]
    node _T_6 = lt(j, _T_5) @[Third_Row_Address.scala 110:12]
    node repeat = pad(_GEN_3, 32) @[Third_Row_Address.scala 92:20]
    node _T_7 = lt(k, repeat) @[Third_Row_Address.scala 111:13]
    node _k_T = add(k, UInt<1>("h1")) @[Third_Row_Address.scala 112:16]
    node _k_T_1 = tail(_k_T, 1) @[Third_Row_Address.scala 112:16]
    node _j_T = add(j, UInt<1>("h1")) @[Third_Row_Address.scala 115:16]
    node _j_T_1 = tail(_j_T, 1) @[Third_Row_Address.scala 115:16]
    node _GEN_4 = mux(_T_7, _k_T_1, UInt<1>("h0")) @[Third_Row_Address.scala 111:22 112:11 114:11]
    node _GEN_5 = mux(_T_7, j, _j_T_1) @[Third_Row_Address.scala 111:22 115:11 78:18]
    node _GEN_6 = mux(_T_6, _GEN_4, k) @[Third_Row_Address.scala 110:36 79:18]
    node _GEN_7 = mux(_T_6, _GEN_5, UInt<1>("h0")) @[Third_Row_Address.scala 110:36 118:9]
    node _GEN_8 = mux(io_ready, _GEN_6, k) @[Third_Row_Address.scala 109:18 79:18]
    node _GEN_9 = mux(io_ready, _GEN_7, j) @[Third_Row_Address.scala 109:18 78:18]
    io_address <= j @[Third_Row_Address.scala 121:14]
    j <= mux(reset, UInt<32>("h0"), _GEN_9) @[Third_Row_Address.scala 78:{18,18}]
    k <= mux(reset, UInt<32>("h0"), _GEN_8) @[Third_Row_Address.scala 79:{18,18}]
