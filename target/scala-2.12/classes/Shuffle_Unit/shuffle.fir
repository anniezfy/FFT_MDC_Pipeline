circuit shuffle :
  module Divider_frequency :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, out : UInt<1>}

    reg countReg : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[BF2.scala 69:25]
    reg toggleReg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[BF2.scala 70:26]
    when io.en : @[BF2.scala 72:15]
      node _T = sub(UInt<4>("h8"), UInt<1>("h1")) @[BF2.scala 73:35]
      node _T_1 = tail(_T, 1) @[BF2.scala 73:35]
      node _T_2 = eq(countReg, _T_1) @[BF2.scala 73:19]
      when _T_2 : @[BF2.scala 73:41]
        countReg <= UInt<1>("h0") @[BF2.scala 74:16]
        node _toggleReg_T = eq(toggleReg, UInt<1>("h0")) @[BF2.scala 75:20]
        toggleReg <= _toggleReg_T @[BF2.scala 75:17]
      else :
        node _countReg_T = add(countReg, UInt<1>("h1")) @[BF2.scala 77:28]
        node _countReg_T_1 = tail(_countReg_T, 1) @[BF2.scala 77:28]
        countReg <= _countReg_T_1 @[BF2.scala 77:16]
    io.out <= toggleReg @[BF2.scala 81:10]

  module Delay :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    wire _reg_delay_re_WIRE : UInt<32>[8] @[Delay.scala 18:50]
    _reg_delay_re_WIRE[0] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[1] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[2] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[3] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[4] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[5] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[6] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[7] <= UInt<32>("h0") @[Delay.scala 18:50]
    reg reg_delay_re : UInt<32>[8], clock with :
      reset => (reset, _reg_delay_re_WIRE) @[Delay.scala 18:42]
    wire _reg_delay_im_WIRE : UInt<32>[8] @[Delay.scala 19:50]
    _reg_delay_im_WIRE[0] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[1] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[2] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[3] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[4] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[5] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[6] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[7] <= UInt<32>("h0") @[Delay.scala 19:50]
    reg reg_delay_im : UInt<32>[8], clock with :
      reset => (reset, _reg_delay_im_WIRE) @[Delay.scala 19:42]
    reg_delay_re[0] <= io.in_data.re @[Delay.scala 20:21]
    reg_delay_im[0] <= io.in_data.im @[Delay.scala 21:21]
    reg_delay_re[1] <= reg_delay_re[0] @[Delay.scala 23:23]
    reg_delay_im[1] <= reg_delay_im[0] @[Delay.scala 24:23]
    reg_delay_re[2] <= reg_delay_re[1] @[Delay.scala 23:23]
    reg_delay_im[2] <= reg_delay_im[1] @[Delay.scala 24:23]
    reg_delay_re[3] <= reg_delay_re[2] @[Delay.scala 23:23]
    reg_delay_im[3] <= reg_delay_im[2] @[Delay.scala 24:23]
    reg_delay_re[4] <= reg_delay_re[3] @[Delay.scala 23:23]
    reg_delay_im[4] <= reg_delay_im[3] @[Delay.scala 24:23]
    reg_delay_re[5] <= reg_delay_re[4] @[Delay.scala 23:23]
    reg_delay_im[5] <= reg_delay_im[4] @[Delay.scala 24:23]
    reg_delay_re[6] <= reg_delay_re[5] @[Delay.scala 23:23]
    reg_delay_im[6] <= reg_delay_im[5] @[Delay.scala 24:23]
    reg_delay_re[7] <= reg_delay_re[6] @[Delay.scala 23:23]
    reg_delay_im[7] <= reg_delay_im[6] @[Delay.scala 24:23]
    node _io_out_data_re_T = sub(UInt<4>("h8"), UInt<1>("h1")) @[Delay.scala 26:44]
    node _io_out_data_re_T_1 = tail(_io_out_data_re_T, 1) @[Delay.scala 26:44]
    node _io_out_data_re_T_2 = bits(_io_out_data_re_T_1, 2, 0)
    io.out_data.re <= reg_delay_re[_io_out_data_re_T_2] @[Delay.scala 26:20]
    node _io_out_data_im_T = sub(UInt<4>("h8"), UInt<1>("h1")) @[Delay.scala 27:44]
    node _io_out_data_im_T_1 = tail(_io_out_data_im_T, 1) @[Delay.scala 27:44]
    node _io_out_data_im_T_2 = bits(_io_out_data_im_T_1, 2, 0)
    io.out_data.im <= reg_delay_im[_io_out_data_im_T_2] @[Delay.scala 27:20]

  module Myselect :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, flip condition : UInt<1>, flip in_data_1 : { re : UInt<32>, im : UInt<32>}, flip in_data_2 : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    when io.en : @[shuffle.scala 26:15]
      when io.condition : @[shuffle.scala 27:24]
        io.out_data.im <= io.in_data_1.im @[shuffle.scala 28:19]
        io.out_data.re <= io.in_data_1.re @[shuffle.scala 28:19]
      else :
        io.out_data.im <= io.in_data_2.im @[shuffle.scala 30:18]
        io.out_data.re <= io.in_data_2.re @[shuffle.scala 30:18]
    else :
      io.out_data.im is invalid @[shuffle.scala 33:17]
      io.out_data.re is invalid @[shuffle.scala 33:17]

  module Myselect_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, flip condition : UInt<1>, flip in_data_1 : { re : UInt<32>, im : UInt<32>}, flip in_data_2 : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    when io.en : @[shuffle.scala 26:15]
      when io.condition : @[shuffle.scala 27:24]
        io.out_data.im <= io.in_data_1.im @[shuffle.scala 28:19]
        io.out_data.re <= io.in_data_1.re @[shuffle.scala 28:19]
      else :
        io.out_data.im <= io.in_data_2.im @[shuffle.scala 30:18]
        io.out_data.re <= io.in_data_2.re @[shuffle.scala 30:18]
    else :
      io.out_data.im is invalid @[shuffle.scala 33:17]
      io.out_data.re is invalid @[shuffle.scala 33:17]

  module Delayu :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<32>, out_data : UInt<32>}

    wire _reg_delay_WIRE : UInt<32>[8] @[Delay.scala 50:47]
    _reg_delay_WIRE[0] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[1] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[2] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[3] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[4] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[5] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[6] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[7] <= UInt<32>("h0") @[Delay.scala 50:47]
    reg reg_delay : UInt<32>[8], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 50:39]
    reg_delay[0] <= io.in_data @[Delay.scala 51:18]
    reg_delay[1] <= reg_delay[0] @[Delay.scala 53:20]
    reg_delay[2] <= reg_delay[1] @[Delay.scala 53:20]
    reg_delay[3] <= reg_delay[2] @[Delay.scala 53:20]
    reg_delay[4] <= reg_delay[3] @[Delay.scala 53:20]
    reg_delay[5] <= reg_delay[4] @[Delay.scala 53:20]
    reg_delay[6] <= reg_delay[5] @[Delay.scala 53:20]
    reg_delay[7] <= reg_delay[6] @[Delay.scala 53:20]
    node _io_out_data_T = sub(UInt<4>("h8"), UInt<1>("h1")) @[Delay.scala 55:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 55:38]
    node _io_out_data_T_2 = bits(_io_out_data_T_1, 2, 0)
    io.out_data <= reg_delay[_io_out_data_T_2] @[Delay.scala 55:17]

  module Delayu_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<32>, out_data : UInt<32>}

    wire _reg_delay_WIRE : UInt<32>[8] @[Delay.scala 50:47]
    _reg_delay_WIRE[0] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[1] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[2] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[3] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[4] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[5] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[6] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[7] <= UInt<32>("h0") @[Delay.scala 50:47]
    reg reg_delay : UInt<32>[8], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 50:39]
    reg_delay[0] <= io.in_data @[Delay.scala 51:18]
    reg_delay[1] <= reg_delay[0] @[Delay.scala 53:20]
    reg_delay[2] <= reg_delay[1] @[Delay.scala 53:20]
    reg_delay[3] <= reg_delay[2] @[Delay.scala 53:20]
    reg_delay[4] <= reg_delay[3] @[Delay.scala 53:20]
    reg_delay[5] <= reg_delay[4] @[Delay.scala 53:20]
    reg_delay[6] <= reg_delay[5] @[Delay.scala 53:20]
    reg_delay[7] <= reg_delay[6] @[Delay.scala 53:20]
    node _io_out_data_T = sub(UInt<4>("h8"), UInt<1>("h1")) @[Delay.scala 55:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 55:38]
    node _io_out_data_T_2 = bits(_io_out_data_T_1, 2, 0)
    io.out_data <= reg_delay[_io_out_data_T_2] @[Delay.scala 55:17]

  module Delayb :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<1>, out_data : UInt<1>}

    wire _reg_delay_WIRE : UInt<1>[8] @[Delay.scala 101:47]
    _reg_delay_WIRE[0] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[1] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[2] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[3] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[4] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[5] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[6] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[7] <= UInt<1>("h0") @[Delay.scala 101:47]
    reg reg_delay : UInt<1>[8], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 101:39]
    reg_delay[0] <= io.in_data @[Delay.scala 102:18]
    reg_delay[1] <= reg_delay[0] @[Delay.scala 104:20]
    reg_delay[2] <= reg_delay[1] @[Delay.scala 104:20]
    reg_delay[3] <= reg_delay[2] @[Delay.scala 104:20]
    reg_delay[4] <= reg_delay[3] @[Delay.scala 104:20]
    reg_delay[5] <= reg_delay[4] @[Delay.scala 104:20]
    reg_delay[6] <= reg_delay[5] @[Delay.scala 104:20]
    reg_delay[7] <= reg_delay[6] @[Delay.scala 104:20]
    node _io_out_data_T = sub(UInt<4>("h8"), UInt<1>("h1")) @[Delay.scala 106:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 106:38]
    node _io_out_data_T_2 = bits(_io_out_data_T_1, 2, 0)
    io.out_data <= reg_delay[_io_out_data_T_2] @[Delay.scala 106:17]

  module shuffle :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in_data_add : { re : UInt<32>, im : UInt<32>}, flip in_data_mul : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>, out_delay_data_add : { re : UInt<32>, im : UInt<32>}, out_delay_data_mul : { re : UInt<32>, im : UInt<32>}}

    reg io_out_delay_data_mul_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 50:38]
    io.out_delay_data_mul.re <= io_out_delay_data_mul_re_REG @[shuffle.scala 50:28]
    reg io_out_delay_data_mul_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 51:38]
    io.out_delay_data_mul.im <= io_out_delay_data_mul_im_REG @[shuffle.scala 51:28]
    reg io_out_delay_data_add_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 52:38]
    io.out_delay_data_add.re <= io_out_delay_data_add_re_REG @[shuffle.scala 52:28]
    reg io_out_delay_data_add_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 53:38]
    io.out_delay_data_add.im <= io_out_delay_data_add_im_REG @[shuffle.scala 53:28]
    inst condition_div of Divider_frequency @[BF2.scala 121:21]
    condition_div.clock <= clock
    condition_div.reset <= reset
    condition_div.io.en <= io.ready @[BF2.scala 122:15]
    inst mul_delay_delay of Delay @[Delay.scala 34:23]
    mul_delay_delay.clock <= clock
    mul_delay_delay.reset <= reset
    mul_delay_delay.io.in_data.im <= io.in_data_mul.im @[Delay.scala 35:22]
    mul_delay_delay.io.in_data.re <= io.in_data_mul.re @[Delay.scala 35:22]
    inst mux_add of Myselect @[shuffle.scala 59:23]
    mux_add.clock <= clock
    mux_add.reset <= reset
    inst mux_mul of Myselect_1 @[shuffle.scala 60:23]
    mux_mul.clock <= clock
    mux_mul.reset <= reset
    mux_add.io.condition <= condition_div.io.out @[shuffle.scala 62:24]
    mux_add.io.in_data_1.im <= mul_delay_delay.io.out_data.im @[shuffle.scala 63:24]
    mux_add.io.in_data_1.re <= mul_delay_delay.io.out_data.re @[shuffle.scala 63:24]
    mux_add.io.in_data_2.im <= io.in_data_add.im @[shuffle.scala 64:24]
    mux_add.io.in_data_2.re <= io.in_data_add.re @[shuffle.scala 64:24]
    mux_add.io.en <= io.ready @[shuffle.scala 65:17]
    mux_mul.io.condition <= condition_div.io.out @[shuffle.scala 67:24]
    mux_mul.io.in_data_1.im <= io.in_data_add.im @[shuffle.scala 68:24]
    mux_mul.io.in_data_1.re <= io.in_data_add.re @[shuffle.scala 68:24]
    mux_mul.io.in_data_2.im <= mul_delay_delay.io.out_data.im @[shuffle.scala 69:24]
    mux_mul.io.in_data_2.re <= mul_delay_delay.io.out_data.re @[shuffle.scala 69:24]
    mux_mul.io.en <= io.ready @[shuffle.scala 70:17]
    inst io_out_delay_data_add_re_delay of Delayu @[Delay.scala 60:23]
    io_out_delay_data_add_re_delay.clock <= clock
    io_out_delay_data_add_re_delay.reset <= reset
    io_out_delay_data_add_re_delay.io.in_data <= mux_add.io.out_data.re @[Delay.scala 61:22]
    io.out_delay_data_add.re <= io_out_delay_data_add_re_delay.io.out_data @[shuffle.scala 72:28]
    inst io_out_delay_data_add_im_delay of Delayu_1 @[Delay.scala 60:23]
    io_out_delay_data_add_im_delay.clock <= clock
    io_out_delay_data_add_im_delay.reset <= reset
    io_out_delay_data_add_im_delay.io.in_data <= mux_add.io.out_data.im @[Delay.scala 61:22]
    io.out_delay_data_add.im <= io_out_delay_data_add_im_delay.io.out_data @[shuffle.scala 73:28]
    io.out_delay_data_mul.im <= mux_mul.io.out_data.im @[shuffle.scala 74:25]
    io.out_delay_data_mul.re <= mux_mul.io.out_data.re @[shuffle.scala 74:25]
    inst io_valid_delay of Delayb @[Delay.scala 111:23]
    io_valid_delay.clock <= clock
    io_valid_delay.reset <= reset
    io_valid_delay.io.in_data <= io.ready @[Delay.scala 112:22]
    io.valid <= io_valid_delay.io.out_data @[shuffle.scala 77:12]

