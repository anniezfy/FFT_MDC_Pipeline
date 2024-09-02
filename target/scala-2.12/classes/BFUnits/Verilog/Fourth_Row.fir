circuit Fourth_Row :
  extmodule Ip_Dual_Port_URAM_a_re_1 :
    input clk : Clock
    input ena : UInt<1>
    input wea : UInt<1>
    input addra : UInt<32>
    input dina : UInt<32>
    input enb : UInt<1>
    input addrb : UInt<32>
    output doutb : UInt<32>
    defname = Ip_Dual_Port_URAM_a_re_1

  module Simple_Dual_Port_a_re_blackbox_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip ena : UInt<1>, flip enb : UInt<1>, flip write_en : UInt<1>, flip read_addr : UInt<32>, flip write_addr : UInt<32>, flip dataIn : UInt<32>, dataOut : UInt<32>}

    inst commul of Ip_Dual_Port_URAM_a_re_1 @[Ip_BlackBox.scala 515:30]
    commul.doutb is invalid
    commul.addrb is invalid
    commul.enb is invalid
    commul.dina is invalid
    commul.addra is invalid
    commul.wea is invalid
    commul.ena is invalid
    commul.clk is invalid
    commul.clk <= clock @[Ip_BlackBox.scala 517:20]
    commul.ena <= io.ena @[Ip_BlackBox.scala 518:20]
    commul.enb <= io.enb @[Ip_BlackBox.scala 519:20]
    commul.wea <= io.write_en @[Ip_BlackBox.scala 522:21]
    commul.addra <= io.write_addr @[Ip_BlackBox.scala 523:21]
    commul.dina <= io.dataIn @[Ip_BlackBox.scala 524:21]
    commul.addrb <= io.read_addr @[Ip_BlackBox.scala 525:21]
    io.dataOut <= commul.doutb @[Ip_BlackBox.scala 526:21]

  extmodule Ip_Dual_Port_URAM_a_im_1 :
    input clk : Clock
    input ena : UInt<1>
    input wea : UInt<1>
    input addra : UInt<32>
    input dina : UInt<32>
    input enb : UInt<1>
    input addrb : UInt<32>
    output doutb : UInt<32>
    defname = Ip_Dual_Port_URAM_a_im_1

  module Simple_Dual_Port_a_im_blackbox_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip ena : UInt<1>, flip enb : UInt<1>, flip write_en : UInt<1>, flip read_addr : UInt<32>, flip write_addr : UInt<32>, flip dataIn : UInt<32>, dataOut : UInt<32>}

    inst commul of Ip_Dual_Port_URAM_a_im_1 @[Ip_BlackBox.scala 557:30]
    commul.doutb is invalid
    commul.addrb is invalid
    commul.enb is invalid
    commul.dina is invalid
    commul.addra is invalid
    commul.wea is invalid
    commul.ena is invalid
    commul.clk is invalid
    commul.clk <= clock @[Ip_BlackBox.scala 559:20]
    commul.ena <= io.ena @[Ip_BlackBox.scala 560:20]
    commul.enb <= io.enb @[Ip_BlackBox.scala 561:20]
    commul.wea <= io.write_en @[Ip_BlackBox.scala 564:21]
    commul.addra <= io.write_addr @[Ip_BlackBox.scala 565:21]
    commul.dina <= io.dataIn @[Ip_BlackBox.scala 566:21]
    commul.addrb <= io.read_addr @[Ip_BlackBox.scala 567:21]
    io.dataOut <= commul.doutb @[Ip_BlackBox.scala 568:21]

  extmodule Ip_Dual_Port_URAM_b_re_1 :
    input clk : Clock
    input ena : UInt<1>
    input wea : UInt<1>
    input addra : UInt<32>
    input dina : UInt<32>
    input enb : UInt<1>
    input addrb : UInt<32>
    output doutb : UInt<32>
    defname = Ip_Dual_Port_URAM_b_re_1

  module Simple_Dual_Port_b_re_blackbox_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip ena : UInt<1>, flip enb : UInt<1>, flip write_en : UInt<1>, flip read_addr : UInt<32>, flip write_addr : UInt<32>, flip dataIn : UInt<32>, dataOut : UInt<32>}

    inst commul of Ip_Dual_Port_URAM_b_re_1 @[Ip_BlackBox.scala 597:30]
    commul.doutb is invalid
    commul.addrb is invalid
    commul.enb is invalid
    commul.dina is invalid
    commul.addra is invalid
    commul.wea is invalid
    commul.ena is invalid
    commul.clk is invalid
    commul.clk <= clock @[Ip_BlackBox.scala 599:20]
    commul.ena <= io.ena @[Ip_BlackBox.scala 600:20]
    commul.enb <= io.enb @[Ip_BlackBox.scala 601:20]
    commul.wea <= io.write_en @[Ip_BlackBox.scala 604:21]
    commul.addra <= io.write_addr @[Ip_BlackBox.scala 605:21]
    commul.dina <= io.dataIn @[Ip_BlackBox.scala 606:21]
    commul.addrb <= io.read_addr @[Ip_BlackBox.scala 607:21]
    io.dataOut <= commul.doutb @[Ip_BlackBox.scala 608:21]

  extmodule Ip_Dual_Port_URAM_b_im_1 :
    input clk : Clock
    input ena : UInt<1>
    input wea : UInt<1>
    input addra : UInt<32>
    input dina : UInt<32>
    input enb : UInt<1>
    input addrb : UInt<32>
    output doutb : UInt<32>
    defname = Ip_Dual_Port_URAM_b_im_1

  module Simple_Dual_Port_b_im_blackbox_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip ena : UInt<1>, flip enb : UInt<1>, flip write_en : UInt<1>, flip read_addr : UInt<32>, flip write_addr : UInt<32>, flip dataIn : UInt<32>, dataOut : UInt<32>}

    inst commul of Ip_Dual_Port_URAM_b_im_1 @[Ip_BlackBox.scala 637:30]
    commul.doutb is invalid
    commul.addrb is invalid
    commul.enb is invalid
    commul.dina is invalid
    commul.addra is invalid
    commul.wea is invalid
    commul.ena is invalid
    commul.clk is invalid
    commul.clk <= clock @[Ip_BlackBox.scala 639:20]
    commul.ena <= io.ena @[Ip_BlackBox.scala 640:20]
    commul.enb <= io.enb @[Ip_BlackBox.scala 641:20]
    commul.wea <= io.write_en @[Ip_BlackBox.scala 644:21]
    commul.addra <= io.write_addr @[Ip_BlackBox.scala 645:21]
    commul.dina <= io.dataIn @[Ip_BlackBox.scala 646:21]
    commul.addrb <= io.read_addr @[Ip_BlackBox.scala 647:21]
    io.dataOut <= commul.doutb @[Ip_BlackBox.scala 648:21]

  module Counter_Self_Addre :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, flip cycle : UInt<32>, out : UInt<18>}

    reg cntReg : UInt<18>, clock with :
      reset => (reset, UInt<18>("h0")) @[Memory_First.scala 17:29]
    when io.en : @[Memory_First.scala 18:15]
      node _T = sub(io.cycle, UInt<1>("h1")) @[Memory_First.scala 19:31]
      node _T_1 = tail(_T, 1) @[Memory_First.scala 19:31]
      node _T_2 = eq(cntReg, _T_1) @[Memory_First.scala 19:17]
      when _T_2 : @[Memory_First.scala 19:40]
        cntReg <= UInt<1>("h0") @[Memory_First.scala 20:14]
      else :
        node _cntReg_T = add(cntReg, UInt<1>("h1")) @[Memory_First.scala 22:24]
        node _cntReg_T_1 = tail(_cntReg_T, 1) @[Memory_First.scala 22:24]
        cntReg <= _cntReg_T_1 @[Memory_First.scala 22:14]
    io.out <= cntReg @[Memory_First.scala 25:10]

  module Delayb :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<1>, out_data : UInt<1>}

    wire _reg_delay_WIRE : UInt<1>[2] @[Delay.scala 101:47]
    _reg_delay_WIRE[0] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[1] <= UInt<1>("h0") @[Delay.scala 101:47]
    reg reg_delay : UInt<1>[2], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 101:39]
    reg_delay[0] <= io.in_data @[Delay.scala 102:18]
    reg_delay[1] <= reg_delay[0] @[Delay.scala 104:20]
    node _io_out_data_T = sub(UInt<2>("h2"), UInt<1>("h1")) @[Delay.scala 106:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 106:38]
    node _io_out_data_T_2 = bits(_io_out_data_T_1, 0, 0)
    io.out_data <= reg_delay[_io_out_data_T_2] @[Delay.scala 106:17]

  module Memory_First :
    input clock : Clock
    input reset : Reset
    output io : { flip ready : UInt<1>, flip number : UInt<32>, out_data_add : { re : UInt<32>, im : UInt<32>}, out_data_sub : { re : UInt<32>, im : UInt<32>}, valid : UInt<1>}

    inst first_row_a_re of Simple_Dual_Port_a_re_blackbox_1 @[Memory_First.scala 38:30]
    first_row_a_re.clock <= clock
    first_row_a_re.reset <= reset
    inst first_row_a_im of Simple_Dual_Port_a_im_blackbox_1 @[Memory_First.scala 39:30]
    first_row_a_im.clock <= clock
    first_row_a_im.reset <= reset
    inst first_row_b_re of Simple_Dual_Port_b_re_blackbox_1 @[Memory_First.scala 40:30]
    first_row_b_re.clock <= clock
    first_row_b_re.reset <= reset
    inst first_row_b_im of Simple_Dual_Port_b_im_blackbox_1 @[Memory_First.scala 41:30]
    first_row_b_im.clock <= clock
    first_row_b_im.reset <= reset
    inst counter of Counter_Self_Addre @[Memory_First.scala 45:23]
    counter.clock <= clock
    counter.reset <= reset
    counter.io.en <= io.ready @[Memory_First.scala 47:17]
    node _counter_io_cycle_T = shr(io.number, 1) @[Memory_First.scala 48:33]
    counter.io.cycle <= _counter_io_cycle_T @[Memory_First.scala 48:20]
    first_row_a_re.io.ena <= UInt<1>("h1") @[Memory_First.scala 50:25]
    first_row_a_re.io.enb <= UInt<1>("h1") @[Memory_First.scala 51:25]
    first_row_a_re.io.write_en <= UInt<1>("h0") @[Memory_First.scala 52:30]
    first_row_a_re.io.write_addr is invalid @[Memory_First.scala 53:32]
    first_row_a_re.io.read_addr <= counter.io.out @[Memory_First.scala 54:31]
    first_row_a_re.io.dataIn is invalid @[Memory_First.scala 55:28]
    io.out_data_add.re <= first_row_a_re.io.dataOut @[Memory_First.scala 56:22]
    first_row_a_im.io.ena <= UInt<1>("h1") @[Memory_First.scala 58:25]
    first_row_a_im.io.enb <= UInt<1>("h1") @[Memory_First.scala 59:25]
    first_row_a_im.io.write_en <= UInt<1>("h0") @[Memory_First.scala 60:30]
    first_row_a_im.io.write_addr is invalid @[Memory_First.scala 61:32]
    first_row_a_im.io.read_addr <= counter.io.out @[Memory_First.scala 62:31]
    first_row_a_im.io.dataIn is invalid @[Memory_First.scala 63:28]
    io.out_data_add.im <= first_row_a_im.io.dataOut @[Memory_First.scala 64:22]
    first_row_b_re.io.ena <= UInt<1>("h1") @[Memory_First.scala 67:25]
    first_row_b_re.io.enb <= UInt<1>("h1") @[Memory_First.scala 68:25]
    first_row_b_re.io.write_en <= UInt<1>("h0") @[Memory_First.scala 69:30]
    first_row_b_re.io.write_addr is invalid @[Memory_First.scala 70:32]
    first_row_b_re.io.read_addr <= counter.io.out @[Memory_First.scala 71:31]
    first_row_b_re.io.dataIn is invalid @[Memory_First.scala 72:28]
    io.out_data_sub.re <= first_row_b_re.io.dataOut @[Memory_First.scala 73:22]
    first_row_b_im.io.ena <= UInt<1>("h1") @[Memory_First.scala 76:25]
    first_row_b_im.io.write_en <= UInt<1>("h0") @[Memory_First.scala 77:30]
    first_row_b_im.io.enb <= UInt<1>("h1") @[Memory_First.scala 78:25]
    first_row_b_im.io.write_addr is invalid @[Memory_First.scala 79:32]
    first_row_b_im.io.read_addr <= counter.io.out @[Memory_First.scala 80:31]
    first_row_b_im.io.dataIn is invalid @[Memory_First.scala 81:28]
    io.out_data_sub.im <= first_row_b_im.io.dataOut @[Memory_First.scala 82:22]
    inst io_valid_delay of Delayb @[Delay.scala 111:23]
    io_valid_delay.clock <= clock
    io_valid_delay.reset <= reset
    io_valid_delay.io.in_data <= io.ready @[Delay.scala 112:22]
    io.valid <= io_valid_delay.io.out_data @[Memory_First.scala 84:12]

  extmodule Ip_ComplexMul_blackbox_0 :
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
    defname = Ip_ComplexMul_blackbox_0

  module Ip_ComplexMul_blackbox_wrapper :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>, res : { re : UInt<32>, im : UInt<32>}}

    inst commul of Ip_ComplexMul_blackbox_0 @[Ip_BlackBox.scala 140:23]
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
    commul.aclk <= clock @[Ip_BlackBox.scala 141:18]
    commul.enA <= io.ready @[Ip_BlackBox.scala 142:17]
    commul.A_re <= io.op1.re @[Ip_BlackBox.scala 143:18]
    commul.A_im <= io.op1.im @[Ip_BlackBox.scala 144:18]
    commul.enB <= io.ready @[Ip_BlackBox.scala 145:17]
    commul.B_re <= io.op2.re @[Ip_BlackBox.scala 146:18]
    commul.B_im <= io.op2.im @[Ip_BlackBox.scala 147:18]
    io.valid <= commul.valid @[Ip_BlackBox.scala 148:12]
    io.res.re <= commul.res_re @[Ip_BlackBox.scala 149:13]
    io.res.im <= commul.res_im @[Ip_BlackBox.scala 150:13]

  extmodule FPAdd_blackbox :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPAdd_blackbox

  extmodule FPAdd_blackbox_1 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPAdd_blackbox

  module FPComplexAdd_blackbox :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, res : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>}

    inst commul_re of FPAdd_blackbox @[Ip_BlackBox.scala 39:25]
    commul_re.m_axis_result_tvalid is invalid
    commul_re.m_axis_result_tdata is invalid
    commul_re.s_axis_b_tvalid is invalid
    commul_re.s_axis_b_tdata is invalid
    commul_re.s_axis_a_tvalid is invalid
    commul_re.s_axis_a_tdata is invalid
    commul_re.aclk is invalid
    inst commul_im of FPAdd_blackbox_1 @[Ip_BlackBox.scala 40:25]
    commul_im.m_axis_result_tvalid is invalid
    commul_im.m_axis_result_tdata is invalid
    commul_im.s_axis_b_tvalid is invalid
    commul_im.s_axis_b_tdata is invalid
    commul_im.s_axis_a_tvalid is invalid
    commul_im.s_axis_a_tdata is invalid
    commul_im.aclk is invalid
    commul_im.aclk <= clock @[Ip_BlackBox.scala 42:21]
    commul_im.s_axis_a_tdata <= io.op1.im @[Ip_BlackBox.scala 43:31]
    commul_im.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 44:32]
    commul_im.s_axis_b_tdata <= io.op2.im @[Ip_BlackBox.scala 45:31]
    commul_im.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 46:32]
    io.res.im <= commul_im.m_axis_result_tdata @[Ip_BlackBox.scala 47:13]
    commul_re.aclk <= clock @[Ip_BlackBox.scala 49:21]
    commul_re.s_axis_a_tdata <= io.op1.re @[Ip_BlackBox.scala 50:31]
    commul_re.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 51:32]
    commul_re.s_axis_b_tdata <= io.op2.re @[Ip_BlackBox.scala 52:31]
    commul_re.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 53:32]
    io.res.re <= commul_re.m_axis_result_tdata @[Ip_BlackBox.scala 54:13]
    io.valid <= commul_im.m_axis_result_tvalid @[Ip_BlackBox.scala 55:12]

  extmodule FPSub_blackbox :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPSub_blackbox

  extmodule FPSub_blackbox_1 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPSub_blackbox

  module FPComplexSub_blackbox :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, res : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>}

    inst commul_re of FPSub_blackbox @[Ip_BlackBox.scala 90:25]
    commul_re.m_axis_result_tvalid is invalid
    commul_re.m_axis_result_tdata is invalid
    commul_re.s_axis_b_tvalid is invalid
    commul_re.s_axis_b_tdata is invalid
    commul_re.s_axis_a_tvalid is invalid
    commul_re.s_axis_a_tdata is invalid
    commul_re.aclk is invalid
    inst commul_im of FPSub_blackbox_1 @[Ip_BlackBox.scala 91:25]
    commul_im.m_axis_result_tvalid is invalid
    commul_im.m_axis_result_tdata is invalid
    commul_im.s_axis_b_tvalid is invalid
    commul_im.s_axis_b_tdata is invalid
    commul_im.s_axis_a_tvalid is invalid
    commul_im.s_axis_a_tdata is invalid
    commul_im.aclk is invalid
    commul_im.aclk <= clock @[Ip_BlackBox.scala 93:21]
    commul_im.s_axis_a_tdata <= io.op1.im @[Ip_BlackBox.scala 94:31]
    commul_im.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 95:32]
    commul_im.s_axis_b_tdata <= io.op2.im @[Ip_BlackBox.scala 96:31]
    commul_im.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 97:32]
    io.res.im <= commul_im.m_axis_result_tdata @[Ip_BlackBox.scala 98:13]
    commul_re.aclk <= clock @[Ip_BlackBox.scala 100:21]
    commul_re.s_axis_a_tdata <= io.op1.re @[Ip_BlackBox.scala 101:31]
    commul_re.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 102:32]
    commul_re.s_axis_b_tdata <= io.op2.re @[Ip_BlackBox.scala 103:31]
    commul_re.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 104:32]
    io.res.re <= commul_re.m_axis_result_tdata @[Ip_BlackBox.scala 105:13]
    io.valid <= commul_im.m_axis_result_tvalid @[Ip_BlackBox.scala 106:12]

  module Twiddle_Address :
    input clock : Clock
    input reset : Reset
    output io : { flip row : UInt<2>, flip ready : UInt<1>, flip counter : UInt<32>, address : UInt<32>}

    reg j : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Twiddle_Address.scala 80:18]
    reg k : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Twiddle_Address.scala 81:18]
    wire repeat : UInt<32> @[Twiddle_Address.scala 102:20]
    repeat <= UInt<1>("h0") @[Twiddle_Address.scala 103:10]
    node _T = eq(UInt<1>("h1"), io.row) @[Twiddle_Address.scala 104:17]
    when _T : @[Twiddle_Address.scala 104:17]
      repeat <= UInt<15>("h7ff9") @[Twiddle_Address.scala 106:14]
    else :
      node _T_1 = eq(UInt<2>("h2"), io.row) @[Twiddle_Address.scala 104:17]
      when _T_1 : @[Twiddle_Address.scala 104:17]
        repeat <= UInt<10>("h3ff") @[Twiddle_Address.scala 109:14]
      else :
        node _T_2 = eq(UInt<2>("h3"), io.row) @[Twiddle_Address.scala 104:17]
        when _T_2 : @[Twiddle_Address.scala 104:17]
          repeat <= UInt<5>("h1f") @[Twiddle_Address.scala 112:14]
        else :
          node _T_3 = eq(UInt<3>("h4"), io.row) @[Twiddle_Address.scala 104:17]
          when _T_3 : @[Twiddle_Address.scala 104:17]
            repeat <= UInt<1>("h0") @[Twiddle_Address.scala 115:14]
    when io.ready : @[Twiddle_Address.scala 119:18]
      node _T_4 = sub(io.counter, UInt<1>("h1")) @[Twiddle_Address.scala 120:31]
      node _T_5 = tail(_T_4, 1) @[Twiddle_Address.scala 120:31]
      node _T_6 = lt(j, _T_5) @[Twiddle_Address.scala 120:12]
      when _T_6 : @[Twiddle_Address.scala 120:36]
        node _T_7 = lt(k, repeat) @[Twiddle_Address.scala 122:13]
        when _T_7 : @[Twiddle_Address.scala 122:22]
          node _k_T = add(k, UInt<1>("h1")) @[Twiddle_Address.scala 124:16]
          node _k_T_1 = tail(_k_T, 1) @[Twiddle_Address.scala 124:16]
          k <= _k_T_1 @[Twiddle_Address.scala 124:11]
        else :
          k <= UInt<1>("h0") @[Twiddle_Address.scala 126:11]
          node _j_T = add(j, UInt<1>("h1")) @[Twiddle_Address.scala 127:16]
          node _j_T_1 = tail(_j_T, 1) @[Twiddle_Address.scala 127:16]
          j <= _j_T_1 @[Twiddle_Address.scala 127:11]
      else :
        j <= UInt<1>("h0") @[Twiddle_Address.scala 130:9]
    io.address <= j @[Twiddle_Address.scala 133:14]

  module Delay :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    wire _reg_delay_re_WIRE : UInt<32>[32] @[Delay.scala 18:50]
    _reg_delay_re_WIRE[0] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[1] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[2] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[3] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[4] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[5] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[6] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[7] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[8] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[9] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[10] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[11] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[12] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[13] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[14] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[15] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[16] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[17] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[18] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[19] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[20] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[21] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[22] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[23] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[24] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[25] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[26] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[27] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[28] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[29] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[30] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[31] <= UInt<32>("h0") @[Delay.scala 18:50]
    reg reg_delay_re : UInt<32>[32], clock with :
      reset => (reset, _reg_delay_re_WIRE) @[Delay.scala 18:42]
    wire _reg_delay_im_WIRE : UInt<32>[32] @[Delay.scala 19:50]
    _reg_delay_im_WIRE[0] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[1] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[2] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[3] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[4] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[5] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[6] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[7] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[8] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[9] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[10] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[11] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[12] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[13] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[14] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[15] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[16] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[17] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[18] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[19] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[20] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[21] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[22] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[23] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[24] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[25] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[26] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[27] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[28] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[29] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[30] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[31] <= UInt<32>("h0") @[Delay.scala 19:50]
    reg reg_delay_im : UInt<32>[32], clock with :
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
    reg_delay_re[8] <= reg_delay_re[7] @[Delay.scala 23:23]
    reg_delay_im[8] <= reg_delay_im[7] @[Delay.scala 24:23]
    reg_delay_re[9] <= reg_delay_re[8] @[Delay.scala 23:23]
    reg_delay_im[9] <= reg_delay_im[8] @[Delay.scala 24:23]
    reg_delay_re[10] <= reg_delay_re[9] @[Delay.scala 23:23]
    reg_delay_im[10] <= reg_delay_im[9] @[Delay.scala 24:23]
    reg_delay_re[11] <= reg_delay_re[10] @[Delay.scala 23:23]
    reg_delay_im[11] <= reg_delay_im[10] @[Delay.scala 24:23]
    reg_delay_re[12] <= reg_delay_re[11] @[Delay.scala 23:23]
    reg_delay_im[12] <= reg_delay_im[11] @[Delay.scala 24:23]
    reg_delay_re[13] <= reg_delay_re[12] @[Delay.scala 23:23]
    reg_delay_im[13] <= reg_delay_im[12] @[Delay.scala 24:23]
    reg_delay_re[14] <= reg_delay_re[13] @[Delay.scala 23:23]
    reg_delay_im[14] <= reg_delay_im[13] @[Delay.scala 24:23]
    reg_delay_re[15] <= reg_delay_re[14] @[Delay.scala 23:23]
    reg_delay_im[15] <= reg_delay_im[14] @[Delay.scala 24:23]
    reg_delay_re[16] <= reg_delay_re[15] @[Delay.scala 23:23]
    reg_delay_im[16] <= reg_delay_im[15] @[Delay.scala 24:23]
    reg_delay_re[17] <= reg_delay_re[16] @[Delay.scala 23:23]
    reg_delay_im[17] <= reg_delay_im[16] @[Delay.scala 24:23]
    reg_delay_re[18] <= reg_delay_re[17] @[Delay.scala 23:23]
    reg_delay_im[18] <= reg_delay_im[17] @[Delay.scala 24:23]
    reg_delay_re[19] <= reg_delay_re[18] @[Delay.scala 23:23]
    reg_delay_im[19] <= reg_delay_im[18] @[Delay.scala 24:23]
    reg_delay_re[20] <= reg_delay_re[19] @[Delay.scala 23:23]
    reg_delay_im[20] <= reg_delay_im[19] @[Delay.scala 24:23]
    reg_delay_re[21] <= reg_delay_re[20] @[Delay.scala 23:23]
    reg_delay_im[21] <= reg_delay_im[20] @[Delay.scala 24:23]
    reg_delay_re[22] <= reg_delay_re[21] @[Delay.scala 23:23]
    reg_delay_im[22] <= reg_delay_im[21] @[Delay.scala 24:23]
    reg_delay_re[23] <= reg_delay_re[22] @[Delay.scala 23:23]
    reg_delay_im[23] <= reg_delay_im[22] @[Delay.scala 24:23]
    reg_delay_re[24] <= reg_delay_re[23] @[Delay.scala 23:23]
    reg_delay_im[24] <= reg_delay_im[23] @[Delay.scala 24:23]
    reg_delay_re[25] <= reg_delay_re[24] @[Delay.scala 23:23]
    reg_delay_im[25] <= reg_delay_im[24] @[Delay.scala 24:23]
    reg_delay_re[26] <= reg_delay_re[25] @[Delay.scala 23:23]
    reg_delay_im[26] <= reg_delay_im[25] @[Delay.scala 24:23]
    reg_delay_re[27] <= reg_delay_re[26] @[Delay.scala 23:23]
    reg_delay_im[27] <= reg_delay_im[26] @[Delay.scala 24:23]
    reg_delay_re[28] <= reg_delay_re[27] @[Delay.scala 23:23]
    reg_delay_im[28] <= reg_delay_im[27] @[Delay.scala 24:23]
    reg_delay_re[29] <= reg_delay_re[28] @[Delay.scala 23:23]
    reg_delay_im[29] <= reg_delay_im[28] @[Delay.scala 24:23]
    reg_delay_re[30] <= reg_delay_re[29] @[Delay.scala 23:23]
    reg_delay_im[30] <= reg_delay_im[29] @[Delay.scala 24:23]
    reg_delay_re[31] <= reg_delay_re[30] @[Delay.scala 23:23]
    reg_delay_im[31] <= reg_delay_im[30] @[Delay.scala 24:23]
    node _io_out_data_re_T = sub(UInt<6>("h20"), UInt<1>("h1")) @[Delay.scala 26:44]
    node _io_out_data_re_T_1 = tail(_io_out_data_re_T, 1) @[Delay.scala 26:44]
    node _io_out_data_re_T_2 = bits(_io_out_data_re_T_1, 4, 0)
    io.out_data.re <= reg_delay_re[_io_out_data_re_T_2] @[Delay.scala 26:20]
    node _io_out_data_im_T = sub(UInt<6>("h20"), UInt<1>("h1")) @[Delay.scala 27:44]
    node _io_out_data_im_T_1 = tail(_io_out_data_im_T, 1) @[Delay.scala 27:44]
    node _io_out_data_im_T_2 = bits(_io_out_data_im_T_1, 4, 0)
    io.out_data.im <= reg_delay_im[_io_out_data_im_T_2] @[Delay.scala 27:20]

  module BF1_Dyn_blackbox :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data_a : { re : UInt<32>, im : UInt<32>}, flip in_data_b : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, out_data_add : { re : UInt<32>, im : UInt<32>}, out_data_mul : { re : UInt<32>, im : UInt<32>}, valid : UInt<1>}

    reg io_out_data_mul_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF1_Dyn.scala 22:32]
    io.out_data_mul.re <= io_out_data_mul_re_REG @[BF1_Dyn.scala 22:22]
    reg io_out_data_mul_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF1_Dyn.scala 23:32]
    io.out_data_mul.im <= io_out_data_mul_im_REG @[BF1_Dyn.scala 23:22]
    reg io_out_data_add_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF1_Dyn.scala 24:32]
    io.out_data_add.re <= io_out_data_add_re_REG @[BF1_Dyn.scala 24:22]
    reg io_out_data_add_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF1_Dyn.scala 25:32]
    io.out_data_add.im <= io_out_data_add_im_REG @[BF1_Dyn.scala 25:22]
    io.valid <= UInt<1>("h0") @[BF1_Dyn.scala 26:12]
    inst Mul of Ip_ComplexMul_blackbox_wrapper @[BF1_Dyn.scala 32:19]
    Mul.clock <= clock
    Mul.reset <= reset
    inst Add of FPComplexAdd_blackbox @[BF1_Dyn.scala 33:19]
    Add.clock <= clock
    Add.reset <= reset
    inst Sub of FPComplexSub_blackbox @[BF1_Dyn.scala 34:19]
    Sub.clock <= clock
    Sub.reset <= reset
    Add.io.op1.im <= io.in_data_a.im @[BF1_Dyn.scala 37:14]
    Add.io.op1.re <= io.in_data_a.re @[BF1_Dyn.scala 37:14]
    Add.io.op2.im <= io.in_data_b.im @[BF1_Dyn.scala 38:14]
    Add.io.op2.re <= io.in_data_b.re @[BF1_Dyn.scala 38:14]
    Add.io.ready <= io.ready @[BF1_Dyn.scala 39:16]
    Sub.io.op1.im <= io.in_data_a.im @[BF1_Dyn.scala 41:14]
    Sub.io.op1.re <= io.in_data_a.re @[BF1_Dyn.scala 41:14]
    Sub.io.op2.im <= io.in_data_b.im @[BF1_Dyn.scala 42:14]
    Sub.io.op2.re <= io.in_data_b.re @[BF1_Dyn.scala 42:14]
    Sub.io.ready <= io.ready @[BF1_Dyn.scala 43:16]
    wire TF_re_ROM : UInt<32>[16] @[BF1_Dyn.scala 50:26]
    TF_re_ROM[0] <= UInt<30>("h3f800000") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[1] <= UInt<30>("h3f7b14be") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[2] <= UInt<30>("h3f6c835e") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[3] <= UInt<30>("h3f54db31") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[4] <= UInt<30>("h3f3504f3") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[5] <= UInt<30>("h3f0e39da") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[6] <= UInt<30>("h3ec3ef15") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[7] <= UInt<30>("h3e47c5c2") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[8] <= UInt<1>("h0") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[9] <= UInt<32>("hbe47c5c2") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[10] <= UInt<32>("hbec3ef15") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[11] <= UInt<32>("hbf0e39da") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[12] <= UInt<32>("hbf3504f3") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[13] <= UInt<32>("hbf54db31") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[14] <= UInt<32>("hbf6c835e") @[BF1_Dyn.scala 50:26]
    TF_re_ROM[15] <= UInt<32>("hbf7b14be") @[BF1_Dyn.scala 50:26]
    wire TF_im_ROM : UInt<32>[16] @[BF1_Dyn.scala 68:26]
    TF_im_ROM[0] <= UInt<1>("h0") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[1] <= UInt<32>("hbe47c5c2") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[2] <= UInt<32>("hbec3ef15") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[3] <= UInt<32>("hbf0e39da") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[4] <= UInt<32>("hbf3504f3") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[5] <= UInt<32>("hbf54db31") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[6] <= UInt<32>("hbf6c835e") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[7] <= UInt<32>("hbf7b14be") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[8] <= UInt<32>("hbf800000") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[9] <= UInt<32>("hbf7b14be") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[10] <= UInt<32>("hbf6c835e") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[11] <= UInt<32>("hbf54db31") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[12] <= UInt<32>("hbf3504f3") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[13] <= UInt<32>("hbf0e39da") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[14] <= UInt<32>("hbec3ef15") @[BF1_Dyn.scala 68:26]
    TF_im_ROM[15] <= UInt<32>("hbe47c5c2") @[BF1_Dyn.scala 68:26]
    inst twiddle_Address_BF_4_1 of Twiddle_Address @[BF1_Dyn.scala 87:38]
    twiddle_Address_BF_4_1.clock <= clock
    twiddle_Address_BF_4_1.reset <= reset
    twiddle_Address_BF_4_1.io.row <= UInt<3>("h4") @[BF1_Dyn.scala 88:33]
    twiddle_Address_BF_4_1.io.ready <= Sub.io.valid @[BF1_Dyn.scala 89:35]
    twiddle_Address_BF_4_1.io.counter <= UInt<5>("h10") @[BF1_Dyn.scala 90:37]
    node _TF_im_reg_T = bits(twiddle_Address_BF_4_1.io.address, 3, 0)
    node _TF_re_reg_T = bits(twiddle_Address_BF_4_1.io.address, 3, 0)
    Mul.io.ready <= Sub.io.valid @[BF1_Dyn.scala 98:16]
    Mul.io.op1.im <= Sub.io.res.im @[BF1_Dyn.scala 99:14]
    Mul.io.op1.re <= Sub.io.res.re @[BF1_Dyn.scala 99:14]
    Mul.io.op2.re <= TF_re_ROM[_TF_re_reg_T] @[BF1_Dyn.scala 100:17]
    Mul.io.op2.im <= TF_im_ROM[_TF_im_reg_T] @[BF1_Dyn.scala 101:17]
    io.out_data_mul.im <= Mul.io.res.im @[BF1_Dyn.scala 102:19]
    io.out_data_mul.re <= Mul.io.res.re @[BF1_Dyn.scala 102:19]
    io.valid <= Mul.io.valid @[BF1_Dyn.scala 103:12]
    inst io_out_data_add_delay of Delay @[Delay.scala 34:23]
    io_out_data_add_delay.clock <= clock
    io_out_data_add_delay.reset <= reset
    io_out_data_add_delay.io.in_data.im <= Add.io.res.im @[Delay.scala 35:22]
    io_out_data_add_delay.io.in_data.re <= Add.io.res.re @[Delay.scala 35:22]
    io.out_data_add.im <= io_out_data_add_delay.io.out_data.im @[BF1_Dyn.scala 107:19]
    io.out_data_add.re <= io_out_data_add_delay.io.out_data.re @[BF1_Dyn.scala 107:19]

  module Divider_frequency :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, out : UInt<1>}

    reg countReg : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[shuffle.scala 17:25]
    reg toggleReg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[shuffle.scala 18:26]
    when io.en : @[shuffle.scala 20:15]
      node _T = sub(UInt<4>("h8"), UInt<1>("h1")) @[shuffle.scala 21:35]
      node _T_1 = tail(_T, 1) @[shuffle.scala 21:35]
      node _T_2 = eq(countReg, _T_1) @[shuffle.scala 21:19]
      when _T_2 : @[shuffle.scala 21:41]
        countReg <= UInt<1>("h0") @[shuffle.scala 22:16]
        node _toggleReg_T = eq(toggleReg, UInt<1>("h0")) @[shuffle.scala 23:20]
        toggleReg <= _toggleReg_T @[shuffle.scala 23:17]
      else :
        node _countReg_T = add(countReg, UInt<1>("h1")) @[shuffle.scala 25:28]
        node _countReg_T_1 = tail(_countReg_T, 1) @[shuffle.scala 25:28]
        countReg <= _countReg_T_1 @[shuffle.scala 25:16]
    io.out <= toggleReg @[shuffle.scala 29:10]

  module Delay_1 :
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

    when io.en : @[shuffle.scala 87:15]
      when io.condition : @[shuffle.scala 88:24]
        io.out_data.im <= io.in_data_1.im @[shuffle.scala 89:19]
        io.out_data.re <= io.in_data_1.re @[shuffle.scala 89:19]
      else :
        io.out_data.im <= io.in_data_2.im @[shuffle.scala 91:18]
        io.out_data.re <= io.in_data_2.re @[shuffle.scala 91:18]
    else :
      io.out_data.im is invalid @[shuffle.scala 94:17]
      io.out_data.re is invalid @[shuffle.scala 94:17]

  module Myselect_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, flip condition : UInt<1>, flip in_data_1 : { re : UInt<32>, im : UInt<32>}, flip in_data_2 : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    when io.en : @[shuffle.scala 87:15]
      when io.condition : @[shuffle.scala 88:24]
        io.out_data.im <= io.in_data_1.im @[shuffle.scala 89:19]
        io.out_data.re <= io.in_data_1.re @[shuffle.scala 89:19]
      else :
        io.out_data.im <= io.in_data_2.im @[shuffle.scala 91:18]
        io.out_data.re <= io.in_data_2.re @[shuffle.scala 91:18]
    else :
      io.out_data.im is invalid @[shuffle.scala 94:17]
      io.out_data.re is invalid @[shuffle.scala 94:17]

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

  module Delayb_1 :
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
    input reset : Reset
    output io : { flip in_data_add : { re : UInt<32>, im : UInt<32>}, flip in_data_mul : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>, out_delay_data_add : { re : UInt<32>, im : UInt<32>}, out_delay_data_mul : { re : UInt<32>, im : UInt<32>}}

    reg io_out_delay_data_mul_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 111:38]
    io.out_delay_data_mul.re <= io_out_delay_data_mul_re_REG @[shuffle.scala 111:28]
    reg io_out_delay_data_mul_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 112:38]
    io.out_delay_data_mul.im <= io_out_delay_data_mul_im_REG @[shuffle.scala 112:28]
    reg io_out_delay_data_add_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 113:38]
    io.out_delay_data_add.re <= io_out_delay_data_add_re_REG @[shuffle.scala 113:28]
    reg io_out_delay_data_add_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 114:38]
    io.out_delay_data_add.im <= io_out_delay_data_add_im_REG @[shuffle.scala 114:28]
    inst condition_div of Divider_frequency @[shuffle.scala 66:21]
    condition_div.clock <= clock
    condition_div.reset <= reset
    condition_div.io.en <= io.ready @[shuffle.scala 67:15]
    inst mul_delay_delay of Delay_1 @[Delay.scala 34:23]
    mul_delay_delay.clock <= clock
    mul_delay_delay.reset <= reset
    mul_delay_delay.io.in_data.im <= io.in_data_mul.im @[Delay.scala 35:22]
    mul_delay_delay.io.in_data.re <= io.in_data_mul.re @[Delay.scala 35:22]
    inst mux_add of Myselect @[shuffle.scala 120:23]
    mux_add.clock <= clock
    mux_add.reset <= reset
    inst mux_mul of Myselect_1 @[shuffle.scala 121:23]
    mux_mul.clock <= clock
    mux_mul.reset <= reset
    mux_add.io.condition <= condition_div.io.out @[shuffle.scala 123:24]
    mux_add.io.in_data_1.im <= mul_delay_delay.io.out_data.im @[shuffle.scala 124:24]
    mux_add.io.in_data_1.re <= mul_delay_delay.io.out_data.re @[shuffle.scala 124:24]
    mux_add.io.in_data_2.im <= io.in_data_add.im @[shuffle.scala 125:24]
    mux_add.io.in_data_2.re <= io.in_data_add.re @[shuffle.scala 125:24]
    mux_add.io.en <= io.ready @[shuffle.scala 126:17]
    mux_mul.io.condition <= condition_div.io.out @[shuffle.scala 128:24]
    mux_mul.io.in_data_1.im <= io.in_data_add.im @[shuffle.scala 129:24]
    mux_mul.io.in_data_1.re <= io.in_data_add.re @[shuffle.scala 129:24]
    mux_mul.io.in_data_2.im <= mul_delay_delay.io.out_data.im @[shuffle.scala 130:24]
    mux_mul.io.in_data_2.re <= mul_delay_delay.io.out_data.re @[shuffle.scala 130:24]
    mux_mul.io.en <= io.ready @[shuffle.scala 131:17]
    inst io_out_delay_data_add_re_delay of Delayu @[Delay.scala 60:23]
    io_out_delay_data_add_re_delay.clock <= clock
    io_out_delay_data_add_re_delay.reset <= reset
    io_out_delay_data_add_re_delay.io.in_data <= mux_add.io.out_data.re @[Delay.scala 61:22]
    io.out_delay_data_add.re <= io_out_delay_data_add_re_delay.io.out_data @[shuffle.scala 133:28]
    inst io_out_delay_data_add_im_delay of Delayu_1 @[Delay.scala 60:23]
    io_out_delay_data_add_im_delay.clock <= clock
    io_out_delay_data_add_im_delay.reset <= reset
    io_out_delay_data_add_im_delay.io.in_data <= mux_add.io.out_data.im @[Delay.scala 61:22]
    io.out_delay_data_add.im <= io_out_delay_data_add_im_delay.io.out_data @[shuffle.scala 134:28]
    io.out_delay_data_mul.im <= mux_mul.io.out_data.im @[shuffle.scala 135:25]
    io.out_delay_data_mul.re <= mux_mul.io.out_data.re @[shuffle.scala 135:25]
    inst io_valid_delay of Delayb_1 @[Delay.scala 111:23]
    io_valid_delay.clock <= clock
    io_valid_delay.reset <= reset
    io_valid_delay.io.in_data <= io.ready @[Delay.scala 112:22]
    io.valid <= io_valid_delay.io.out_data @[shuffle.scala 138:12]

  extmodule Ip_ComplexMul_blackbox_0_1 :
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
    defname = Ip_ComplexMul_blackbox_0

  module Ip_ComplexMul_blackbox_wrapper_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>, res : { re : UInt<32>, im : UInt<32>}}

    inst commul of Ip_ComplexMul_blackbox_0_1 @[Ip_BlackBox.scala 140:23]
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
    commul.aclk <= clock @[Ip_BlackBox.scala 141:18]
    commul.enA <= io.ready @[Ip_BlackBox.scala 142:17]
    commul.A_re <= io.op1.re @[Ip_BlackBox.scala 143:18]
    commul.A_im <= io.op1.im @[Ip_BlackBox.scala 144:18]
    commul.enB <= io.ready @[Ip_BlackBox.scala 145:17]
    commul.B_re <= io.op2.re @[Ip_BlackBox.scala 146:18]
    commul.B_im <= io.op2.im @[Ip_BlackBox.scala 147:18]
    io.valid <= commul.valid @[Ip_BlackBox.scala 148:12]
    io.res.re <= commul.res_re @[Ip_BlackBox.scala 149:13]
    io.res.im <= commul.res_im @[Ip_BlackBox.scala 150:13]

  extmodule FPAdd_blackbox_2 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPAdd_blackbox

  extmodule FPAdd_blackbox_3 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPAdd_blackbox

  module FPComplexAdd_blackbox_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, res : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>}

    inst commul_re of FPAdd_blackbox_2 @[Ip_BlackBox.scala 39:25]
    commul_re.m_axis_result_tvalid is invalid
    commul_re.m_axis_result_tdata is invalid
    commul_re.s_axis_b_tvalid is invalid
    commul_re.s_axis_b_tdata is invalid
    commul_re.s_axis_a_tvalid is invalid
    commul_re.s_axis_a_tdata is invalid
    commul_re.aclk is invalid
    inst commul_im of FPAdd_blackbox_3 @[Ip_BlackBox.scala 40:25]
    commul_im.m_axis_result_tvalid is invalid
    commul_im.m_axis_result_tdata is invalid
    commul_im.s_axis_b_tvalid is invalid
    commul_im.s_axis_b_tdata is invalid
    commul_im.s_axis_a_tvalid is invalid
    commul_im.s_axis_a_tdata is invalid
    commul_im.aclk is invalid
    commul_im.aclk <= clock @[Ip_BlackBox.scala 42:21]
    commul_im.s_axis_a_tdata <= io.op1.im @[Ip_BlackBox.scala 43:31]
    commul_im.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 44:32]
    commul_im.s_axis_b_tdata <= io.op2.im @[Ip_BlackBox.scala 45:31]
    commul_im.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 46:32]
    io.res.im <= commul_im.m_axis_result_tdata @[Ip_BlackBox.scala 47:13]
    commul_re.aclk <= clock @[Ip_BlackBox.scala 49:21]
    commul_re.s_axis_a_tdata <= io.op1.re @[Ip_BlackBox.scala 50:31]
    commul_re.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 51:32]
    commul_re.s_axis_b_tdata <= io.op2.re @[Ip_BlackBox.scala 52:31]
    commul_re.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 53:32]
    io.res.re <= commul_re.m_axis_result_tdata @[Ip_BlackBox.scala 54:13]
    io.valid <= commul_im.m_axis_result_tvalid @[Ip_BlackBox.scala 55:12]

  extmodule FPSub_blackbox_2 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPSub_blackbox

  extmodule FPSub_blackbox_3 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPSub_blackbox

  module FPComplexSub_blackbox_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, res : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>}

    inst commul_re of FPSub_blackbox_2 @[Ip_BlackBox.scala 90:25]
    commul_re.m_axis_result_tvalid is invalid
    commul_re.m_axis_result_tdata is invalid
    commul_re.s_axis_b_tvalid is invalid
    commul_re.s_axis_b_tdata is invalid
    commul_re.s_axis_a_tvalid is invalid
    commul_re.s_axis_a_tdata is invalid
    commul_re.aclk is invalid
    inst commul_im of FPSub_blackbox_3 @[Ip_BlackBox.scala 91:25]
    commul_im.m_axis_result_tvalid is invalid
    commul_im.m_axis_result_tdata is invalid
    commul_im.s_axis_b_tvalid is invalid
    commul_im.s_axis_b_tdata is invalid
    commul_im.s_axis_a_tvalid is invalid
    commul_im.s_axis_a_tdata is invalid
    commul_im.aclk is invalid
    commul_im.aclk <= clock @[Ip_BlackBox.scala 93:21]
    commul_im.s_axis_a_tdata <= io.op1.im @[Ip_BlackBox.scala 94:31]
    commul_im.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 95:32]
    commul_im.s_axis_b_tdata <= io.op2.im @[Ip_BlackBox.scala 96:31]
    commul_im.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 97:32]
    io.res.im <= commul_im.m_axis_result_tdata @[Ip_BlackBox.scala 98:13]
    commul_re.aclk <= clock @[Ip_BlackBox.scala 100:21]
    commul_re.s_axis_a_tdata <= io.op1.re @[Ip_BlackBox.scala 101:31]
    commul_re.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 102:32]
    commul_re.s_axis_b_tdata <= io.op2.re @[Ip_BlackBox.scala 103:31]
    commul_re.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 104:32]
    io.res.re <= commul_re.m_axis_result_tdata @[Ip_BlackBox.scala 105:13]
    io.valid <= commul_im.m_axis_result_tvalid @[Ip_BlackBox.scala 106:12]

  module Twiddle_Address_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip row : UInt<2>, flip ready : UInt<1>, flip counter : UInt<32>, address : UInt<32>}

    reg j : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Twiddle_Address.scala 80:18]
    reg k : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Twiddle_Address.scala 81:18]
    wire repeat : UInt<32> @[Twiddle_Address.scala 102:20]
    repeat <= UInt<1>("h0") @[Twiddle_Address.scala 103:10]
    node _T = eq(UInt<1>("h1"), io.row) @[Twiddle_Address.scala 104:17]
    when _T : @[Twiddle_Address.scala 104:17]
      repeat <= UInt<15>("h7ff9") @[Twiddle_Address.scala 106:14]
    else :
      node _T_1 = eq(UInt<2>("h2"), io.row) @[Twiddle_Address.scala 104:17]
      when _T_1 : @[Twiddle_Address.scala 104:17]
        repeat <= UInt<10>("h3ff") @[Twiddle_Address.scala 109:14]
      else :
        node _T_2 = eq(UInt<2>("h3"), io.row) @[Twiddle_Address.scala 104:17]
        when _T_2 : @[Twiddle_Address.scala 104:17]
          repeat <= UInt<5>("h1f") @[Twiddle_Address.scala 112:14]
        else :
          node _T_3 = eq(UInt<3>("h4"), io.row) @[Twiddle_Address.scala 104:17]
          when _T_3 : @[Twiddle_Address.scala 104:17]
            repeat <= UInt<1>("h0") @[Twiddle_Address.scala 115:14]
    when io.ready : @[Twiddle_Address.scala 119:18]
      node _T_4 = sub(io.counter, UInt<1>("h1")) @[Twiddle_Address.scala 120:31]
      node _T_5 = tail(_T_4, 1) @[Twiddle_Address.scala 120:31]
      node _T_6 = lt(j, _T_5) @[Twiddle_Address.scala 120:12]
      when _T_6 : @[Twiddle_Address.scala 120:36]
        node _T_7 = lt(k, repeat) @[Twiddle_Address.scala 122:13]
        when _T_7 : @[Twiddle_Address.scala 122:22]
          node _k_T = add(k, UInt<1>("h1")) @[Twiddle_Address.scala 124:16]
          node _k_T_1 = tail(_k_T, 1) @[Twiddle_Address.scala 124:16]
          k <= _k_T_1 @[Twiddle_Address.scala 124:11]
        else :
          k <= UInt<1>("h0") @[Twiddle_Address.scala 126:11]
          node _j_T = add(j, UInt<1>("h1")) @[Twiddle_Address.scala 127:16]
          node _j_T_1 = tail(_j_T, 1) @[Twiddle_Address.scala 127:16]
          j <= _j_T_1 @[Twiddle_Address.scala 127:11]
      else :
        j <= UInt<1>("h0") @[Twiddle_Address.scala 130:9]
    io.address <= j @[Twiddle_Address.scala 133:14]

  module Delay_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    wire _reg_delay_re_WIRE : UInt<32>[32] @[Delay.scala 18:50]
    _reg_delay_re_WIRE[0] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[1] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[2] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[3] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[4] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[5] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[6] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[7] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[8] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[9] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[10] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[11] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[12] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[13] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[14] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[15] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[16] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[17] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[18] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[19] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[20] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[21] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[22] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[23] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[24] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[25] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[26] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[27] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[28] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[29] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[30] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[31] <= UInt<32>("h0") @[Delay.scala 18:50]
    reg reg_delay_re : UInt<32>[32], clock with :
      reset => (reset, _reg_delay_re_WIRE) @[Delay.scala 18:42]
    wire _reg_delay_im_WIRE : UInt<32>[32] @[Delay.scala 19:50]
    _reg_delay_im_WIRE[0] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[1] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[2] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[3] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[4] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[5] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[6] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[7] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[8] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[9] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[10] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[11] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[12] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[13] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[14] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[15] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[16] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[17] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[18] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[19] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[20] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[21] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[22] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[23] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[24] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[25] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[26] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[27] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[28] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[29] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[30] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[31] <= UInt<32>("h0") @[Delay.scala 19:50]
    reg reg_delay_im : UInt<32>[32], clock with :
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
    reg_delay_re[8] <= reg_delay_re[7] @[Delay.scala 23:23]
    reg_delay_im[8] <= reg_delay_im[7] @[Delay.scala 24:23]
    reg_delay_re[9] <= reg_delay_re[8] @[Delay.scala 23:23]
    reg_delay_im[9] <= reg_delay_im[8] @[Delay.scala 24:23]
    reg_delay_re[10] <= reg_delay_re[9] @[Delay.scala 23:23]
    reg_delay_im[10] <= reg_delay_im[9] @[Delay.scala 24:23]
    reg_delay_re[11] <= reg_delay_re[10] @[Delay.scala 23:23]
    reg_delay_im[11] <= reg_delay_im[10] @[Delay.scala 24:23]
    reg_delay_re[12] <= reg_delay_re[11] @[Delay.scala 23:23]
    reg_delay_im[12] <= reg_delay_im[11] @[Delay.scala 24:23]
    reg_delay_re[13] <= reg_delay_re[12] @[Delay.scala 23:23]
    reg_delay_im[13] <= reg_delay_im[12] @[Delay.scala 24:23]
    reg_delay_re[14] <= reg_delay_re[13] @[Delay.scala 23:23]
    reg_delay_im[14] <= reg_delay_im[13] @[Delay.scala 24:23]
    reg_delay_re[15] <= reg_delay_re[14] @[Delay.scala 23:23]
    reg_delay_im[15] <= reg_delay_im[14] @[Delay.scala 24:23]
    reg_delay_re[16] <= reg_delay_re[15] @[Delay.scala 23:23]
    reg_delay_im[16] <= reg_delay_im[15] @[Delay.scala 24:23]
    reg_delay_re[17] <= reg_delay_re[16] @[Delay.scala 23:23]
    reg_delay_im[17] <= reg_delay_im[16] @[Delay.scala 24:23]
    reg_delay_re[18] <= reg_delay_re[17] @[Delay.scala 23:23]
    reg_delay_im[18] <= reg_delay_im[17] @[Delay.scala 24:23]
    reg_delay_re[19] <= reg_delay_re[18] @[Delay.scala 23:23]
    reg_delay_im[19] <= reg_delay_im[18] @[Delay.scala 24:23]
    reg_delay_re[20] <= reg_delay_re[19] @[Delay.scala 23:23]
    reg_delay_im[20] <= reg_delay_im[19] @[Delay.scala 24:23]
    reg_delay_re[21] <= reg_delay_re[20] @[Delay.scala 23:23]
    reg_delay_im[21] <= reg_delay_im[20] @[Delay.scala 24:23]
    reg_delay_re[22] <= reg_delay_re[21] @[Delay.scala 23:23]
    reg_delay_im[22] <= reg_delay_im[21] @[Delay.scala 24:23]
    reg_delay_re[23] <= reg_delay_re[22] @[Delay.scala 23:23]
    reg_delay_im[23] <= reg_delay_im[22] @[Delay.scala 24:23]
    reg_delay_re[24] <= reg_delay_re[23] @[Delay.scala 23:23]
    reg_delay_im[24] <= reg_delay_im[23] @[Delay.scala 24:23]
    reg_delay_re[25] <= reg_delay_re[24] @[Delay.scala 23:23]
    reg_delay_im[25] <= reg_delay_im[24] @[Delay.scala 24:23]
    reg_delay_re[26] <= reg_delay_re[25] @[Delay.scala 23:23]
    reg_delay_im[26] <= reg_delay_im[25] @[Delay.scala 24:23]
    reg_delay_re[27] <= reg_delay_re[26] @[Delay.scala 23:23]
    reg_delay_im[27] <= reg_delay_im[26] @[Delay.scala 24:23]
    reg_delay_re[28] <= reg_delay_re[27] @[Delay.scala 23:23]
    reg_delay_im[28] <= reg_delay_im[27] @[Delay.scala 24:23]
    reg_delay_re[29] <= reg_delay_re[28] @[Delay.scala 23:23]
    reg_delay_im[29] <= reg_delay_im[28] @[Delay.scala 24:23]
    reg_delay_re[30] <= reg_delay_re[29] @[Delay.scala 23:23]
    reg_delay_im[30] <= reg_delay_im[29] @[Delay.scala 24:23]
    reg_delay_re[31] <= reg_delay_re[30] @[Delay.scala 23:23]
    reg_delay_im[31] <= reg_delay_im[30] @[Delay.scala 24:23]
    node _io_out_data_re_T = sub(UInt<6>("h20"), UInt<1>("h1")) @[Delay.scala 26:44]
    node _io_out_data_re_T_1 = tail(_io_out_data_re_T, 1) @[Delay.scala 26:44]
    node _io_out_data_re_T_2 = bits(_io_out_data_re_T_1, 4, 0)
    io.out_data.re <= reg_delay_re[_io_out_data_re_T_2] @[Delay.scala 26:20]
    node _io_out_data_im_T = sub(UInt<6>("h20"), UInt<1>("h1")) @[Delay.scala 27:44]
    node _io_out_data_im_T_1 = tail(_io_out_data_im_T, 1) @[Delay.scala 27:44]
    node _io_out_data_im_T_2 = bits(_io_out_data_im_T_1, 4, 0)
    io.out_data.im <= reg_delay_im[_io_out_data_im_T_2] @[Delay.scala 27:20]

  module BF2_Dyn_blackbox :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data_a : { re : UInt<32>, im : UInt<32>}, flip in_data_b : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, out_data_add : { re : UInt<32>, im : UInt<32>}, out_data_mul : { re : UInt<32>, im : UInt<32>}, valid : UInt<1>}

    reg io_out_data_mul_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF2_Dyn.scala 22:32]
    io.out_data_mul.re <= io_out_data_mul_re_REG @[BF2_Dyn.scala 22:22]
    reg io_out_data_mul_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF2_Dyn.scala 23:32]
    io.out_data_mul.im <= io_out_data_mul_im_REG @[BF2_Dyn.scala 23:22]
    reg io_out_data_add_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF2_Dyn.scala 24:32]
    io.out_data_add.re <= io_out_data_add_re_REG @[BF2_Dyn.scala 24:22]
    reg io_out_data_add_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF2_Dyn.scala 25:32]
    io.out_data_add.im <= io_out_data_add_im_REG @[BF2_Dyn.scala 25:22]
    io.valid <= UInt<1>("h0") @[BF2_Dyn.scala 26:12]
    inst Mul of Ip_ComplexMul_blackbox_wrapper_1 @[BF2_Dyn.scala 32:19]
    Mul.clock <= clock
    Mul.reset <= reset
    inst Add of FPComplexAdd_blackbox_1 @[BF2_Dyn.scala 33:19]
    Add.clock <= clock
    Add.reset <= reset
    inst Sub of FPComplexSub_blackbox_1 @[BF2_Dyn.scala 34:19]
    Sub.clock <= clock
    Sub.reset <= reset
    Add.io.op1.im <= io.in_data_a.im @[BF2_Dyn.scala 37:14]
    Add.io.op1.re <= io.in_data_a.re @[BF2_Dyn.scala 37:14]
    Add.io.op2.im <= io.in_data_b.im @[BF2_Dyn.scala 38:14]
    Add.io.op2.re <= io.in_data_b.re @[BF2_Dyn.scala 38:14]
    Add.io.ready <= io.ready @[BF2_Dyn.scala 39:16]
    Sub.io.op1.im <= io.in_data_a.im @[BF2_Dyn.scala 41:14]
    Sub.io.op1.re <= io.in_data_a.re @[BF2_Dyn.scala 41:14]
    Sub.io.op2.im <= io.in_data_b.im @[BF2_Dyn.scala 42:14]
    Sub.io.op2.re <= io.in_data_b.re @[BF2_Dyn.scala 42:14]
    Sub.io.ready <= io.ready @[BF2_Dyn.scala 43:16]
    wire TF_re_ROM : UInt<32>[8] @[BF2_Dyn.scala 50:26]
    TF_re_ROM[0] <= UInt<30>("h3f800000") @[BF2_Dyn.scala 50:26]
    TF_re_ROM[1] <= UInt<30>("h3f6c835e") @[BF2_Dyn.scala 50:26]
    TF_re_ROM[2] <= UInt<30>("h3f3504f3") @[BF2_Dyn.scala 50:26]
    TF_re_ROM[3] <= UInt<30>("h3ec3ef15") @[BF2_Dyn.scala 50:26]
    TF_re_ROM[4] <= UInt<1>("h0") @[BF2_Dyn.scala 50:26]
    TF_re_ROM[5] <= UInt<32>("hbec3ef15") @[BF2_Dyn.scala 50:26]
    TF_re_ROM[6] <= UInt<32>("hbf3504f3") @[BF2_Dyn.scala 50:26]
    TF_re_ROM[7] <= UInt<32>("hbf6c835e") @[BF2_Dyn.scala 50:26]
    wire TF_im_ROM : UInt<32>[8] @[BF2_Dyn.scala 60:26]
    TF_im_ROM[0] <= UInt<1>("h0") @[BF2_Dyn.scala 60:26]
    TF_im_ROM[1] <= UInt<32>("hbec3ef15") @[BF2_Dyn.scala 60:26]
    TF_im_ROM[2] <= UInt<32>("hbf3504f3") @[BF2_Dyn.scala 60:26]
    TF_im_ROM[3] <= UInt<32>("hbf6c835e") @[BF2_Dyn.scala 60:26]
    TF_im_ROM[4] <= UInt<32>("hbf800000") @[BF2_Dyn.scala 60:26]
    TF_im_ROM[5] <= UInt<32>("hbf6c835e") @[BF2_Dyn.scala 60:26]
    TF_im_ROM[6] <= UInt<32>("hbf3504f3") @[BF2_Dyn.scala 60:26]
    TF_im_ROM[7] <= UInt<32>("hbec3ef15") @[BF2_Dyn.scala 60:26]
    inst twiddle_Address_BF_4_2 of Twiddle_Address_1 @[BF2_Dyn.scala 71:38]
    twiddle_Address_BF_4_2.clock <= clock
    twiddle_Address_BF_4_2.reset <= reset
    twiddle_Address_BF_4_2.io.row <= UInt<3>("h4") @[BF2_Dyn.scala 72:33]
    twiddle_Address_BF_4_2.io.ready <= Sub.io.valid @[BF2_Dyn.scala 73:35]
    twiddle_Address_BF_4_2.io.counter <= UInt<4>("h8") @[BF2_Dyn.scala 74:37]
    node _TF_im_reg_T = bits(twiddle_Address_BF_4_2.io.address, 2, 0)
    node _TF_re_reg_T = bits(twiddle_Address_BF_4_2.io.address, 2, 0)
    Mul.io.ready <= Sub.io.valid @[BF2_Dyn.scala 82:16]
    Mul.io.op1.im <= Sub.io.res.im @[BF2_Dyn.scala 83:14]
    Mul.io.op1.re <= Sub.io.res.re @[BF2_Dyn.scala 83:14]
    Mul.io.op2.re <= TF_re_ROM[_TF_re_reg_T] @[BF2_Dyn.scala 84:17]
    Mul.io.op2.im <= TF_im_ROM[_TF_im_reg_T] @[BF2_Dyn.scala 85:17]
    io.out_data_mul.im <= Mul.io.res.im @[BF2_Dyn.scala 86:19]
    io.out_data_mul.re <= Mul.io.res.re @[BF2_Dyn.scala 86:19]
    io.valid <= Mul.io.valid @[BF2_Dyn.scala 87:12]
    inst io_out_data_add_delay of Delay_2 @[Delay.scala 34:23]
    io_out_data_add_delay.clock <= clock
    io_out_data_add_delay.reset <= reset
    io_out_data_add_delay.io.in_data.im <= Add.io.res.im @[Delay.scala 35:22]
    io_out_data_add_delay.io.in_data.re <= Add.io.res.re @[Delay.scala 35:22]
    io.out_data_add.im <= io_out_data_add_delay.io.out_data.im @[BF2_Dyn.scala 91:19]
    io.out_data_add.re <= io_out_data_add_delay.io.out_data.re @[BF2_Dyn.scala 91:19]

  module Divider_frequency_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, out : UInt<1>}

    reg countReg : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[shuffle.scala 17:25]
    reg toggleReg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[shuffle.scala 18:26]
    when io.en : @[shuffle.scala 20:15]
      node _T = sub(UInt<3>("h4"), UInt<1>("h1")) @[shuffle.scala 21:35]
      node _T_1 = tail(_T, 1) @[shuffle.scala 21:35]
      node _T_2 = eq(countReg, _T_1) @[shuffle.scala 21:19]
      when _T_2 : @[shuffle.scala 21:41]
        countReg <= UInt<1>("h0") @[shuffle.scala 22:16]
        node _toggleReg_T = eq(toggleReg, UInt<1>("h0")) @[shuffle.scala 23:20]
        toggleReg <= _toggleReg_T @[shuffle.scala 23:17]
      else :
        node _countReg_T = add(countReg, UInt<1>("h1")) @[shuffle.scala 25:28]
        node _countReg_T_1 = tail(_countReg_T, 1) @[shuffle.scala 25:28]
        countReg <= _countReg_T_1 @[shuffle.scala 25:16]
    io.out <= toggleReg @[shuffle.scala 29:10]

  module Delay_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    wire _reg_delay_re_WIRE : UInt<32>[4] @[Delay.scala 18:50]
    _reg_delay_re_WIRE[0] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[1] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[2] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[3] <= UInt<32>("h0") @[Delay.scala 18:50]
    reg reg_delay_re : UInt<32>[4], clock with :
      reset => (reset, _reg_delay_re_WIRE) @[Delay.scala 18:42]
    wire _reg_delay_im_WIRE : UInt<32>[4] @[Delay.scala 19:50]
    _reg_delay_im_WIRE[0] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[1] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[2] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[3] <= UInt<32>("h0") @[Delay.scala 19:50]
    reg reg_delay_im : UInt<32>[4], clock with :
      reset => (reset, _reg_delay_im_WIRE) @[Delay.scala 19:42]
    reg_delay_re[0] <= io.in_data.re @[Delay.scala 20:21]
    reg_delay_im[0] <= io.in_data.im @[Delay.scala 21:21]
    reg_delay_re[1] <= reg_delay_re[0] @[Delay.scala 23:23]
    reg_delay_im[1] <= reg_delay_im[0] @[Delay.scala 24:23]
    reg_delay_re[2] <= reg_delay_re[1] @[Delay.scala 23:23]
    reg_delay_im[2] <= reg_delay_im[1] @[Delay.scala 24:23]
    reg_delay_re[3] <= reg_delay_re[2] @[Delay.scala 23:23]
    reg_delay_im[3] <= reg_delay_im[2] @[Delay.scala 24:23]
    node _io_out_data_re_T = sub(UInt<3>("h4"), UInt<1>("h1")) @[Delay.scala 26:44]
    node _io_out_data_re_T_1 = tail(_io_out_data_re_T, 1) @[Delay.scala 26:44]
    node _io_out_data_re_T_2 = bits(_io_out_data_re_T_1, 1, 0)
    io.out_data.re <= reg_delay_re[_io_out_data_re_T_2] @[Delay.scala 26:20]
    node _io_out_data_im_T = sub(UInt<3>("h4"), UInt<1>("h1")) @[Delay.scala 27:44]
    node _io_out_data_im_T_1 = tail(_io_out_data_im_T, 1) @[Delay.scala 27:44]
    node _io_out_data_im_T_2 = bits(_io_out_data_im_T_1, 1, 0)
    io.out_data.im <= reg_delay_im[_io_out_data_im_T_2] @[Delay.scala 27:20]

  module Myselect_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, flip condition : UInt<1>, flip in_data_1 : { re : UInt<32>, im : UInt<32>}, flip in_data_2 : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    when io.en : @[shuffle.scala 87:15]
      when io.condition : @[shuffle.scala 88:24]
        io.out_data.im <= io.in_data_1.im @[shuffle.scala 89:19]
        io.out_data.re <= io.in_data_1.re @[shuffle.scala 89:19]
      else :
        io.out_data.im <= io.in_data_2.im @[shuffle.scala 91:18]
        io.out_data.re <= io.in_data_2.re @[shuffle.scala 91:18]
    else :
      io.out_data.im is invalid @[shuffle.scala 94:17]
      io.out_data.re is invalid @[shuffle.scala 94:17]

  module Myselect_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, flip condition : UInt<1>, flip in_data_1 : { re : UInt<32>, im : UInt<32>}, flip in_data_2 : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    when io.en : @[shuffle.scala 87:15]
      when io.condition : @[shuffle.scala 88:24]
        io.out_data.im <= io.in_data_1.im @[shuffle.scala 89:19]
        io.out_data.re <= io.in_data_1.re @[shuffle.scala 89:19]
      else :
        io.out_data.im <= io.in_data_2.im @[shuffle.scala 91:18]
        io.out_data.re <= io.in_data_2.re @[shuffle.scala 91:18]
    else :
      io.out_data.im is invalid @[shuffle.scala 94:17]
      io.out_data.re is invalid @[shuffle.scala 94:17]

  module Delayu_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<32>, out_data : UInt<32>}

    wire _reg_delay_WIRE : UInt<32>[4] @[Delay.scala 50:47]
    _reg_delay_WIRE[0] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[1] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[2] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[3] <= UInt<32>("h0") @[Delay.scala 50:47]
    reg reg_delay : UInt<32>[4], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 50:39]
    reg_delay[0] <= io.in_data @[Delay.scala 51:18]
    reg_delay[1] <= reg_delay[0] @[Delay.scala 53:20]
    reg_delay[2] <= reg_delay[1] @[Delay.scala 53:20]
    reg_delay[3] <= reg_delay[2] @[Delay.scala 53:20]
    node _io_out_data_T = sub(UInt<3>("h4"), UInt<1>("h1")) @[Delay.scala 55:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 55:38]
    node _io_out_data_T_2 = bits(_io_out_data_T_1, 1, 0)
    io.out_data <= reg_delay[_io_out_data_T_2] @[Delay.scala 55:17]

  module Delayu_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<32>, out_data : UInt<32>}

    wire _reg_delay_WIRE : UInt<32>[4] @[Delay.scala 50:47]
    _reg_delay_WIRE[0] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[1] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[2] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[3] <= UInt<32>("h0") @[Delay.scala 50:47]
    reg reg_delay : UInt<32>[4], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 50:39]
    reg_delay[0] <= io.in_data @[Delay.scala 51:18]
    reg_delay[1] <= reg_delay[0] @[Delay.scala 53:20]
    reg_delay[2] <= reg_delay[1] @[Delay.scala 53:20]
    reg_delay[3] <= reg_delay[2] @[Delay.scala 53:20]
    node _io_out_data_T = sub(UInt<3>("h4"), UInt<1>("h1")) @[Delay.scala 55:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 55:38]
    node _io_out_data_T_2 = bits(_io_out_data_T_1, 1, 0)
    io.out_data <= reg_delay[_io_out_data_T_2] @[Delay.scala 55:17]

  module Delayb_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<1>, out_data : UInt<1>}

    wire _reg_delay_WIRE : UInt<1>[4] @[Delay.scala 101:47]
    _reg_delay_WIRE[0] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[1] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[2] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[3] <= UInt<1>("h0") @[Delay.scala 101:47]
    reg reg_delay : UInt<1>[4], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 101:39]
    reg_delay[0] <= io.in_data @[Delay.scala 102:18]
    reg_delay[1] <= reg_delay[0] @[Delay.scala 104:20]
    reg_delay[2] <= reg_delay[1] @[Delay.scala 104:20]
    reg_delay[3] <= reg_delay[2] @[Delay.scala 104:20]
    node _io_out_data_T = sub(UInt<3>("h4"), UInt<1>("h1")) @[Delay.scala 106:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 106:38]
    node _io_out_data_T_2 = bits(_io_out_data_T_1, 1, 0)
    io.out_data <= reg_delay[_io_out_data_T_2] @[Delay.scala 106:17]

  module shuffle_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data_add : { re : UInt<32>, im : UInt<32>}, flip in_data_mul : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>, out_delay_data_add : { re : UInt<32>, im : UInt<32>}, out_delay_data_mul : { re : UInt<32>, im : UInt<32>}}

    reg io_out_delay_data_mul_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 111:38]
    io.out_delay_data_mul.re <= io_out_delay_data_mul_re_REG @[shuffle.scala 111:28]
    reg io_out_delay_data_mul_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 112:38]
    io.out_delay_data_mul.im <= io_out_delay_data_mul_im_REG @[shuffle.scala 112:28]
    reg io_out_delay_data_add_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 113:38]
    io.out_delay_data_add.re <= io_out_delay_data_add_re_REG @[shuffle.scala 113:28]
    reg io_out_delay_data_add_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 114:38]
    io.out_delay_data_add.im <= io_out_delay_data_add_im_REG @[shuffle.scala 114:28]
    inst condition_div of Divider_frequency_1 @[shuffle.scala 66:21]
    condition_div.clock <= clock
    condition_div.reset <= reset
    condition_div.io.en <= io.ready @[shuffle.scala 67:15]
    inst mul_delay_delay of Delay_3 @[Delay.scala 34:23]
    mul_delay_delay.clock <= clock
    mul_delay_delay.reset <= reset
    mul_delay_delay.io.in_data.im <= io.in_data_mul.im @[Delay.scala 35:22]
    mul_delay_delay.io.in_data.re <= io.in_data_mul.re @[Delay.scala 35:22]
    inst mux_add of Myselect_2 @[shuffle.scala 120:23]
    mux_add.clock <= clock
    mux_add.reset <= reset
    inst mux_mul of Myselect_3 @[shuffle.scala 121:23]
    mux_mul.clock <= clock
    mux_mul.reset <= reset
    mux_add.io.condition <= condition_div.io.out @[shuffle.scala 123:24]
    mux_add.io.in_data_1.im <= mul_delay_delay.io.out_data.im @[shuffle.scala 124:24]
    mux_add.io.in_data_1.re <= mul_delay_delay.io.out_data.re @[shuffle.scala 124:24]
    mux_add.io.in_data_2.im <= io.in_data_add.im @[shuffle.scala 125:24]
    mux_add.io.in_data_2.re <= io.in_data_add.re @[shuffle.scala 125:24]
    mux_add.io.en <= io.ready @[shuffle.scala 126:17]
    mux_mul.io.condition <= condition_div.io.out @[shuffle.scala 128:24]
    mux_mul.io.in_data_1.im <= io.in_data_add.im @[shuffle.scala 129:24]
    mux_mul.io.in_data_1.re <= io.in_data_add.re @[shuffle.scala 129:24]
    mux_mul.io.in_data_2.im <= mul_delay_delay.io.out_data.im @[shuffle.scala 130:24]
    mux_mul.io.in_data_2.re <= mul_delay_delay.io.out_data.re @[shuffle.scala 130:24]
    mux_mul.io.en <= io.ready @[shuffle.scala 131:17]
    inst io_out_delay_data_add_re_delay of Delayu_2 @[Delay.scala 60:23]
    io_out_delay_data_add_re_delay.clock <= clock
    io_out_delay_data_add_re_delay.reset <= reset
    io_out_delay_data_add_re_delay.io.in_data <= mux_add.io.out_data.re @[Delay.scala 61:22]
    io.out_delay_data_add.re <= io_out_delay_data_add_re_delay.io.out_data @[shuffle.scala 133:28]
    inst io_out_delay_data_add_im_delay of Delayu_3 @[Delay.scala 60:23]
    io_out_delay_data_add_im_delay.clock <= clock
    io_out_delay_data_add_im_delay.reset <= reset
    io_out_delay_data_add_im_delay.io.in_data <= mux_add.io.out_data.im @[Delay.scala 61:22]
    io.out_delay_data_add.im <= io_out_delay_data_add_im_delay.io.out_data @[shuffle.scala 134:28]
    io.out_delay_data_mul.im <= mux_mul.io.out_data.im @[shuffle.scala 135:25]
    io.out_delay_data_mul.re <= mux_mul.io.out_data.re @[shuffle.scala 135:25]
    inst io_valid_delay of Delayb_2 @[Delay.scala 111:23]
    io_valid_delay.clock <= clock
    io_valid_delay.reset <= reset
    io_valid_delay.io.in_data <= io.ready @[Delay.scala 112:22]
    io.valid <= io_valid_delay.io.out_data @[shuffle.scala 138:12]

  extmodule Ip_ComplexMul_blackbox_0_2 :
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
    defname = Ip_ComplexMul_blackbox_0

  module Ip_ComplexMul_blackbox_wrapper_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>, res : { re : UInt<32>, im : UInt<32>}}

    inst commul of Ip_ComplexMul_blackbox_0_2 @[Ip_BlackBox.scala 140:23]
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
    commul.aclk <= clock @[Ip_BlackBox.scala 141:18]
    commul.enA <= io.ready @[Ip_BlackBox.scala 142:17]
    commul.A_re <= io.op1.re @[Ip_BlackBox.scala 143:18]
    commul.A_im <= io.op1.im @[Ip_BlackBox.scala 144:18]
    commul.enB <= io.ready @[Ip_BlackBox.scala 145:17]
    commul.B_re <= io.op2.re @[Ip_BlackBox.scala 146:18]
    commul.B_im <= io.op2.im @[Ip_BlackBox.scala 147:18]
    io.valid <= commul.valid @[Ip_BlackBox.scala 148:12]
    io.res.re <= commul.res_re @[Ip_BlackBox.scala 149:13]
    io.res.im <= commul.res_im @[Ip_BlackBox.scala 150:13]

  extmodule FPAdd_blackbox_4 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPAdd_blackbox

  extmodule FPAdd_blackbox_5 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPAdd_blackbox

  module FPComplexAdd_blackbox_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, res : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>}

    inst commul_re of FPAdd_blackbox_4 @[Ip_BlackBox.scala 39:25]
    commul_re.m_axis_result_tvalid is invalid
    commul_re.m_axis_result_tdata is invalid
    commul_re.s_axis_b_tvalid is invalid
    commul_re.s_axis_b_tdata is invalid
    commul_re.s_axis_a_tvalid is invalid
    commul_re.s_axis_a_tdata is invalid
    commul_re.aclk is invalid
    inst commul_im of FPAdd_blackbox_5 @[Ip_BlackBox.scala 40:25]
    commul_im.m_axis_result_tvalid is invalid
    commul_im.m_axis_result_tdata is invalid
    commul_im.s_axis_b_tvalid is invalid
    commul_im.s_axis_b_tdata is invalid
    commul_im.s_axis_a_tvalid is invalid
    commul_im.s_axis_a_tdata is invalid
    commul_im.aclk is invalid
    commul_im.aclk <= clock @[Ip_BlackBox.scala 42:21]
    commul_im.s_axis_a_tdata <= io.op1.im @[Ip_BlackBox.scala 43:31]
    commul_im.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 44:32]
    commul_im.s_axis_b_tdata <= io.op2.im @[Ip_BlackBox.scala 45:31]
    commul_im.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 46:32]
    io.res.im <= commul_im.m_axis_result_tdata @[Ip_BlackBox.scala 47:13]
    commul_re.aclk <= clock @[Ip_BlackBox.scala 49:21]
    commul_re.s_axis_a_tdata <= io.op1.re @[Ip_BlackBox.scala 50:31]
    commul_re.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 51:32]
    commul_re.s_axis_b_tdata <= io.op2.re @[Ip_BlackBox.scala 52:31]
    commul_re.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 53:32]
    io.res.re <= commul_re.m_axis_result_tdata @[Ip_BlackBox.scala 54:13]
    io.valid <= commul_im.m_axis_result_tvalid @[Ip_BlackBox.scala 55:12]

  extmodule FPSub_blackbox_4 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPSub_blackbox

  extmodule FPSub_blackbox_5 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPSub_blackbox

  module FPComplexSub_blackbox_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, res : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>}

    inst commul_re of FPSub_blackbox_4 @[Ip_BlackBox.scala 90:25]
    commul_re.m_axis_result_tvalid is invalid
    commul_re.m_axis_result_tdata is invalid
    commul_re.s_axis_b_tvalid is invalid
    commul_re.s_axis_b_tdata is invalid
    commul_re.s_axis_a_tvalid is invalid
    commul_re.s_axis_a_tdata is invalid
    commul_re.aclk is invalid
    inst commul_im of FPSub_blackbox_5 @[Ip_BlackBox.scala 91:25]
    commul_im.m_axis_result_tvalid is invalid
    commul_im.m_axis_result_tdata is invalid
    commul_im.s_axis_b_tvalid is invalid
    commul_im.s_axis_b_tdata is invalid
    commul_im.s_axis_a_tvalid is invalid
    commul_im.s_axis_a_tdata is invalid
    commul_im.aclk is invalid
    commul_im.aclk <= clock @[Ip_BlackBox.scala 93:21]
    commul_im.s_axis_a_tdata <= io.op1.im @[Ip_BlackBox.scala 94:31]
    commul_im.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 95:32]
    commul_im.s_axis_b_tdata <= io.op2.im @[Ip_BlackBox.scala 96:31]
    commul_im.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 97:32]
    io.res.im <= commul_im.m_axis_result_tdata @[Ip_BlackBox.scala 98:13]
    commul_re.aclk <= clock @[Ip_BlackBox.scala 100:21]
    commul_re.s_axis_a_tdata <= io.op1.re @[Ip_BlackBox.scala 101:31]
    commul_re.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 102:32]
    commul_re.s_axis_b_tdata <= io.op2.re @[Ip_BlackBox.scala 103:31]
    commul_re.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 104:32]
    io.res.re <= commul_re.m_axis_result_tdata @[Ip_BlackBox.scala 105:13]
    io.valid <= commul_im.m_axis_result_tvalid @[Ip_BlackBox.scala 106:12]

  module Twiddle_Address_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip row : UInt<2>, flip ready : UInt<1>, flip counter : UInt<32>, address : UInt<32>}

    reg j : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Twiddle_Address.scala 80:18]
    reg k : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Twiddle_Address.scala 81:18]
    wire repeat : UInt<32> @[Twiddle_Address.scala 102:20]
    repeat <= UInt<1>("h0") @[Twiddle_Address.scala 103:10]
    node _T = eq(UInt<1>("h1"), io.row) @[Twiddle_Address.scala 104:17]
    when _T : @[Twiddle_Address.scala 104:17]
      repeat <= UInt<15>("h7ff9") @[Twiddle_Address.scala 106:14]
    else :
      node _T_1 = eq(UInt<2>("h2"), io.row) @[Twiddle_Address.scala 104:17]
      when _T_1 : @[Twiddle_Address.scala 104:17]
        repeat <= UInt<10>("h3ff") @[Twiddle_Address.scala 109:14]
      else :
        node _T_2 = eq(UInt<2>("h3"), io.row) @[Twiddle_Address.scala 104:17]
        when _T_2 : @[Twiddle_Address.scala 104:17]
          repeat <= UInt<5>("h1f") @[Twiddle_Address.scala 112:14]
        else :
          node _T_3 = eq(UInt<3>("h4"), io.row) @[Twiddle_Address.scala 104:17]
          when _T_3 : @[Twiddle_Address.scala 104:17]
            repeat <= UInt<1>("h0") @[Twiddle_Address.scala 115:14]
    when io.ready : @[Twiddle_Address.scala 119:18]
      node _T_4 = sub(io.counter, UInt<1>("h1")) @[Twiddle_Address.scala 120:31]
      node _T_5 = tail(_T_4, 1) @[Twiddle_Address.scala 120:31]
      node _T_6 = lt(j, _T_5) @[Twiddle_Address.scala 120:12]
      when _T_6 : @[Twiddle_Address.scala 120:36]
        node _T_7 = lt(k, repeat) @[Twiddle_Address.scala 122:13]
        when _T_7 : @[Twiddle_Address.scala 122:22]
          node _k_T = add(k, UInt<1>("h1")) @[Twiddle_Address.scala 124:16]
          node _k_T_1 = tail(_k_T, 1) @[Twiddle_Address.scala 124:16]
          k <= _k_T_1 @[Twiddle_Address.scala 124:11]
        else :
          k <= UInt<1>("h0") @[Twiddle_Address.scala 126:11]
          node _j_T = add(j, UInt<1>("h1")) @[Twiddle_Address.scala 127:16]
          node _j_T_1 = tail(_j_T, 1) @[Twiddle_Address.scala 127:16]
          j <= _j_T_1 @[Twiddle_Address.scala 127:11]
      else :
        j <= UInt<1>("h0") @[Twiddle_Address.scala 130:9]
    io.address <= j @[Twiddle_Address.scala 133:14]

  module Delay_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    wire _reg_delay_re_WIRE : UInt<32>[32] @[Delay.scala 18:50]
    _reg_delay_re_WIRE[0] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[1] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[2] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[3] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[4] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[5] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[6] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[7] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[8] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[9] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[10] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[11] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[12] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[13] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[14] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[15] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[16] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[17] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[18] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[19] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[20] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[21] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[22] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[23] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[24] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[25] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[26] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[27] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[28] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[29] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[30] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[31] <= UInt<32>("h0") @[Delay.scala 18:50]
    reg reg_delay_re : UInt<32>[32], clock with :
      reset => (reset, _reg_delay_re_WIRE) @[Delay.scala 18:42]
    wire _reg_delay_im_WIRE : UInt<32>[32] @[Delay.scala 19:50]
    _reg_delay_im_WIRE[0] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[1] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[2] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[3] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[4] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[5] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[6] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[7] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[8] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[9] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[10] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[11] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[12] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[13] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[14] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[15] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[16] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[17] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[18] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[19] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[20] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[21] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[22] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[23] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[24] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[25] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[26] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[27] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[28] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[29] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[30] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[31] <= UInt<32>("h0") @[Delay.scala 19:50]
    reg reg_delay_im : UInt<32>[32], clock with :
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
    reg_delay_re[8] <= reg_delay_re[7] @[Delay.scala 23:23]
    reg_delay_im[8] <= reg_delay_im[7] @[Delay.scala 24:23]
    reg_delay_re[9] <= reg_delay_re[8] @[Delay.scala 23:23]
    reg_delay_im[9] <= reg_delay_im[8] @[Delay.scala 24:23]
    reg_delay_re[10] <= reg_delay_re[9] @[Delay.scala 23:23]
    reg_delay_im[10] <= reg_delay_im[9] @[Delay.scala 24:23]
    reg_delay_re[11] <= reg_delay_re[10] @[Delay.scala 23:23]
    reg_delay_im[11] <= reg_delay_im[10] @[Delay.scala 24:23]
    reg_delay_re[12] <= reg_delay_re[11] @[Delay.scala 23:23]
    reg_delay_im[12] <= reg_delay_im[11] @[Delay.scala 24:23]
    reg_delay_re[13] <= reg_delay_re[12] @[Delay.scala 23:23]
    reg_delay_im[13] <= reg_delay_im[12] @[Delay.scala 24:23]
    reg_delay_re[14] <= reg_delay_re[13] @[Delay.scala 23:23]
    reg_delay_im[14] <= reg_delay_im[13] @[Delay.scala 24:23]
    reg_delay_re[15] <= reg_delay_re[14] @[Delay.scala 23:23]
    reg_delay_im[15] <= reg_delay_im[14] @[Delay.scala 24:23]
    reg_delay_re[16] <= reg_delay_re[15] @[Delay.scala 23:23]
    reg_delay_im[16] <= reg_delay_im[15] @[Delay.scala 24:23]
    reg_delay_re[17] <= reg_delay_re[16] @[Delay.scala 23:23]
    reg_delay_im[17] <= reg_delay_im[16] @[Delay.scala 24:23]
    reg_delay_re[18] <= reg_delay_re[17] @[Delay.scala 23:23]
    reg_delay_im[18] <= reg_delay_im[17] @[Delay.scala 24:23]
    reg_delay_re[19] <= reg_delay_re[18] @[Delay.scala 23:23]
    reg_delay_im[19] <= reg_delay_im[18] @[Delay.scala 24:23]
    reg_delay_re[20] <= reg_delay_re[19] @[Delay.scala 23:23]
    reg_delay_im[20] <= reg_delay_im[19] @[Delay.scala 24:23]
    reg_delay_re[21] <= reg_delay_re[20] @[Delay.scala 23:23]
    reg_delay_im[21] <= reg_delay_im[20] @[Delay.scala 24:23]
    reg_delay_re[22] <= reg_delay_re[21] @[Delay.scala 23:23]
    reg_delay_im[22] <= reg_delay_im[21] @[Delay.scala 24:23]
    reg_delay_re[23] <= reg_delay_re[22] @[Delay.scala 23:23]
    reg_delay_im[23] <= reg_delay_im[22] @[Delay.scala 24:23]
    reg_delay_re[24] <= reg_delay_re[23] @[Delay.scala 23:23]
    reg_delay_im[24] <= reg_delay_im[23] @[Delay.scala 24:23]
    reg_delay_re[25] <= reg_delay_re[24] @[Delay.scala 23:23]
    reg_delay_im[25] <= reg_delay_im[24] @[Delay.scala 24:23]
    reg_delay_re[26] <= reg_delay_re[25] @[Delay.scala 23:23]
    reg_delay_im[26] <= reg_delay_im[25] @[Delay.scala 24:23]
    reg_delay_re[27] <= reg_delay_re[26] @[Delay.scala 23:23]
    reg_delay_im[27] <= reg_delay_im[26] @[Delay.scala 24:23]
    reg_delay_re[28] <= reg_delay_re[27] @[Delay.scala 23:23]
    reg_delay_im[28] <= reg_delay_im[27] @[Delay.scala 24:23]
    reg_delay_re[29] <= reg_delay_re[28] @[Delay.scala 23:23]
    reg_delay_im[29] <= reg_delay_im[28] @[Delay.scala 24:23]
    reg_delay_re[30] <= reg_delay_re[29] @[Delay.scala 23:23]
    reg_delay_im[30] <= reg_delay_im[29] @[Delay.scala 24:23]
    reg_delay_re[31] <= reg_delay_re[30] @[Delay.scala 23:23]
    reg_delay_im[31] <= reg_delay_im[30] @[Delay.scala 24:23]
    node _io_out_data_re_T = sub(UInt<6>("h20"), UInt<1>("h1")) @[Delay.scala 26:44]
    node _io_out_data_re_T_1 = tail(_io_out_data_re_T, 1) @[Delay.scala 26:44]
    node _io_out_data_re_T_2 = bits(_io_out_data_re_T_1, 4, 0)
    io.out_data.re <= reg_delay_re[_io_out_data_re_T_2] @[Delay.scala 26:20]
    node _io_out_data_im_T = sub(UInt<6>("h20"), UInt<1>("h1")) @[Delay.scala 27:44]
    node _io_out_data_im_T_1 = tail(_io_out_data_im_T, 1) @[Delay.scala 27:44]
    node _io_out_data_im_T_2 = bits(_io_out_data_im_T_1, 4, 0)
    io.out_data.im <= reg_delay_im[_io_out_data_im_T_2] @[Delay.scala 27:20]

  module BF3_Dyn_blackbox :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data_a : { re : UInt<32>, im : UInt<32>}, flip in_data_b : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, out_data_add : { re : UInt<32>, im : UInt<32>}, out_data_mul : { re : UInt<32>, im : UInt<32>}, valid : UInt<1>}

    reg io_out_data_mul_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF3_Dyn.scala 22:32]
    io.out_data_mul.re <= io_out_data_mul_re_REG @[BF3_Dyn.scala 22:22]
    reg io_out_data_mul_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF3_Dyn.scala 23:32]
    io.out_data_mul.im <= io_out_data_mul_im_REG @[BF3_Dyn.scala 23:22]
    reg io_out_data_add_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF3_Dyn.scala 24:32]
    io.out_data_add.re <= io_out_data_add_re_REG @[BF3_Dyn.scala 24:22]
    reg io_out_data_add_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF3_Dyn.scala 25:32]
    io.out_data_add.im <= io_out_data_add_im_REG @[BF3_Dyn.scala 25:22]
    io.valid <= UInt<1>("h0") @[BF3_Dyn.scala 26:12]
    inst Mul of Ip_ComplexMul_blackbox_wrapper_2 @[BF3_Dyn.scala 32:19]
    Mul.clock <= clock
    Mul.reset <= reset
    inst Add of FPComplexAdd_blackbox_2 @[BF3_Dyn.scala 33:19]
    Add.clock <= clock
    Add.reset <= reset
    inst Sub of FPComplexSub_blackbox_2 @[BF3_Dyn.scala 34:19]
    Sub.clock <= clock
    Sub.reset <= reset
    Add.io.op1.im <= io.in_data_a.im @[BF3_Dyn.scala 37:14]
    Add.io.op1.re <= io.in_data_a.re @[BF3_Dyn.scala 37:14]
    Add.io.op2.im <= io.in_data_b.im @[BF3_Dyn.scala 38:14]
    Add.io.op2.re <= io.in_data_b.re @[BF3_Dyn.scala 38:14]
    Add.io.ready <= io.ready @[BF3_Dyn.scala 39:16]
    Sub.io.op1.im <= io.in_data_a.im @[BF3_Dyn.scala 41:14]
    Sub.io.op1.re <= io.in_data_a.re @[BF3_Dyn.scala 41:14]
    Sub.io.op2.im <= io.in_data_b.im @[BF3_Dyn.scala 42:14]
    Sub.io.op2.re <= io.in_data_b.re @[BF3_Dyn.scala 42:14]
    Sub.io.ready <= io.ready @[BF3_Dyn.scala 43:16]
    wire TF_re_ROM : UInt<32>[4] @[BF3_Dyn.scala 50:26]
    TF_re_ROM[0] <= UInt<30>("h3f800000") @[BF3_Dyn.scala 50:26]
    TF_re_ROM[1] <= UInt<30>("h3f3504f3") @[BF3_Dyn.scala 50:26]
    TF_re_ROM[2] <= UInt<1>("h0") @[BF3_Dyn.scala 50:26]
    TF_re_ROM[3] <= UInt<32>("hbf3504f3") @[BF3_Dyn.scala 50:26]
    wire TF_im_ROM : UInt<32>[4] @[BF3_Dyn.scala 56:26]
    TF_im_ROM[0] <= UInt<1>("h0") @[BF3_Dyn.scala 56:26]
    TF_im_ROM[1] <= UInt<32>("hbf3504f3") @[BF3_Dyn.scala 56:26]
    TF_im_ROM[2] <= UInt<32>("hbf800000") @[BF3_Dyn.scala 56:26]
    TF_im_ROM[3] <= UInt<32>("hbf3504f3") @[BF3_Dyn.scala 56:26]
    inst twiddle_Address_BF_4_3 of Twiddle_Address_2 @[BF3_Dyn.scala 63:38]
    twiddle_Address_BF_4_3.clock <= clock
    twiddle_Address_BF_4_3.reset <= reset
    twiddle_Address_BF_4_3.io.row <= UInt<3>("h4") @[BF3_Dyn.scala 64:33]
    twiddle_Address_BF_4_3.io.ready <= Sub.io.valid @[BF3_Dyn.scala 65:35]
    twiddle_Address_BF_4_3.io.counter <= UInt<3>("h4") @[BF3_Dyn.scala 66:37]
    node _TF_im_reg_T = bits(twiddle_Address_BF_4_3.io.address, 1, 0)
    node _TF_re_reg_T = bits(twiddle_Address_BF_4_3.io.address, 1, 0)
    Mul.io.ready <= Sub.io.valid @[BF3_Dyn.scala 74:16]
    Mul.io.op1.im <= Sub.io.res.im @[BF3_Dyn.scala 75:14]
    Mul.io.op1.re <= Sub.io.res.re @[BF3_Dyn.scala 75:14]
    Mul.io.op2.re <= TF_re_ROM[_TF_re_reg_T] @[BF3_Dyn.scala 76:17]
    Mul.io.op2.im <= TF_im_ROM[_TF_im_reg_T] @[BF3_Dyn.scala 77:17]
    io.out_data_mul.im <= Mul.io.res.im @[BF3_Dyn.scala 78:19]
    io.out_data_mul.re <= Mul.io.res.re @[BF3_Dyn.scala 78:19]
    io.valid <= Mul.io.valid @[BF3_Dyn.scala 79:12]
    inst io_out_data_add_delay of Delay_4 @[Delay.scala 34:23]
    io_out_data_add_delay.clock <= clock
    io_out_data_add_delay.reset <= reset
    io_out_data_add_delay.io.in_data.im <= Add.io.res.im @[Delay.scala 35:22]
    io_out_data_add_delay.io.in_data.re <= Add.io.res.re @[Delay.scala 35:22]
    io.out_data_add.im <= io_out_data_add_delay.io.out_data.im @[BF3_Dyn.scala 83:19]
    io.out_data_add.re <= io_out_data_add_delay.io.out_data.re @[BF3_Dyn.scala 83:19]

  module Divider_frequency_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, out : UInt<1>}

    reg countReg : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[shuffle.scala 17:25]
    reg toggleReg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[shuffle.scala 18:26]
    when io.en : @[shuffle.scala 20:15]
      node _T = sub(UInt<2>("h2"), UInt<1>("h1")) @[shuffle.scala 21:35]
      node _T_1 = tail(_T, 1) @[shuffle.scala 21:35]
      node _T_2 = eq(countReg, _T_1) @[shuffle.scala 21:19]
      when _T_2 : @[shuffle.scala 21:41]
        countReg <= UInt<1>("h0") @[shuffle.scala 22:16]
        node _toggleReg_T = eq(toggleReg, UInt<1>("h0")) @[shuffle.scala 23:20]
        toggleReg <= _toggleReg_T @[shuffle.scala 23:17]
      else :
        node _countReg_T = add(countReg, UInt<1>("h1")) @[shuffle.scala 25:28]
        node _countReg_T_1 = tail(_countReg_T, 1) @[shuffle.scala 25:28]
        countReg <= _countReg_T_1 @[shuffle.scala 25:16]
    io.out <= toggleReg @[shuffle.scala 29:10]

  module Delay_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    wire _reg_delay_re_WIRE : UInt<32>[2] @[Delay.scala 18:50]
    _reg_delay_re_WIRE[0] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[1] <= UInt<32>("h0") @[Delay.scala 18:50]
    reg reg_delay_re : UInt<32>[2], clock with :
      reset => (reset, _reg_delay_re_WIRE) @[Delay.scala 18:42]
    wire _reg_delay_im_WIRE : UInt<32>[2] @[Delay.scala 19:50]
    _reg_delay_im_WIRE[0] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[1] <= UInt<32>("h0") @[Delay.scala 19:50]
    reg reg_delay_im : UInt<32>[2], clock with :
      reset => (reset, _reg_delay_im_WIRE) @[Delay.scala 19:42]
    reg_delay_re[0] <= io.in_data.re @[Delay.scala 20:21]
    reg_delay_im[0] <= io.in_data.im @[Delay.scala 21:21]
    reg_delay_re[1] <= reg_delay_re[0] @[Delay.scala 23:23]
    reg_delay_im[1] <= reg_delay_im[0] @[Delay.scala 24:23]
    node _io_out_data_re_T = sub(UInt<2>("h2"), UInt<1>("h1")) @[Delay.scala 26:44]
    node _io_out_data_re_T_1 = tail(_io_out_data_re_T, 1) @[Delay.scala 26:44]
    node _io_out_data_re_T_2 = bits(_io_out_data_re_T_1, 0, 0)
    io.out_data.re <= reg_delay_re[_io_out_data_re_T_2] @[Delay.scala 26:20]
    node _io_out_data_im_T = sub(UInt<2>("h2"), UInt<1>("h1")) @[Delay.scala 27:44]
    node _io_out_data_im_T_1 = tail(_io_out_data_im_T, 1) @[Delay.scala 27:44]
    node _io_out_data_im_T_2 = bits(_io_out_data_im_T_1, 0, 0)
    io.out_data.im <= reg_delay_im[_io_out_data_im_T_2] @[Delay.scala 27:20]

  module Myselect_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, flip condition : UInt<1>, flip in_data_1 : { re : UInt<32>, im : UInt<32>}, flip in_data_2 : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    when io.en : @[shuffle.scala 87:15]
      when io.condition : @[shuffle.scala 88:24]
        io.out_data.im <= io.in_data_1.im @[shuffle.scala 89:19]
        io.out_data.re <= io.in_data_1.re @[shuffle.scala 89:19]
      else :
        io.out_data.im <= io.in_data_2.im @[shuffle.scala 91:18]
        io.out_data.re <= io.in_data_2.re @[shuffle.scala 91:18]
    else :
      io.out_data.im is invalid @[shuffle.scala 94:17]
      io.out_data.re is invalid @[shuffle.scala 94:17]

  module Myselect_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, flip condition : UInt<1>, flip in_data_1 : { re : UInt<32>, im : UInt<32>}, flip in_data_2 : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    when io.en : @[shuffle.scala 87:15]
      when io.condition : @[shuffle.scala 88:24]
        io.out_data.im <= io.in_data_1.im @[shuffle.scala 89:19]
        io.out_data.re <= io.in_data_1.re @[shuffle.scala 89:19]
      else :
        io.out_data.im <= io.in_data_2.im @[shuffle.scala 91:18]
        io.out_data.re <= io.in_data_2.re @[shuffle.scala 91:18]
    else :
      io.out_data.im is invalid @[shuffle.scala 94:17]
      io.out_data.re is invalid @[shuffle.scala 94:17]

  module Delayu_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<32>, out_data : UInt<32>}

    wire _reg_delay_WIRE : UInt<32>[2] @[Delay.scala 50:47]
    _reg_delay_WIRE[0] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[1] <= UInt<32>("h0") @[Delay.scala 50:47]
    reg reg_delay : UInt<32>[2], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 50:39]
    reg_delay[0] <= io.in_data @[Delay.scala 51:18]
    reg_delay[1] <= reg_delay[0] @[Delay.scala 53:20]
    node _io_out_data_T = sub(UInt<2>("h2"), UInt<1>("h1")) @[Delay.scala 55:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 55:38]
    node _io_out_data_T_2 = bits(_io_out_data_T_1, 0, 0)
    io.out_data <= reg_delay[_io_out_data_T_2] @[Delay.scala 55:17]

  module Delayu_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<32>, out_data : UInt<32>}

    wire _reg_delay_WIRE : UInt<32>[2] @[Delay.scala 50:47]
    _reg_delay_WIRE[0] <= UInt<32>("h0") @[Delay.scala 50:47]
    _reg_delay_WIRE[1] <= UInt<32>("h0") @[Delay.scala 50:47]
    reg reg_delay : UInt<32>[2], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 50:39]
    reg_delay[0] <= io.in_data @[Delay.scala 51:18]
    reg_delay[1] <= reg_delay[0] @[Delay.scala 53:20]
    node _io_out_data_T = sub(UInt<2>("h2"), UInt<1>("h1")) @[Delay.scala 55:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 55:38]
    node _io_out_data_T_2 = bits(_io_out_data_T_1, 0, 0)
    io.out_data <= reg_delay[_io_out_data_T_2] @[Delay.scala 55:17]

  module Delayb_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<1>, out_data : UInt<1>}

    wire _reg_delay_WIRE : UInt<1>[2] @[Delay.scala 101:47]
    _reg_delay_WIRE[0] <= UInt<1>("h0") @[Delay.scala 101:47]
    _reg_delay_WIRE[1] <= UInt<1>("h0") @[Delay.scala 101:47]
    reg reg_delay : UInt<1>[2], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 101:39]
    reg_delay[0] <= io.in_data @[Delay.scala 102:18]
    reg_delay[1] <= reg_delay[0] @[Delay.scala 104:20]
    node _io_out_data_T = sub(UInt<2>("h2"), UInt<1>("h1")) @[Delay.scala 106:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 106:38]
    node _io_out_data_T_2 = bits(_io_out_data_T_1, 0, 0)
    io.out_data <= reg_delay[_io_out_data_T_2] @[Delay.scala 106:17]

  module shuffle_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data_add : { re : UInt<32>, im : UInt<32>}, flip in_data_mul : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>, out_delay_data_add : { re : UInt<32>, im : UInt<32>}, out_delay_data_mul : { re : UInt<32>, im : UInt<32>}}

    reg io_out_delay_data_mul_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 111:38]
    io.out_delay_data_mul.re <= io_out_delay_data_mul_re_REG @[shuffle.scala 111:28]
    reg io_out_delay_data_mul_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 112:38]
    io.out_delay_data_mul.im <= io_out_delay_data_mul_im_REG @[shuffle.scala 112:28]
    reg io_out_delay_data_add_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 113:38]
    io.out_delay_data_add.re <= io_out_delay_data_add_re_REG @[shuffle.scala 113:28]
    reg io_out_delay_data_add_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 114:38]
    io.out_delay_data_add.im <= io_out_delay_data_add_im_REG @[shuffle.scala 114:28]
    inst condition_div of Divider_frequency_2 @[shuffle.scala 66:21]
    condition_div.clock <= clock
    condition_div.reset <= reset
    condition_div.io.en <= io.ready @[shuffle.scala 67:15]
    inst mul_delay_delay of Delay_5 @[Delay.scala 34:23]
    mul_delay_delay.clock <= clock
    mul_delay_delay.reset <= reset
    mul_delay_delay.io.in_data.im <= io.in_data_mul.im @[Delay.scala 35:22]
    mul_delay_delay.io.in_data.re <= io.in_data_mul.re @[Delay.scala 35:22]
    inst mux_add of Myselect_4 @[shuffle.scala 120:23]
    mux_add.clock <= clock
    mux_add.reset <= reset
    inst mux_mul of Myselect_5 @[shuffle.scala 121:23]
    mux_mul.clock <= clock
    mux_mul.reset <= reset
    mux_add.io.condition <= condition_div.io.out @[shuffle.scala 123:24]
    mux_add.io.in_data_1.im <= mul_delay_delay.io.out_data.im @[shuffle.scala 124:24]
    mux_add.io.in_data_1.re <= mul_delay_delay.io.out_data.re @[shuffle.scala 124:24]
    mux_add.io.in_data_2.im <= io.in_data_add.im @[shuffle.scala 125:24]
    mux_add.io.in_data_2.re <= io.in_data_add.re @[shuffle.scala 125:24]
    mux_add.io.en <= io.ready @[shuffle.scala 126:17]
    mux_mul.io.condition <= condition_div.io.out @[shuffle.scala 128:24]
    mux_mul.io.in_data_1.im <= io.in_data_add.im @[shuffle.scala 129:24]
    mux_mul.io.in_data_1.re <= io.in_data_add.re @[shuffle.scala 129:24]
    mux_mul.io.in_data_2.im <= mul_delay_delay.io.out_data.im @[shuffle.scala 130:24]
    mux_mul.io.in_data_2.re <= mul_delay_delay.io.out_data.re @[shuffle.scala 130:24]
    mux_mul.io.en <= io.ready @[shuffle.scala 131:17]
    inst io_out_delay_data_add_re_delay of Delayu_4 @[Delay.scala 60:23]
    io_out_delay_data_add_re_delay.clock <= clock
    io_out_delay_data_add_re_delay.reset <= reset
    io_out_delay_data_add_re_delay.io.in_data <= mux_add.io.out_data.re @[Delay.scala 61:22]
    io.out_delay_data_add.re <= io_out_delay_data_add_re_delay.io.out_data @[shuffle.scala 133:28]
    inst io_out_delay_data_add_im_delay of Delayu_5 @[Delay.scala 60:23]
    io_out_delay_data_add_im_delay.clock <= clock
    io_out_delay_data_add_im_delay.reset <= reset
    io_out_delay_data_add_im_delay.io.in_data <= mux_add.io.out_data.im @[Delay.scala 61:22]
    io.out_delay_data_add.im <= io_out_delay_data_add_im_delay.io.out_data @[shuffle.scala 134:28]
    io.out_delay_data_mul.im <= mux_mul.io.out_data.im @[shuffle.scala 135:25]
    io.out_delay_data_mul.re <= mux_mul.io.out_data.re @[shuffle.scala 135:25]
    inst io_valid_delay of Delayb_3 @[Delay.scala 111:23]
    io_valid_delay.clock <= clock
    io_valid_delay.reset <= reset
    io_valid_delay.io.in_data <= io.ready @[Delay.scala 112:22]
    io.valid <= io_valid_delay.io.out_data @[shuffle.scala 138:12]

  extmodule Ip_ComplexMul_blackbox_0_3 :
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
    defname = Ip_ComplexMul_blackbox_0

  module Ip_ComplexMul_blackbox_wrapper_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>, res : { re : UInt<32>, im : UInt<32>}}

    inst commul of Ip_ComplexMul_blackbox_0_3 @[Ip_BlackBox.scala 140:23]
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
    commul.aclk <= clock @[Ip_BlackBox.scala 141:18]
    commul.enA <= io.ready @[Ip_BlackBox.scala 142:17]
    commul.A_re <= io.op1.re @[Ip_BlackBox.scala 143:18]
    commul.A_im <= io.op1.im @[Ip_BlackBox.scala 144:18]
    commul.enB <= io.ready @[Ip_BlackBox.scala 145:17]
    commul.B_re <= io.op2.re @[Ip_BlackBox.scala 146:18]
    commul.B_im <= io.op2.im @[Ip_BlackBox.scala 147:18]
    io.valid <= commul.valid @[Ip_BlackBox.scala 148:12]
    io.res.re <= commul.res_re @[Ip_BlackBox.scala 149:13]
    io.res.im <= commul.res_im @[Ip_BlackBox.scala 150:13]

  extmodule FPAdd_blackbox_6 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPAdd_blackbox

  extmodule FPAdd_blackbox_7 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPAdd_blackbox

  module FPComplexAdd_blackbox_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, res : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>}

    inst commul_re of FPAdd_blackbox_6 @[Ip_BlackBox.scala 39:25]
    commul_re.m_axis_result_tvalid is invalid
    commul_re.m_axis_result_tdata is invalid
    commul_re.s_axis_b_tvalid is invalid
    commul_re.s_axis_b_tdata is invalid
    commul_re.s_axis_a_tvalid is invalid
    commul_re.s_axis_a_tdata is invalid
    commul_re.aclk is invalid
    inst commul_im of FPAdd_blackbox_7 @[Ip_BlackBox.scala 40:25]
    commul_im.m_axis_result_tvalid is invalid
    commul_im.m_axis_result_tdata is invalid
    commul_im.s_axis_b_tvalid is invalid
    commul_im.s_axis_b_tdata is invalid
    commul_im.s_axis_a_tvalid is invalid
    commul_im.s_axis_a_tdata is invalid
    commul_im.aclk is invalid
    commul_im.aclk <= clock @[Ip_BlackBox.scala 42:21]
    commul_im.s_axis_a_tdata <= io.op1.im @[Ip_BlackBox.scala 43:31]
    commul_im.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 44:32]
    commul_im.s_axis_b_tdata <= io.op2.im @[Ip_BlackBox.scala 45:31]
    commul_im.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 46:32]
    io.res.im <= commul_im.m_axis_result_tdata @[Ip_BlackBox.scala 47:13]
    commul_re.aclk <= clock @[Ip_BlackBox.scala 49:21]
    commul_re.s_axis_a_tdata <= io.op1.re @[Ip_BlackBox.scala 50:31]
    commul_re.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 51:32]
    commul_re.s_axis_b_tdata <= io.op2.re @[Ip_BlackBox.scala 52:31]
    commul_re.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 53:32]
    io.res.re <= commul_re.m_axis_result_tdata @[Ip_BlackBox.scala 54:13]
    io.valid <= commul_im.m_axis_result_tvalid @[Ip_BlackBox.scala 55:12]

  extmodule FPSub_blackbox_6 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPSub_blackbox

  extmodule FPSub_blackbox_7 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPSub_blackbox

  module FPComplexSub_blackbox_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, res : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>}

    inst commul_re of FPSub_blackbox_6 @[Ip_BlackBox.scala 90:25]
    commul_re.m_axis_result_tvalid is invalid
    commul_re.m_axis_result_tdata is invalid
    commul_re.s_axis_b_tvalid is invalid
    commul_re.s_axis_b_tdata is invalid
    commul_re.s_axis_a_tvalid is invalid
    commul_re.s_axis_a_tdata is invalid
    commul_re.aclk is invalid
    inst commul_im of FPSub_blackbox_7 @[Ip_BlackBox.scala 91:25]
    commul_im.m_axis_result_tvalid is invalid
    commul_im.m_axis_result_tdata is invalid
    commul_im.s_axis_b_tvalid is invalid
    commul_im.s_axis_b_tdata is invalid
    commul_im.s_axis_a_tvalid is invalid
    commul_im.s_axis_a_tdata is invalid
    commul_im.aclk is invalid
    commul_im.aclk <= clock @[Ip_BlackBox.scala 93:21]
    commul_im.s_axis_a_tdata <= io.op1.im @[Ip_BlackBox.scala 94:31]
    commul_im.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 95:32]
    commul_im.s_axis_b_tdata <= io.op2.im @[Ip_BlackBox.scala 96:31]
    commul_im.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 97:32]
    io.res.im <= commul_im.m_axis_result_tdata @[Ip_BlackBox.scala 98:13]
    commul_re.aclk <= clock @[Ip_BlackBox.scala 100:21]
    commul_re.s_axis_a_tdata <= io.op1.re @[Ip_BlackBox.scala 101:31]
    commul_re.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 102:32]
    commul_re.s_axis_b_tdata <= io.op2.re @[Ip_BlackBox.scala 103:31]
    commul_re.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 104:32]
    io.res.re <= commul_re.m_axis_result_tdata @[Ip_BlackBox.scala 105:13]
    io.valid <= commul_im.m_axis_result_tvalid @[Ip_BlackBox.scala 106:12]

  module Twiddle_Address_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip row : UInt<2>, flip ready : UInt<1>, flip counter : UInt<32>, address : UInt<32>}

    reg j : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Twiddle_Address.scala 80:18]
    reg k : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Twiddle_Address.scala 81:18]
    wire repeat : UInt<32> @[Twiddle_Address.scala 102:20]
    repeat <= UInt<1>("h0") @[Twiddle_Address.scala 103:10]
    node _T = eq(UInt<1>("h1"), io.row) @[Twiddle_Address.scala 104:17]
    when _T : @[Twiddle_Address.scala 104:17]
      repeat <= UInt<15>("h7ff9") @[Twiddle_Address.scala 106:14]
    else :
      node _T_1 = eq(UInt<2>("h2"), io.row) @[Twiddle_Address.scala 104:17]
      when _T_1 : @[Twiddle_Address.scala 104:17]
        repeat <= UInt<10>("h3ff") @[Twiddle_Address.scala 109:14]
      else :
        node _T_2 = eq(UInt<2>("h3"), io.row) @[Twiddle_Address.scala 104:17]
        when _T_2 : @[Twiddle_Address.scala 104:17]
          repeat <= UInt<5>("h1f") @[Twiddle_Address.scala 112:14]
        else :
          node _T_3 = eq(UInt<3>("h4"), io.row) @[Twiddle_Address.scala 104:17]
          when _T_3 : @[Twiddle_Address.scala 104:17]
            repeat <= UInt<1>("h0") @[Twiddle_Address.scala 115:14]
    when io.ready : @[Twiddle_Address.scala 119:18]
      node _T_4 = sub(io.counter, UInt<1>("h1")) @[Twiddle_Address.scala 120:31]
      node _T_5 = tail(_T_4, 1) @[Twiddle_Address.scala 120:31]
      node _T_6 = lt(j, _T_5) @[Twiddle_Address.scala 120:12]
      when _T_6 : @[Twiddle_Address.scala 120:36]
        node _T_7 = lt(k, repeat) @[Twiddle_Address.scala 122:13]
        when _T_7 : @[Twiddle_Address.scala 122:22]
          node _k_T = add(k, UInt<1>("h1")) @[Twiddle_Address.scala 124:16]
          node _k_T_1 = tail(_k_T, 1) @[Twiddle_Address.scala 124:16]
          k <= _k_T_1 @[Twiddle_Address.scala 124:11]
        else :
          k <= UInt<1>("h0") @[Twiddle_Address.scala 126:11]
          node _j_T = add(j, UInt<1>("h1")) @[Twiddle_Address.scala 127:16]
          node _j_T_1 = tail(_j_T, 1) @[Twiddle_Address.scala 127:16]
          j <= _j_T_1 @[Twiddle_Address.scala 127:11]
      else :
        j <= UInt<1>("h0") @[Twiddle_Address.scala 130:9]
    io.address <= j @[Twiddle_Address.scala 133:14]

  module Delay_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    wire _reg_delay_re_WIRE : UInt<32>[32] @[Delay.scala 18:50]
    _reg_delay_re_WIRE[0] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[1] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[2] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[3] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[4] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[5] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[6] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[7] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[8] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[9] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[10] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[11] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[12] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[13] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[14] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[15] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[16] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[17] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[18] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[19] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[20] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[21] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[22] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[23] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[24] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[25] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[26] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[27] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[28] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[29] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[30] <= UInt<32>("h0") @[Delay.scala 18:50]
    _reg_delay_re_WIRE[31] <= UInt<32>("h0") @[Delay.scala 18:50]
    reg reg_delay_re : UInt<32>[32], clock with :
      reset => (reset, _reg_delay_re_WIRE) @[Delay.scala 18:42]
    wire _reg_delay_im_WIRE : UInt<32>[32] @[Delay.scala 19:50]
    _reg_delay_im_WIRE[0] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[1] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[2] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[3] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[4] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[5] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[6] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[7] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[8] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[9] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[10] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[11] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[12] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[13] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[14] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[15] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[16] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[17] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[18] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[19] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[20] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[21] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[22] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[23] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[24] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[25] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[26] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[27] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[28] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[29] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[30] <= UInt<32>("h0") @[Delay.scala 19:50]
    _reg_delay_im_WIRE[31] <= UInt<32>("h0") @[Delay.scala 19:50]
    reg reg_delay_im : UInt<32>[32], clock with :
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
    reg_delay_re[8] <= reg_delay_re[7] @[Delay.scala 23:23]
    reg_delay_im[8] <= reg_delay_im[7] @[Delay.scala 24:23]
    reg_delay_re[9] <= reg_delay_re[8] @[Delay.scala 23:23]
    reg_delay_im[9] <= reg_delay_im[8] @[Delay.scala 24:23]
    reg_delay_re[10] <= reg_delay_re[9] @[Delay.scala 23:23]
    reg_delay_im[10] <= reg_delay_im[9] @[Delay.scala 24:23]
    reg_delay_re[11] <= reg_delay_re[10] @[Delay.scala 23:23]
    reg_delay_im[11] <= reg_delay_im[10] @[Delay.scala 24:23]
    reg_delay_re[12] <= reg_delay_re[11] @[Delay.scala 23:23]
    reg_delay_im[12] <= reg_delay_im[11] @[Delay.scala 24:23]
    reg_delay_re[13] <= reg_delay_re[12] @[Delay.scala 23:23]
    reg_delay_im[13] <= reg_delay_im[12] @[Delay.scala 24:23]
    reg_delay_re[14] <= reg_delay_re[13] @[Delay.scala 23:23]
    reg_delay_im[14] <= reg_delay_im[13] @[Delay.scala 24:23]
    reg_delay_re[15] <= reg_delay_re[14] @[Delay.scala 23:23]
    reg_delay_im[15] <= reg_delay_im[14] @[Delay.scala 24:23]
    reg_delay_re[16] <= reg_delay_re[15] @[Delay.scala 23:23]
    reg_delay_im[16] <= reg_delay_im[15] @[Delay.scala 24:23]
    reg_delay_re[17] <= reg_delay_re[16] @[Delay.scala 23:23]
    reg_delay_im[17] <= reg_delay_im[16] @[Delay.scala 24:23]
    reg_delay_re[18] <= reg_delay_re[17] @[Delay.scala 23:23]
    reg_delay_im[18] <= reg_delay_im[17] @[Delay.scala 24:23]
    reg_delay_re[19] <= reg_delay_re[18] @[Delay.scala 23:23]
    reg_delay_im[19] <= reg_delay_im[18] @[Delay.scala 24:23]
    reg_delay_re[20] <= reg_delay_re[19] @[Delay.scala 23:23]
    reg_delay_im[20] <= reg_delay_im[19] @[Delay.scala 24:23]
    reg_delay_re[21] <= reg_delay_re[20] @[Delay.scala 23:23]
    reg_delay_im[21] <= reg_delay_im[20] @[Delay.scala 24:23]
    reg_delay_re[22] <= reg_delay_re[21] @[Delay.scala 23:23]
    reg_delay_im[22] <= reg_delay_im[21] @[Delay.scala 24:23]
    reg_delay_re[23] <= reg_delay_re[22] @[Delay.scala 23:23]
    reg_delay_im[23] <= reg_delay_im[22] @[Delay.scala 24:23]
    reg_delay_re[24] <= reg_delay_re[23] @[Delay.scala 23:23]
    reg_delay_im[24] <= reg_delay_im[23] @[Delay.scala 24:23]
    reg_delay_re[25] <= reg_delay_re[24] @[Delay.scala 23:23]
    reg_delay_im[25] <= reg_delay_im[24] @[Delay.scala 24:23]
    reg_delay_re[26] <= reg_delay_re[25] @[Delay.scala 23:23]
    reg_delay_im[26] <= reg_delay_im[25] @[Delay.scala 24:23]
    reg_delay_re[27] <= reg_delay_re[26] @[Delay.scala 23:23]
    reg_delay_im[27] <= reg_delay_im[26] @[Delay.scala 24:23]
    reg_delay_re[28] <= reg_delay_re[27] @[Delay.scala 23:23]
    reg_delay_im[28] <= reg_delay_im[27] @[Delay.scala 24:23]
    reg_delay_re[29] <= reg_delay_re[28] @[Delay.scala 23:23]
    reg_delay_im[29] <= reg_delay_im[28] @[Delay.scala 24:23]
    reg_delay_re[30] <= reg_delay_re[29] @[Delay.scala 23:23]
    reg_delay_im[30] <= reg_delay_im[29] @[Delay.scala 24:23]
    reg_delay_re[31] <= reg_delay_re[30] @[Delay.scala 23:23]
    reg_delay_im[31] <= reg_delay_im[30] @[Delay.scala 24:23]
    node _io_out_data_re_T = sub(UInt<6>("h20"), UInt<1>("h1")) @[Delay.scala 26:44]
    node _io_out_data_re_T_1 = tail(_io_out_data_re_T, 1) @[Delay.scala 26:44]
    node _io_out_data_re_T_2 = bits(_io_out_data_re_T_1, 4, 0)
    io.out_data.re <= reg_delay_re[_io_out_data_re_T_2] @[Delay.scala 26:20]
    node _io_out_data_im_T = sub(UInt<6>("h20"), UInt<1>("h1")) @[Delay.scala 27:44]
    node _io_out_data_im_T_1 = tail(_io_out_data_im_T, 1) @[Delay.scala 27:44]
    node _io_out_data_im_T_2 = bits(_io_out_data_im_T_1, 4, 0)
    io.out_data.im <= reg_delay_im[_io_out_data_im_T_2] @[Delay.scala 27:20]

  module BF4_Dyn_blackbox :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data_a : { re : UInt<32>, im : UInt<32>}, flip in_data_b : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, out_data_add : { re : UInt<32>, im : UInt<32>}, out_data_mul : { re : UInt<32>, im : UInt<32>}, valid : UInt<1>}

    reg io_out_data_mul_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF4_Dyn.scala 22:32]
    io.out_data_mul.re <= io_out_data_mul_re_REG @[BF4_Dyn.scala 22:22]
    reg io_out_data_mul_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF4_Dyn.scala 23:32]
    io.out_data_mul.im <= io_out_data_mul_im_REG @[BF4_Dyn.scala 23:22]
    reg io_out_data_add_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF4_Dyn.scala 24:32]
    io.out_data_add.re <= io_out_data_add_re_REG @[BF4_Dyn.scala 24:22]
    reg io_out_data_add_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[BF4_Dyn.scala 25:32]
    io.out_data_add.im <= io_out_data_add_im_REG @[BF4_Dyn.scala 25:22]
    io.valid <= UInt<1>("h0") @[BF4_Dyn.scala 26:12]
    inst Mul of Ip_ComplexMul_blackbox_wrapper_3 @[BF4_Dyn.scala 32:19]
    Mul.clock <= clock
    Mul.reset <= reset
    inst Add of FPComplexAdd_blackbox_3 @[BF4_Dyn.scala 33:19]
    Add.clock <= clock
    Add.reset <= reset
    inst Sub of FPComplexSub_blackbox_3 @[BF4_Dyn.scala 34:19]
    Sub.clock <= clock
    Sub.reset <= reset
    Add.io.op1.im <= io.in_data_a.im @[BF4_Dyn.scala 37:14]
    Add.io.op1.re <= io.in_data_a.re @[BF4_Dyn.scala 37:14]
    Add.io.op2.im <= io.in_data_b.im @[BF4_Dyn.scala 38:14]
    Add.io.op2.re <= io.in_data_b.re @[BF4_Dyn.scala 38:14]
    Add.io.ready <= io.ready @[BF4_Dyn.scala 39:16]
    Sub.io.op1.im <= io.in_data_a.im @[BF4_Dyn.scala 41:14]
    Sub.io.op1.re <= io.in_data_a.re @[BF4_Dyn.scala 41:14]
    Sub.io.op2.im <= io.in_data_b.im @[BF4_Dyn.scala 42:14]
    Sub.io.op2.re <= io.in_data_b.re @[BF4_Dyn.scala 42:14]
    Sub.io.ready <= io.ready @[BF4_Dyn.scala 43:16]
    wire TF_re_ROM : UInt<30>[2] @[BF4_Dyn.scala 50:26]
    TF_re_ROM[0] <= UInt<30>("h3f800000") @[BF4_Dyn.scala 50:26]
    TF_re_ROM[1] <= UInt<1>("h0") @[BF4_Dyn.scala 50:26]
    wire TF_im_ROM : UInt<32>[2] @[BF4_Dyn.scala 54:26]
    TF_im_ROM[0] <= UInt<1>("h0") @[BF4_Dyn.scala 54:26]
    TF_im_ROM[1] <= UInt<32>("hbf800000") @[BF4_Dyn.scala 54:26]
    inst twiddle_Address_BF_4_3 of Twiddle_Address_3 @[BF4_Dyn.scala 59:38]
    twiddle_Address_BF_4_3.clock <= clock
    twiddle_Address_BF_4_3.reset <= reset
    twiddle_Address_BF_4_3.io.row <= UInt<3>("h4") @[BF4_Dyn.scala 60:33]
    twiddle_Address_BF_4_3.io.ready <= Sub.io.valid @[BF4_Dyn.scala 61:35]
    twiddle_Address_BF_4_3.io.counter <= UInt<2>("h2") @[BF4_Dyn.scala 62:37]
    node _TF_im_reg_T = bits(twiddle_Address_BF_4_3.io.address, 0, 0)
    node _TF_re_reg_T = bits(twiddle_Address_BF_4_3.io.address, 0, 0)
    Mul.io.ready <= Sub.io.valid @[BF4_Dyn.scala 70:16]
    Mul.io.op1.im <= Sub.io.res.im @[BF4_Dyn.scala 71:14]
    Mul.io.op1.re <= Sub.io.res.re @[BF4_Dyn.scala 71:14]
    Mul.io.op2.re <= TF_re_ROM[_TF_re_reg_T] @[BF4_Dyn.scala 72:17]
    Mul.io.op2.im <= TF_im_ROM[_TF_im_reg_T] @[BF4_Dyn.scala 73:17]
    io.out_data_mul.im <= Mul.io.res.im @[BF4_Dyn.scala 74:19]
    io.out_data_mul.re <= Mul.io.res.re @[BF4_Dyn.scala 74:19]
    io.valid <= Mul.io.valid @[BF4_Dyn.scala 75:12]
    inst io_out_data_add_delay of Delay_6 @[Delay.scala 34:23]
    io_out_data_add_delay.clock <= clock
    io_out_data_add_delay.reset <= reset
    io_out_data_add_delay.io.in_data.im <= Add.io.res.im @[Delay.scala 35:22]
    io_out_data_add_delay.io.in_data.re <= Add.io.res.re @[Delay.scala 35:22]
    io.out_data_add.im <= io_out_data_add_delay.io.out_data.im @[BF4_Dyn.scala 79:19]
    io.out_data_add.re <= io_out_data_add_delay.io.out_data.re @[BF4_Dyn.scala 79:19]

  module Divider_frequency_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, out : UInt<1>}

    reg countReg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[shuffle.scala 17:25]
    reg toggleReg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[shuffle.scala 18:26]
    when io.en : @[shuffle.scala 20:15]
      node _T = sub(UInt<1>("h1"), UInt<1>("h1")) @[shuffle.scala 21:35]
      node _T_1 = tail(_T, 1) @[shuffle.scala 21:35]
      node _T_2 = eq(countReg, _T_1) @[shuffle.scala 21:19]
      when _T_2 : @[shuffle.scala 21:41]
        countReg <= UInt<1>("h0") @[shuffle.scala 22:16]
        node _toggleReg_T = eq(toggleReg, UInt<1>("h0")) @[shuffle.scala 23:20]
        toggleReg <= _toggleReg_T @[shuffle.scala 23:17]
      else :
        node _countReg_T = add(countReg, UInt<1>("h1")) @[shuffle.scala 25:28]
        node _countReg_T_1 = tail(_countReg_T, 1) @[shuffle.scala 25:28]
        countReg <= _countReg_T_1 @[shuffle.scala 25:16]
    io.out <= toggleReg @[shuffle.scala 29:10]

  module Delay_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    wire _reg_delay_re_WIRE : UInt<32>[1] @[Delay.scala 18:50]
    _reg_delay_re_WIRE[0] <= UInt<32>("h0") @[Delay.scala 18:50]
    reg reg_delay_re : UInt<32>[1], clock with :
      reset => (reset, _reg_delay_re_WIRE) @[Delay.scala 18:42]
    wire _reg_delay_im_WIRE : UInt<32>[1] @[Delay.scala 19:50]
    _reg_delay_im_WIRE[0] <= UInt<32>("h0") @[Delay.scala 19:50]
    reg reg_delay_im : UInt<32>[1], clock with :
      reset => (reset, _reg_delay_im_WIRE) @[Delay.scala 19:42]
    reg_delay_re[0] <= io.in_data.re @[Delay.scala 20:21]
    reg_delay_im[0] <= io.in_data.im @[Delay.scala 21:21]
    node _io_out_data_re_T = sub(UInt<1>("h1"), UInt<1>("h1")) @[Delay.scala 26:44]
    node _io_out_data_re_T_1 = tail(_io_out_data_re_T, 1) @[Delay.scala 26:44]
    io.out_data.re <= reg_delay_re[UInt<1>("h0")] @[Delay.scala 26:20]
    node _io_out_data_im_T = sub(UInt<1>("h1"), UInt<1>("h1")) @[Delay.scala 27:44]
    node _io_out_data_im_T_1 = tail(_io_out_data_im_T, 1) @[Delay.scala 27:44]
    io.out_data.im <= reg_delay_im[UInt<1>("h0")] @[Delay.scala 27:20]

  module Myselect_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, flip condition : UInt<1>, flip in_data_1 : { re : UInt<32>, im : UInt<32>}, flip in_data_2 : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    when io.en : @[shuffle.scala 87:15]
      when io.condition : @[shuffle.scala 88:24]
        io.out_data.im <= io.in_data_1.im @[shuffle.scala 89:19]
        io.out_data.re <= io.in_data_1.re @[shuffle.scala 89:19]
      else :
        io.out_data.im <= io.in_data_2.im @[shuffle.scala 91:18]
        io.out_data.re <= io.in_data_2.re @[shuffle.scala 91:18]
    else :
      io.out_data.im is invalid @[shuffle.scala 94:17]
      io.out_data.re is invalid @[shuffle.scala 94:17]

  module Myselect_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, flip condition : UInt<1>, flip in_data_1 : { re : UInt<32>, im : UInt<32>}, flip in_data_2 : { re : UInt<32>, im : UInt<32>}, out_data : { re : UInt<32>, im : UInt<32>}}

    when io.en : @[shuffle.scala 87:15]
      when io.condition : @[shuffle.scala 88:24]
        io.out_data.im <= io.in_data_1.im @[shuffle.scala 89:19]
        io.out_data.re <= io.in_data_1.re @[shuffle.scala 89:19]
      else :
        io.out_data.im <= io.in_data_2.im @[shuffle.scala 91:18]
        io.out_data.re <= io.in_data_2.re @[shuffle.scala 91:18]
    else :
      io.out_data.im is invalid @[shuffle.scala 94:17]
      io.out_data.re is invalid @[shuffle.scala 94:17]

  module Delayu_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<32>, out_data : UInt<32>}

    wire _reg_delay_WIRE : UInt<32>[1] @[Delay.scala 50:47]
    _reg_delay_WIRE[0] <= UInt<32>("h0") @[Delay.scala 50:47]
    reg reg_delay : UInt<32>[1], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 50:39]
    reg_delay[0] <= io.in_data @[Delay.scala 51:18]
    node _io_out_data_T = sub(UInt<1>("h1"), UInt<1>("h1")) @[Delay.scala 55:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 55:38]
    io.out_data <= reg_delay[UInt<1>("h0")] @[Delay.scala 55:17]

  module Delayu_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<32>, out_data : UInt<32>}

    wire _reg_delay_WIRE : UInt<32>[1] @[Delay.scala 50:47]
    _reg_delay_WIRE[0] <= UInt<32>("h0") @[Delay.scala 50:47]
    reg reg_delay : UInt<32>[1], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 50:39]
    reg_delay[0] <= io.in_data @[Delay.scala 51:18]
    node _io_out_data_T = sub(UInt<1>("h1"), UInt<1>("h1")) @[Delay.scala 55:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 55:38]
    io.out_data <= reg_delay[UInt<1>("h0")] @[Delay.scala 55:17]

  module Delayb_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data : UInt<1>, out_data : UInt<1>}

    wire _reg_delay_WIRE : UInt<1>[1] @[Delay.scala 101:47]
    _reg_delay_WIRE[0] <= UInt<1>("h0") @[Delay.scala 101:47]
    reg reg_delay : UInt<1>[1], clock with :
      reset => (reset, _reg_delay_WIRE) @[Delay.scala 101:39]
    reg_delay[0] <= io.in_data @[Delay.scala 102:18]
    node _io_out_data_T = sub(UInt<1>("h1"), UInt<1>("h1")) @[Delay.scala 106:38]
    node _io_out_data_T_1 = tail(_io_out_data_T, 1) @[Delay.scala 106:38]
    io.out_data <= reg_delay[UInt<1>("h0")] @[Delay.scala 106:17]

  module shuffle_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data_add : { re : UInt<32>, im : UInt<32>}, flip in_data_mul : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>, out_delay_data_add : { re : UInt<32>, im : UInt<32>}, out_delay_data_mul : { re : UInt<32>, im : UInt<32>}}

    reg io_out_delay_data_mul_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 111:38]
    io.out_delay_data_mul.re <= io_out_delay_data_mul_re_REG @[shuffle.scala 111:28]
    reg io_out_delay_data_mul_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 112:38]
    io.out_delay_data_mul.im <= io_out_delay_data_mul_im_REG @[shuffle.scala 112:28]
    reg io_out_delay_data_add_re_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 113:38]
    io.out_delay_data_add.re <= io_out_delay_data_add_re_REG @[shuffle.scala 113:28]
    reg io_out_delay_data_add_im_REG : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[shuffle.scala 114:38]
    io.out_delay_data_add.im <= io_out_delay_data_add_im_REG @[shuffle.scala 114:28]
    inst condition_div of Divider_frequency_3 @[shuffle.scala 66:21]
    condition_div.clock <= clock
    condition_div.reset <= reset
    condition_div.io.en <= io.ready @[shuffle.scala 67:15]
    inst mul_delay_delay of Delay_7 @[Delay.scala 34:23]
    mul_delay_delay.clock <= clock
    mul_delay_delay.reset <= reset
    mul_delay_delay.io.in_data.im <= io.in_data_mul.im @[Delay.scala 35:22]
    mul_delay_delay.io.in_data.re <= io.in_data_mul.re @[Delay.scala 35:22]
    inst mux_add of Myselect_6 @[shuffle.scala 120:23]
    mux_add.clock <= clock
    mux_add.reset <= reset
    inst mux_mul of Myselect_7 @[shuffle.scala 121:23]
    mux_mul.clock <= clock
    mux_mul.reset <= reset
    mux_add.io.condition <= condition_div.io.out @[shuffle.scala 123:24]
    mux_add.io.in_data_1.im <= mul_delay_delay.io.out_data.im @[shuffle.scala 124:24]
    mux_add.io.in_data_1.re <= mul_delay_delay.io.out_data.re @[shuffle.scala 124:24]
    mux_add.io.in_data_2.im <= io.in_data_add.im @[shuffle.scala 125:24]
    mux_add.io.in_data_2.re <= io.in_data_add.re @[shuffle.scala 125:24]
    mux_add.io.en <= io.ready @[shuffle.scala 126:17]
    mux_mul.io.condition <= condition_div.io.out @[shuffle.scala 128:24]
    mux_mul.io.in_data_1.im <= io.in_data_add.im @[shuffle.scala 129:24]
    mux_mul.io.in_data_1.re <= io.in_data_add.re @[shuffle.scala 129:24]
    mux_mul.io.in_data_2.im <= mul_delay_delay.io.out_data.im @[shuffle.scala 130:24]
    mux_mul.io.in_data_2.re <= mul_delay_delay.io.out_data.re @[shuffle.scala 130:24]
    mux_mul.io.en <= io.ready @[shuffle.scala 131:17]
    inst io_out_delay_data_add_re_delay of Delayu_6 @[Delay.scala 60:23]
    io_out_delay_data_add_re_delay.clock <= clock
    io_out_delay_data_add_re_delay.reset <= reset
    io_out_delay_data_add_re_delay.io.in_data <= mux_add.io.out_data.re @[Delay.scala 61:22]
    io.out_delay_data_add.re <= io_out_delay_data_add_re_delay.io.out_data @[shuffle.scala 133:28]
    inst io_out_delay_data_add_im_delay of Delayu_7 @[Delay.scala 60:23]
    io_out_delay_data_add_im_delay.clock <= clock
    io_out_delay_data_add_im_delay.reset <= reset
    io_out_delay_data_add_im_delay.io.in_data <= mux_add.io.out_data.im @[Delay.scala 61:22]
    io.out_delay_data_add.im <= io_out_delay_data_add_im_delay.io.out_data @[shuffle.scala 134:28]
    io.out_delay_data_mul.im <= mux_mul.io.out_data.im @[shuffle.scala 135:25]
    io.out_delay_data_mul.re <= mux_mul.io.out_data.re @[shuffle.scala 135:25]
    inst io_valid_delay of Delayb_4 @[Delay.scala 111:23]
    io_valid_delay.clock <= clock
    io_valid_delay.reset <= reset
    io_valid_delay.io.in_data <= io.ready @[Delay.scala 112:22]
    io.valid <= io_valid_delay.io.out_data @[shuffle.scala 138:12]

  extmodule FPAdd_blackbox_8 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPAdd_blackbox

  extmodule FPAdd_blackbox_9 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPAdd_blackbox

  module FPComplexAdd_blackbox_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, res : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>}

    inst commul_re of FPAdd_blackbox_8 @[Ip_BlackBox.scala 39:25]
    commul_re.m_axis_result_tvalid is invalid
    commul_re.m_axis_result_tdata is invalid
    commul_re.s_axis_b_tvalid is invalid
    commul_re.s_axis_b_tdata is invalid
    commul_re.s_axis_a_tvalid is invalid
    commul_re.s_axis_a_tdata is invalid
    commul_re.aclk is invalid
    inst commul_im of FPAdd_blackbox_9 @[Ip_BlackBox.scala 40:25]
    commul_im.m_axis_result_tvalid is invalid
    commul_im.m_axis_result_tdata is invalid
    commul_im.s_axis_b_tvalid is invalid
    commul_im.s_axis_b_tdata is invalid
    commul_im.s_axis_a_tvalid is invalid
    commul_im.s_axis_a_tdata is invalid
    commul_im.aclk is invalid
    commul_im.aclk <= clock @[Ip_BlackBox.scala 42:21]
    commul_im.s_axis_a_tdata <= io.op1.im @[Ip_BlackBox.scala 43:31]
    commul_im.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 44:32]
    commul_im.s_axis_b_tdata <= io.op2.im @[Ip_BlackBox.scala 45:31]
    commul_im.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 46:32]
    io.res.im <= commul_im.m_axis_result_tdata @[Ip_BlackBox.scala 47:13]
    commul_re.aclk <= clock @[Ip_BlackBox.scala 49:21]
    commul_re.s_axis_a_tdata <= io.op1.re @[Ip_BlackBox.scala 50:31]
    commul_re.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 51:32]
    commul_re.s_axis_b_tdata <= io.op2.re @[Ip_BlackBox.scala 52:31]
    commul_re.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 53:32]
    io.res.re <= commul_re.m_axis_result_tdata @[Ip_BlackBox.scala 54:13]
    io.valid <= commul_im.m_axis_result_tvalid @[Ip_BlackBox.scala 55:12]

  extmodule FPSub_blackbox_8 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPSub_blackbox

  extmodule FPSub_blackbox_9 :
    input aclk : Clock
    input s_axis_a_tdata : UInt<32>
    input s_axis_a_tvalid : UInt<1>
    input s_axis_b_tdata : UInt<32>
    input s_axis_b_tvalid : UInt<1>
    output m_axis_result_tdata : UInt<32>
    output m_axis_result_tvalid : UInt<1>
    defname = FPSub_blackbox

  module FPComplexSub_blackbox_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : { re : UInt<32>, im : UInt<32>}, flip op2 : { re : UInt<32>, im : UInt<32>}, res : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>}

    inst commul_re of FPSub_blackbox_8 @[Ip_BlackBox.scala 90:25]
    commul_re.m_axis_result_tvalid is invalid
    commul_re.m_axis_result_tdata is invalid
    commul_re.s_axis_b_tvalid is invalid
    commul_re.s_axis_b_tdata is invalid
    commul_re.s_axis_a_tvalid is invalid
    commul_re.s_axis_a_tdata is invalid
    commul_re.aclk is invalid
    inst commul_im of FPSub_blackbox_9 @[Ip_BlackBox.scala 91:25]
    commul_im.m_axis_result_tvalid is invalid
    commul_im.m_axis_result_tdata is invalid
    commul_im.s_axis_b_tvalid is invalid
    commul_im.s_axis_b_tdata is invalid
    commul_im.s_axis_a_tvalid is invalid
    commul_im.s_axis_a_tdata is invalid
    commul_im.aclk is invalid
    commul_im.aclk <= clock @[Ip_BlackBox.scala 93:21]
    commul_im.s_axis_a_tdata <= io.op1.im @[Ip_BlackBox.scala 94:31]
    commul_im.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 95:32]
    commul_im.s_axis_b_tdata <= io.op2.im @[Ip_BlackBox.scala 96:31]
    commul_im.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 97:32]
    io.res.im <= commul_im.m_axis_result_tdata @[Ip_BlackBox.scala 98:13]
    commul_re.aclk <= clock @[Ip_BlackBox.scala 100:21]
    commul_re.s_axis_a_tdata <= io.op1.re @[Ip_BlackBox.scala 101:31]
    commul_re.s_axis_a_tvalid <= io.ready @[Ip_BlackBox.scala 102:32]
    commul_re.s_axis_b_tdata <= io.op2.re @[Ip_BlackBox.scala 103:31]
    commul_re.s_axis_b_tvalid <= io.ready @[Ip_BlackBox.scala 104:32]
    io.res.re <= commul_re.m_axis_result_tdata @[Ip_BlackBox.scala 105:13]
    io.valid <= commul_im.m_axis_result_tvalid @[Ip_BlackBox.scala 106:12]

  module BF5_Fourth :
    input clock : Clock
    input reset : Reset
    output io : { flip in_data_a : { re : UInt<32>, im : UInt<32>}, flip in_data_b : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, out_data_add : { re : UInt<32>, im : UInt<32>}, out_data_mul : { re : UInt<32>, im : UInt<32>}, valid : UInt<1>}

    inst Add of FPComplexAdd_blackbox_4 @[BF5_Fourth.scala 20:19]
    Add.clock <= clock
    Add.reset <= reset
    inst Sub of FPComplexSub_blackbox_4 @[BF5_Fourth.scala 21:19]
    Sub.clock <= clock
    Sub.reset <= reset
    Add.io.op1.im <= io.in_data_a.im @[BF5_Fourth.scala 26:14]
    Add.io.op1.re <= io.in_data_a.re @[BF5_Fourth.scala 26:14]
    Add.io.op2.im <= io.in_data_b.im @[BF5_Fourth.scala 27:14]
    Add.io.op2.re <= io.in_data_b.re @[BF5_Fourth.scala 27:14]
    Add.io.ready <= io.ready @[BF5_Fourth.scala 28:16]
    Sub.io.op1.im <= io.in_data_a.im @[BF5_Fourth.scala 31:14]
    Sub.io.op1.re <= io.in_data_a.re @[BF5_Fourth.scala 31:14]
    Sub.io.op2.im <= io.in_data_b.im @[BF5_Fourth.scala 32:14]
    Sub.io.op2.re <= io.in_data_b.re @[BF5_Fourth.scala 32:14]
    Sub.io.ready <= io.ready @[BF5_Fourth.scala 33:16]
    io.valid <= Sub.io.valid @[BF5_Fourth.scala 36:12]
    io.out_data_add.im <= Add.io.res.im @[BF5_Fourth.scala 37:19]
    io.out_data_add.re <= Add.io.res.re @[BF5_Fourth.scala 37:19]
    io.out_data_mul.im <= Sub.io.res.im @[BF5_Fourth.scala 38:19]
    io.out_data_mul.re <= Sub.io.res.re @[BF5_Fourth.scala 38:19]

  module Fourth_Row :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip number : UInt<32>, out_data_a : { re : UInt<32>, im : UInt<32>}, out_data_b : { re : UInt<32>, im : UInt<32>}, flip ready : UInt<1>, valid : UInt<1>}

    inst Memory_First of Memory_First @[Fourth_Row.scala 19:28]
    Memory_First.clock <= clock
    Memory_First.reset <= reset
    Memory_First.io.number <= io.number @[Fourth_Row.scala 20:26]
    Memory_First.io.ready <= io.ready @[Fourth_Row.scala 21:25]
    inst BF1_Dyn_blackbox of BF1_Dyn_blackbox @[Fourth_Row.scala 23:32]
    BF1_Dyn_blackbox.clock <= clock
    BF1_Dyn_blackbox.reset <= reset
    BF1_Dyn_blackbox.io.ready <= Memory_First.io.valid @[Fourth_Row.scala 24:29]
    BF1_Dyn_blackbox.io.in_data_a.im <= Memory_First.io.out_data_add.im @[Fourth_Row.scala 25:33]
    BF1_Dyn_blackbox.io.in_data_a.re <= Memory_First.io.out_data_add.re @[Fourth_Row.scala 25:33]
    BF1_Dyn_blackbox.io.in_data_b.im <= Memory_First.io.out_data_sub.im @[Fourth_Row.scala 26:33]
    BF1_Dyn_blackbox.io.in_data_b.re <= Memory_First.io.out_data_sub.re @[Fourth_Row.scala 26:33]
    inst shuffle_8 of shuffle @[Fourth_Row.scala 29:25]
    shuffle_8.clock <= clock
    shuffle_8.reset <= reset
    shuffle_8.io.ready <= BF1_Dyn_blackbox.io.valid @[Fourth_Row.scala 30:22]
    shuffle_8.io.in_data_add.im <= BF1_Dyn_blackbox.io.out_data_add.im @[Fourth_Row.scala 31:28]
    shuffle_8.io.in_data_add.re <= BF1_Dyn_blackbox.io.out_data_add.re @[Fourth_Row.scala 31:28]
    shuffle_8.io.in_data_mul.im <= BF1_Dyn_blackbox.io.out_data_mul.im @[Fourth_Row.scala 32:28]
    shuffle_8.io.in_data_mul.re <= BF1_Dyn_blackbox.io.out_data_mul.re @[Fourth_Row.scala 32:28]
    inst BF2_Dyn_blackbox of BF2_Dyn_blackbox @[Fourth_Row.scala 35:32]
    BF2_Dyn_blackbox.clock <= clock
    BF2_Dyn_blackbox.reset <= reset
    BF2_Dyn_blackbox.io.ready <= shuffle_8.io.valid @[Fourth_Row.scala 36:29]
    BF2_Dyn_blackbox.io.in_data_a.im <= shuffle_8.io.out_delay_data_add.im @[Fourth_Row.scala 37:33]
    BF2_Dyn_blackbox.io.in_data_a.re <= shuffle_8.io.out_delay_data_add.re @[Fourth_Row.scala 37:33]
    BF2_Dyn_blackbox.io.in_data_b.im <= shuffle_8.io.out_delay_data_mul.im @[Fourth_Row.scala 38:33]
    BF2_Dyn_blackbox.io.in_data_b.re <= shuffle_8.io.out_delay_data_mul.re @[Fourth_Row.scala 38:33]
    inst shuffle_4 of shuffle_1 @[Fourth_Row.scala 40:25]
    shuffle_4.clock <= clock
    shuffle_4.reset <= reset
    shuffle_4.io.ready <= BF2_Dyn_blackbox.io.valid @[Fourth_Row.scala 41:22]
    shuffle_4.io.in_data_add.im <= BF2_Dyn_blackbox.io.out_data_add.im @[Fourth_Row.scala 42:28]
    shuffle_4.io.in_data_add.re <= BF2_Dyn_blackbox.io.out_data_add.re @[Fourth_Row.scala 42:28]
    shuffle_4.io.in_data_mul.im <= BF2_Dyn_blackbox.io.out_data_mul.im @[Fourth_Row.scala 43:28]
    shuffle_4.io.in_data_mul.re <= BF2_Dyn_blackbox.io.out_data_mul.re @[Fourth_Row.scala 43:28]
    inst BF3_Dyn_blackbox of BF3_Dyn_blackbox @[Fourth_Row.scala 45:32]
    BF3_Dyn_blackbox.clock <= clock
    BF3_Dyn_blackbox.reset <= reset
    BF3_Dyn_blackbox.io.ready <= shuffle_4.io.valid @[Fourth_Row.scala 46:29]
    BF3_Dyn_blackbox.io.in_data_a.im <= shuffle_4.io.out_delay_data_add.im @[Fourth_Row.scala 47:33]
    BF3_Dyn_blackbox.io.in_data_a.re <= shuffle_4.io.out_delay_data_add.re @[Fourth_Row.scala 47:33]
    BF3_Dyn_blackbox.io.in_data_b.im <= shuffle_4.io.out_delay_data_mul.im @[Fourth_Row.scala 48:33]
    BF3_Dyn_blackbox.io.in_data_b.re <= shuffle_4.io.out_delay_data_mul.re @[Fourth_Row.scala 48:33]
    inst shuffle_2 of shuffle_2 @[Fourth_Row.scala 50:25]
    shuffle_2.clock <= clock
    shuffle_2.reset <= reset
    shuffle_2.io.ready <= BF3_Dyn_blackbox.io.valid @[Fourth_Row.scala 51:22]
    shuffle_2.io.in_data_add.im <= BF3_Dyn_blackbox.io.out_data_add.im @[Fourth_Row.scala 52:28]
    shuffle_2.io.in_data_add.re <= BF3_Dyn_blackbox.io.out_data_add.re @[Fourth_Row.scala 52:28]
    shuffle_2.io.in_data_mul.im <= BF3_Dyn_blackbox.io.out_data_mul.im @[Fourth_Row.scala 53:28]
    shuffle_2.io.in_data_mul.re <= BF3_Dyn_blackbox.io.out_data_mul.re @[Fourth_Row.scala 53:28]
    inst BF4_Dyn_blackbox of BF4_Dyn_blackbox @[Fourth_Row.scala 55:32]
    BF4_Dyn_blackbox.clock <= clock
    BF4_Dyn_blackbox.reset <= reset
    BF4_Dyn_blackbox.io.ready <= shuffle_2.io.valid @[Fourth_Row.scala 56:29]
    BF4_Dyn_blackbox.io.in_data_a.im <= shuffle_2.io.out_delay_data_add.im @[Fourth_Row.scala 57:33]
    BF4_Dyn_blackbox.io.in_data_a.re <= shuffle_2.io.out_delay_data_add.re @[Fourth_Row.scala 57:33]
    BF4_Dyn_blackbox.io.in_data_b.im <= shuffle_2.io.out_delay_data_mul.im @[Fourth_Row.scala 58:33]
    BF4_Dyn_blackbox.io.in_data_b.re <= shuffle_2.io.out_delay_data_mul.re @[Fourth_Row.scala 58:33]
    inst shuffle_1 of shuffle_3 @[Fourth_Row.scala 60:25]
    shuffle_1.clock <= clock
    shuffle_1.reset <= reset
    shuffle_1.io.ready <= BF4_Dyn_blackbox.io.valid @[Fourth_Row.scala 61:22]
    shuffle_1.io.in_data_add.im <= BF4_Dyn_blackbox.io.out_data_add.im @[Fourth_Row.scala 62:28]
    shuffle_1.io.in_data_add.re <= BF4_Dyn_blackbox.io.out_data_add.re @[Fourth_Row.scala 62:28]
    shuffle_1.io.in_data_mul.im <= BF4_Dyn_blackbox.io.out_data_mul.im @[Fourth_Row.scala 63:28]
    shuffle_1.io.in_data_mul.re <= BF4_Dyn_blackbox.io.out_data_mul.re @[Fourth_Row.scala 63:28]
    inst BF5_Dyn_blackbox of BF5_Fourth @[Fourth_Row.scala 65:32]
    BF5_Dyn_blackbox.clock <= clock
    BF5_Dyn_blackbox.reset <= reset
    BF5_Dyn_blackbox.io.ready <= shuffle_1.io.valid @[Fourth_Row.scala 66:29]
    BF5_Dyn_blackbox.io.in_data_a.im <= shuffle_1.io.out_delay_data_add.im @[Fourth_Row.scala 67:33]
    BF5_Dyn_blackbox.io.in_data_a.re <= shuffle_1.io.out_delay_data_add.re @[Fourth_Row.scala 67:33]
    BF5_Dyn_blackbox.io.in_data_b.im <= shuffle_1.io.out_delay_data_mul.im @[Fourth_Row.scala 68:33]
    BF5_Dyn_blackbox.io.in_data_b.re <= shuffle_1.io.out_delay_data_mul.re @[Fourth_Row.scala 68:33]
    io.out_data_a.im <= BF5_Dyn_blackbox.io.out_data_add.im @[Fourth_Row.scala 71:17]
    io.out_data_a.re <= BF5_Dyn_blackbox.io.out_data_add.re @[Fourth_Row.scala 71:17]
    io.out_data_b.im <= BF5_Dyn_blackbox.io.out_data_mul.im @[Fourth_Row.scala 72:17]
    io.out_data_b.re <= BF5_Dyn_blackbox.io.out_data_mul.re @[Fourth_Row.scala 72:17]
    io.valid <= BF5_Dyn_blackbox.io.valid @[Fourth_Row.scala 74:12]

