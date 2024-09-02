circuit Twiddle_Address :
  module Twiddle_Address :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip row : UInt<2>, flip ready : UInt<1>, flip counter : UInt<32>, address : UInt<32>}

    reg j : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Twiddle_Address.scala 78:18]
    reg k : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Twiddle_Address.scala 79:18]
    wire repeat : UInt<32> @[Twiddle_Address.scala 92:20]
    repeat <= UInt<1>("h0") @[Twiddle_Address.scala 93:10]
    node _T = eq(UInt<1>("h1"), io.row) @[Twiddle_Address.scala 94:17]
    when _T : @[Twiddle_Address.scala 94:17]
      repeat <= UInt<15>("h7ff9") @[Twiddle_Address.scala 96:14]
    else :
      node _T_1 = eq(UInt<2>("h2"), io.row) @[Twiddle_Address.scala 94:17]
      when _T_1 : @[Twiddle_Address.scala 94:17]
        repeat <= UInt<10>("h3ff") @[Twiddle_Address.scala 99:14]
      else :
        node _T_2 = eq(UInt<2>("h3"), io.row) @[Twiddle_Address.scala 94:17]
        when _T_2 : @[Twiddle_Address.scala 94:17]
          repeat <= UInt<5>("h1f") @[Twiddle_Address.scala 102:14]
        else :
          node _T_3 = eq(UInt<3>("h4"), io.row) @[Twiddle_Address.scala 94:17]
          when _T_3 : @[Twiddle_Address.scala 94:17]
            repeat <= UInt<1>("h0") @[Twiddle_Address.scala 105:14]
    when io.ready : @[Twiddle_Address.scala 109:18]
      node _T_4 = sub(io.counter, UInt<1>("h1")) @[Twiddle_Address.scala 110:31]
      node _T_5 = tail(_T_4, 1) @[Twiddle_Address.scala 110:31]
      node _T_6 = lt(j, _T_5) @[Twiddle_Address.scala 110:12]
      when _T_6 : @[Twiddle_Address.scala 110:36]
        node _T_7 = lt(k, repeat) @[Twiddle_Address.scala 111:13]
        when _T_7 : @[Twiddle_Address.scala 111:22]
          node _k_T = add(k, UInt<1>("h1")) @[Twiddle_Address.scala 112:16]
          node _k_T_1 = tail(_k_T, 1) @[Twiddle_Address.scala 112:16]
          k <= _k_T_1 @[Twiddle_Address.scala 112:11]
        else :
          k <= UInt<1>("h0") @[Twiddle_Address.scala 114:11]
          node _j_T = add(j, UInt<1>("h1")) @[Twiddle_Address.scala 115:16]
          node _j_T_1 = tail(_j_T, 1) @[Twiddle_Address.scala 115:16]
          j <= _j_T_1 @[Twiddle_Address.scala 115:11]
      else :
        j <= UInt<1>("h0") @[Twiddle_Address.scala 118:9]
    io.address <= j @[Twiddle_Address.scala 121:14]

