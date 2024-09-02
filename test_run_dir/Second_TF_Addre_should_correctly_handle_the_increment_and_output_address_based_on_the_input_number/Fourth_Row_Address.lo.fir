circuit Fourth_Row_Address :
  module Fourth_Row_Address :
    input clock : Clock
    input reset : UInt<1>
    input io_ready : UInt<1>
    input io_counter : UInt<32>
    output io_address : UInt<32>

    reg j : UInt<32>, clock with :
      reset => (UInt<1>("h0"), j) @[Fourth_Row_Address.scala 77:18]
    node _T = sub(io_counter, UInt<1>("h1")) @[Fourth_Row_Address.scala 91:31]
    node _T_1 = tail(_T, 1) @[Fourth_Row_Address.scala 91:31]
    node _T_2 = lt(j, _T_1) @[Fourth_Row_Address.scala 91:12]
    node _j_T = add(j, UInt<1>("h1")) @[Fourth_Row_Address.scala 92:14]
    node _j_T_1 = tail(_j_T, 1) @[Fourth_Row_Address.scala 92:14]
    node _GEN_0 = mux(_T_2, _j_T_1, UInt<1>("h0")) @[Fourth_Row_Address.scala 91:36 92:9 94:9]
    node _GEN_1 = mux(io_ready, _GEN_0, j) @[Fourth_Row_Address.scala 77:18 90:18]
    io_address <= j @[Fourth_Row_Address.scala 97:14]
    j <= mux(reset, UInt<32>("h0"), _GEN_1) @[Fourth_Row_Address.scala 77:{18,18}]
