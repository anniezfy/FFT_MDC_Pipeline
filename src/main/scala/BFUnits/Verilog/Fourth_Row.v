module Simple_Dual_Port_a_re_blackbox_1(
  input         clock,
  input  [31:0] io_read_addr,
  output [31:0] io_dataOut
);
  wire  commul_clk; // @[Ip_BlackBox.scala 515:30]
  wire  commul_ena; // @[Ip_BlackBox.scala 515:30]
  wire  commul_wea; // @[Ip_BlackBox.scala 515:30]
  wire [31:0] commul_addra; // @[Ip_BlackBox.scala 515:30]
  wire [31:0] commul_dina; // @[Ip_BlackBox.scala 515:30]
  wire  commul_enb; // @[Ip_BlackBox.scala 515:30]
  wire [31:0] commul_addrb; // @[Ip_BlackBox.scala 515:30]
  wire [31:0] commul_doutb; // @[Ip_BlackBox.scala 515:30]
  Ip_Dual_Port_URAM_a_re_1 commul ( // @[Ip_BlackBox.scala 515:30]
    .clk(commul_clk),
    .ena(commul_ena),
    .wea(commul_wea),
    .addra(commul_addra),
    .dina(commul_dina),
    .enb(commul_enb),
    .addrb(commul_addrb),
    .doutb(commul_doutb)
  );
  assign io_dataOut = commul_doutb; // @[Ip_BlackBox.scala 526:21]
  assign commul_clk = clock; // @[Ip_BlackBox.scala 517:20]
  assign commul_ena = 1'h1; // @[Ip_BlackBox.scala 518:20]
  assign commul_wea = 1'h0; // @[Ip_BlackBox.scala 522:21]
  assign commul_addra = 32'h0; // @[Ip_BlackBox.scala 523:21]
  assign commul_dina = 32'h0; // @[Ip_BlackBox.scala 524:21]
  assign commul_enb = 1'h1; // @[Ip_BlackBox.scala 519:20]
  assign commul_addrb = io_read_addr; // @[Ip_BlackBox.scala 525:21]
endmodule
module Simple_Dual_Port_a_im_blackbox_1(
  input         clock,
  input  [31:0] io_read_addr,
  output [31:0] io_dataOut
);
  wire  commul_clk; // @[Ip_BlackBox.scala 557:30]
  wire  commul_ena; // @[Ip_BlackBox.scala 557:30]
  wire  commul_wea; // @[Ip_BlackBox.scala 557:30]
  wire [31:0] commul_addra; // @[Ip_BlackBox.scala 557:30]
  wire [31:0] commul_dina; // @[Ip_BlackBox.scala 557:30]
  wire  commul_enb; // @[Ip_BlackBox.scala 557:30]
  wire [31:0] commul_addrb; // @[Ip_BlackBox.scala 557:30]
  wire [31:0] commul_doutb; // @[Ip_BlackBox.scala 557:30]
  Ip_Dual_Port_URAM_a_im_1 commul ( // @[Ip_BlackBox.scala 557:30]
    .clk(commul_clk),
    .ena(commul_ena),
    .wea(commul_wea),
    .addra(commul_addra),
    .dina(commul_dina),
    .enb(commul_enb),
    .addrb(commul_addrb),
    .doutb(commul_doutb)
  );
  assign io_dataOut = commul_doutb; // @[Ip_BlackBox.scala 568:21]
  assign commul_clk = clock; // @[Ip_BlackBox.scala 559:20]
  assign commul_ena = 1'h1; // @[Ip_BlackBox.scala 560:20]
  assign commul_wea = 1'h0; // @[Ip_BlackBox.scala 564:21]
  assign commul_addra = 32'h0; // @[Ip_BlackBox.scala 565:21]
  assign commul_dina = 32'h0; // @[Ip_BlackBox.scala 566:21]
  assign commul_enb = 1'h1; // @[Ip_BlackBox.scala 561:20]
  assign commul_addrb = io_read_addr; // @[Ip_BlackBox.scala 567:21]
endmodule
module Simple_Dual_Port_b_re_blackbox_1(
  input         clock,
  input  [31:0] io_read_addr,
  output [31:0] io_dataOut
);
  wire  commul_clk; // @[Ip_BlackBox.scala 597:30]
  wire  commul_ena; // @[Ip_BlackBox.scala 597:30]
  wire  commul_wea; // @[Ip_BlackBox.scala 597:30]
  wire [31:0] commul_addra; // @[Ip_BlackBox.scala 597:30]
  wire [31:0] commul_dina; // @[Ip_BlackBox.scala 597:30]
  wire  commul_enb; // @[Ip_BlackBox.scala 597:30]
  wire [31:0] commul_addrb; // @[Ip_BlackBox.scala 597:30]
  wire [31:0] commul_doutb; // @[Ip_BlackBox.scala 597:30]
  Ip_Dual_Port_URAM_b_re_1 commul ( // @[Ip_BlackBox.scala 597:30]
    .clk(commul_clk),
    .ena(commul_ena),
    .wea(commul_wea),
    .addra(commul_addra),
    .dina(commul_dina),
    .enb(commul_enb),
    .addrb(commul_addrb),
    .doutb(commul_doutb)
  );
  assign io_dataOut = commul_doutb; // @[Ip_BlackBox.scala 608:21]
  assign commul_clk = clock; // @[Ip_BlackBox.scala 599:20]
  assign commul_ena = 1'h1; // @[Ip_BlackBox.scala 600:20]
  assign commul_wea = 1'h0; // @[Ip_BlackBox.scala 604:21]
  assign commul_addra = 32'h0; // @[Ip_BlackBox.scala 605:21]
  assign commul_dina = 32'h0; // @[Ip_BlackBox.scala 606:21]
  assign commul_enb = 1'h1; // @[Ip_BlackBox.scala 601:20]
  assign commul_addrb = io_read_addr; // @[Ip_BlackBox.scala 607:21]
endmodule
module Simple_Dual_Port_b_im_blackbox_1(
  input         clock,
  input  [31:0] io_read_addr,
  output [31:0] io_dataOut
);
  wire  commul_clk; // @[Ip_BlackBox.scala 637:30]
  wire  commul_ena; // @[Ip_BlackBox.scala 637:30]
  wire  commul_wea; // @[Ip_BlackBox.scala 637:30]
  wire [31:0] commul_addra; // @[Ip_BlackBox.scala 637:30]
  wire [31:0] commul_dina; // @[Ip_BlackBox.scala 637:30]
  wire  commul_enb; // @[Ip_BlackBox.scala 637:30]
  wire [31:0] commul_addrb; // @[Ip_BlackBox.scala 637:30]
  wire [31:0] commul_doutb; // @[Ip_BlackBox.scala 637:30]
  Ip_Dual_Port_URAM_b_im_1 commul ( // @[Ip_BlackBox.scala 637:30]
    .clk(commul_clk),
    .ena(commul_ena),
    .wea(commul_wea),
    .addra(commul_addra),
    .dina(commul_dina),
    .enb(commul_enb),
    .addrb(commul_addrb),
    .doutb(commul_doutb)
  );
  assign io_dataOut = commul_doutb; // @[Ip_BlackBox.scala 648:21]
  assign commul_clk = clock; // @[Ip_BlackBox.scala 639:20]
  assign commul_ena = 1'h1; // @[Ip_BlackBox.scala 640:20]
  assign commul_wea = 1'h0; // @[Ip_BlackBox.scala 644:21]
  assign commul_addra = 32'h0; // @[Ip_BlackBox.scala 645:21]
  assign commul_dina = 32'h0; // @[Ip_BlackBox.scala 646:21]
  assign commul_enb = 1'h1; // @[Ip_BlackBox.scala 641:20]
  assign commul_addrb = io_read_addr; // @[Ip_BlackBox.scala 647:21]
endmodule
module Counter_Self_Addre(
  input         clock,
  input         reset,
  input         io_en,
  input  [31:0] io_cycle,
  output [17:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] cntReg; // @[Memory_First.scala 17:29]
  wire [31:0] _T_1 = io_cycle - 32'h1; // @[Memory_First.scala 19:31]
  wire [31:0] _GEN_2 = {{14'd0}, cntReg}; // @[Memory_First.scala 19:17]
  wire [17:0] _cntReg_T_1 = cntReg + 18'h1; // @[Memory_First.scala 22:24]
  assign io_out = cntReg; // @[Memory_First.scala 25:10]
  always @(posedge clock) begin
    if (reset) begin // @[Memory_First.scala 17:29]
      cntReg <= 18'h0; // @[Memory_First.scala 17:29]
    end else if (io_en) begin // @[Memory_First.scala 18:15]
      if (_GEN_2 == _T_1) begin // @[Memory_First.scala 19:40]
        cntReg <= 18'h0; // @[Memory_First.scala 20:14]
      end else begin
        cntReg <= _cntReg_T_1; // @[Memory_First.scala 22:14]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cntReg = _RAND_0[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delayb(
  input   clock,
  input   reset,
  input   io_in_data,
  output  io_out_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  reg_delay_0; // @[Delay.scala 101:39]
  reg  reg_delay_1; // @[Delay.scala 101:39]
  wire [1:0] _io_out_data_T_1 = 2'h2 - 2'h1; // @[Delay.scala 106:38]
  assign io_out_data = _io_out_data_T_1[0] ? reg_delay_1 : reg_delay_0; // @[Delay.scala 106:{17,17}]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_0 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_0 <= io_in_data; // @[Delay.scala 102:18]
    end
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_1 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_1 <= reg_delay_0; // @[Delay.scala 104:20]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  reg_delay_1 = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Memory_First(
  input         clock,
  input         reset,
  input         io_ready,
  input  [31:0] io_number,
  output [31:0] io_out_data_add_re,
  output [31:0] io_out_data_add_im,
  output [31:0] io_out_data_sub_re,
  output [31:0] io_out_data_sub_im,
  output        io_valid
);
  wire  first_row_a_re_clock; // @[Memory_First.scala 38:30]
  wire [31:0] first_row_a_re_io_read_addr; // @[Memory_First.scala 38:30]
  wire [31:0] first_row_a_re_io_dataOut; // @[Memory_First.scala 38:30]
  wire  first_row_a_im_clock; // @[Memory_First.scala 39:30]
  wire [31:0] first_row_a_im_io_read_addr; // @[Memory_First.scala 39:30]
  wire [31:0] first_row_a_im_io_dataOut; // @[Memory_First.scala 39:30]
  wire  first_row_b_re_clock; // @[Memory_First.scala 40:30]
  wire [31:0] first_row_b_re_io_read_addr; // @[Memory_First.scala 40:30]
  wire [31:0] first_row_b_re_io_dataOut; // @[Memory_First.scala 40:30]
  wire  first_row_b_im_clock; // @[Memory_First.scala 41:30]
  wire [31:0] first_row_b_im_io_read_addr; // @[Memory_First.scala 41:30]
  wire [31:0] first_row_b_im_io_dataOut; // @[Memory_First.scala 41:30]
  wire  counter_clock; // @[Memory_First.scala 45:23]
  wire  counter_reset; // @[Memory_First.scala 45:23]
  wire  counter_io_en; // @[Memory_First.scala 45:23]
  wire [31:0] counter_io_cycle; // @[Memory_First.scala 45:23]
  wire [17:0] counter_io_out; // @[Memory_First.scala 45:23]
  wire  io_valid_delay_clock; // @[Delay.scala 111:23]
  wire  io_valid_delay_reset; // @[Delay.scala 111:23]
  wire  io_valid_delay_io_in_data; // @[Delay.scala 111:23]
  wire  io_valid_delay_io_out_data; // @[Delay.scala 111:23]
  Simple_Dual_Port_a_re_blackbox_1 first_row_a_re ( // @[Memory_First.scala 38:30]
    .clock(first_row_a_re_clock),
    .io_read_addr(first_row_a_re_io_read_addr),
    .io_dataOut(first_row_a_re_io_dataOut)
  );
  Simple_Dual_Port_a_im_blackbox_1 first_row_a_im ( // @[Memory_First.scala 39:30]
    .clock(first_row_a_im_clock),
    .io_read_addr(first_row_a_im_io_read_addr),
    .io_dataOut(first_row_a_im_io_dataOut)
  );
  Simple_Dual_Port_b_re_blackbox_1 first_row_b_re ( // @[Memory_First.scala 40:30]
    .clock(first_row_b_re_clock),
    .io_read_addr(first_row_b_re_io_read_addr),
    .io_dataOut(first_row_b_re_io_dataOut)
  );
  Simple_Dual_Port_b_im_blackbox_1 first_row_b_im ( // @[Memory_First.scala 41:30]
    .clock(first_row_b_im_clock),
    .io_read_addr(first_row_b_im_io_read_addr),
    .io_dataOut(first_row_b_im_io_dataOut)
  );
  Counter_Self_Addre counter ( // @[Memory_First.scala 45:23]
    .clock(counter_clock),
    .reset(counter_reset),
    .io_en(counter_io_en),
    .io_cycle(counter_io_cycle),
    .io_out(counter_io_out)
  );
  Delayb io_valid_delay ( // @[Delay.scala 111:23]
    .clock(io_valid_delay_clock),
    .reset(io_valid_delay_reset),
    .io_in_data(io_valid_delay_io_in_data),
    .io_out_data(io_valid_delay_io_out_data)
  );
  assign io_out_data_add_re = first_row_a_re_io_dataOut; // @[Memory_First.scala 56:22]
  assign io_out_data_add_im = first_row_a_im_io_dataOut; // @[Memory_First.scala 64:22]
  assign io_out_data_sub_re = first_row_b_re_io_dataOut; // @[Memory_First.scala 73:22]
  assign io_out_data_sub_im = first_row_b_im_io_dataOut; // @[Memory_First.scala 82:22]
  assign io_valid = io_valid_delay_io_out_data; // @[Memory_First.scala 84:12]
  assign first_row_a_re_clock = clock;
  assign first_row_a_re_io_read_addr = {{14'd0}, counter_io_out}; // @[Memory_First.scala 54:31]
  assign first_row_a_im_clock = clock;
  assign first_row_a_im_io_read_addr = {{14'd0}, counter_io_out}; // @[Memory_First.scala 62:31]
  assign first_row_b_re_clock = clock;
  assign first_row_b_re_io_read_addr = {{14'd0}, counter_io_out}; // @[Memory_First.scala 71:31]
  assign first_row_b_im_clock = clock;
  assign first_row_b_im_io_read_addr = {{14'd0}, counter_io_out}; // @[Memory_First.scala 80:31]
  assign counter_clock = clock;
  assign counter_reset = reset;
  assign counter_io_en = io_ready; // @[Memory_First.scala 47:17]
  assign counter_io_cycle = {{1'd0}, io_number[31:1]}; // @[Memory_First.scala 48:20]
  assign io_valid_delay_clock = clock;
  assign io_valid_delay_reset = reset;
  assign io_valid_delay_io_in_data = io_ready; // @[Delay.scala 112:22]
endmodule
module Ip_ComplexMul_blackbox_wrapper(
  input         clock,
  input  [31:0] io_op1_re,
  input  [31:0] io_op1_im,
  input  [31:0] io_op2_re,
  input  [31:0] io_op2_im,
  input         io_ready,
  output        io_valid,
  output [31:0] io_res_re,
  output [31:0] io_res_im
);
  wire  commul_aclk; // @[Ip_BlackBox.scala 140:23]
  wire  commul_enA; // @[Ip_BlackBox.scala 140:23]
  wire [31:0] commul_A_re; // @[Ip_BlackBox.scala 140:23]
  wire [31:0] commul_A_im; // @[Ip_BlackBox.scala 140:23]
  wire  commul_enB; // @[Ip_BlackBox.scala 140:23]
  wire [31:0] commul_B_re; // @[Ip_BlackBox.scala 140:23]
  wire [31:0] commul_B_im; // @[Ip_BlackBox.scala 140:23]
  wire  commul_valid; // @[Ip_BlackBox.scala 140:23]
  wire [31:0] commul_res_re; // @[Ip_BlackBox.scala 140:23]
  wire [31:0] commul_res_im; // @[Ip_BlackBox.scala 140:23]
  Ip_ComplexMul_blackbox_0 commul ( // @[Ip_BlackBox.scala 140:23]
    .aclk(commul_aclk),
    .enA(commul_enA),
    .A_re(commul_A_re),
    .A_im(commul_A_im),
    .enB(commul_enB),
    .B_re(commul_B_re),
    .B_im(commul_B_im),
    .valid(commul_valid),
    .res_re(commul_res_re),
    .res_im(commul_res_im)
  );
  assign io_valid = commul_valid; // @[Ip_BlackBox.scala 148:12]
  assign io_res_re = commul_res_re; // @[Ip_BlackBox.scala 149:13]
  assign io_res_im = commul_res_im; // @[Ip_BlackBox.scala 150:13]
  assign commul_aclk = clock; // @[Ip_BlackBox.scala 141:18]
  assign commul_enA = io_ready; // @[Ip_BlackBox.scala 142:17]
  assign commul_A_re = io_op1_re; // @[Ip_BlackBox.scala 143:18]
  assign commul_A_im = io_op1_im; // @[Ip_BlackBox.scala 144:18]
  assign commul_enB = io_ready; // @[Ip_BlackBox.scala 145:17]
  assign commul_B_re = io_op2_re; // @[Ip_BlackBox.scala 146:18]
  assign commul_B_im = io_op2_im; // @[Ip_BlackBox.scala 147:18]
endmodule
module FPComplexAdd_blackbox(
  input         clock,
  input  [31:0] io_op1_re,
  input  [31:0] io_op1_im,
  input  [31:0] io_op2_re,
  input  [31:0] io_op2_im,
  output [31:0] io_res_re,
  output [31:0] io_res_im,
  input         io_ready
);
  wire  commul_re_aclk; // @[Ip_BlackBox.scala 39:25]
  wire [31:0] commul_re_s_axis_a_tdata; // @[Ip_BlackBox.scala 39:25]
  wire  commul_re_s_axis_a_tvalid; // @[Ip_BlackBox.scala 39:25]
  wire [31:0] commul_re_s_axis_b_tdata; // @[Ip_BlackBox.scala 39:25]
  wire  commul_re_s_axis_b_tvalid; // @[Ip_BlackBox.scala 39:25]
  wire [31:0] commul_re_m_axis_result_tdata; // @[Ip_BlackBox.scala 39:25]
  wire  commul_re_m_axis_result_tvalid; // @[Ip_BlackBox.scala 39:25]
  wire  commul_im_aclk; // @[Ip_BlackBox.scala 40:25]
  wire [31:0] commul_im_s_axis_a_tdata; // @[Ip_BlackBox.scala 40:25]
  wire  commul_im_s_axis_a_tvalid; // @[Ip_BlackBox.scala 40:25]
  wire [31:0] commul_im_s_axis_b_tdata; // @[Ip_BlackBox.scala 40:25]
  wire  commul_im_s_axis_b_tvalid; // @[Ip_BlackBox.scala 40:25]
  wire [31:0] commul_im_m_axis_result_tdata; // @[Ip_BlackBox.scala 40:25]
  wire  commul_im_m_axis_result_tvalid; // @[Ip_BlackBox.scala 40:25]
  FPAdd_blackbox commul_re ( // @[Ip_BlackBox.scala 39:25]
    .aclk(commul_re_aclk),
    .s_axis_a_tdata(commul_re_s_axis_a_tdata),
    .s_axis_a_tvalid(commul_re_s_axis_a_tvalid),
    .s_axis_b_tdata(commul_re_s_axis_b_tdata),
    .s_axis_b_tvalid(commul_re_s_axis_b_tvalid),
    .m_axis_result_tdata(commul_re_m_axis_result_tdata),
    .m_axis_result_tvalid(commul_re_m_axis_result_tvalid)
  );
  FPAdd_blackbox commul_im ( // @[Ip_BlackBox.scala 40:25]
    .aclk(commul_im_aclk),
    .s_axis_a_tdata(commul_im_s_axis_a_tdata),
    .s_axis_a_tvalid(commul_im_s_axis_a_tvalid),
    .s_axis_b_tdata(commul_im_s_axis_b_tdata),
    .s_axis_b_tvalid(commul_im_s_axis_b_tvalid),
    .m_axis_result_tdata(commul_im_m_axis_result_tdata),
    .m_axis_result_tvalid(commul_im_m_axis_result_tvalid)
  );
  assign io_res_re = commul_re_m_axis_result_tdata; // @[Ip_BlackBox.scala 54:13]
  assign io_res_im = commul_im_m_axis_result_tdata; // @[Ip_BlackBox.scala 47:13]
  assign commul_re_aclk = clock; // @[Ip_BlackBox.scala 49:21]
  assign commul_re_s_axis_a_tdata = io_op1_re; // @[Ip_BlackBox.scala 50:31]
  assign commul_re_s_axis_a_tvalid = io_ready; // @[Ip_BlackBox.scala 51:32]
  assign commul_re_s_axis_b_tdata = io_op2_re; // @[Ip_BlackBox.scala 52:31]
  assign commul_re_s_axis_b_tvalid = io_ready; // @[Ip_BlackBox.scala 53:32]
  assign commul_im_aclk = clock; // @[Ip_BlackBox.scala 42:21]
  assign commul_im_s_axis_a_tdata = io_op1_im; // @[Ip_BlackBox.scala 43:31]
  assign commul_im_s_axis_a_tvalid = io_ready; // @[Ip_BlackBox.scala 44:32]
  assign commul_im_s_axis_b_tdata = io_op2_im; // @[Ip_BlackBox.scala 45:31]
  assign commul_im_s_axis_b_tvalid = io_ready; // @[Ip_BlackBox.scala 46:32]
endmodule
module FPComplexSub_blackbox(
  input         clock,
  input  [31:0] io_op1_re,
  input  [31:0] io_op1_im,
  input  [31:0] io_op2_re,
  input  [31:0] io_op2_im,
  output [31:0] io_res_re,
  output [31:0] io_res_im,
  input         io_ready,
  output        io_valid
);
  wire  commul_re_aclk; // @[Ip_BlackBox.scala 90:25]
  wire [31:0] commul_re_s_axis_a_tdata; // @[Ip_BlackBox.scala 90:25]
  wire  commul_re_s_axis_a_tvalid; // @[Ip_BlackBox.scala 90:25]
  wire [31:0] commul_re_s_axis_b_tdata; // @[Ip_BlackBox.scala 90:25]
  wire  commul_re_s_axis_b_tvalid; // @[Ip_BlackBox.scala 90:25]
  wire [31:0] commul_re_m_axis_result_tdata; // @[Ip_BlackBox.scala 90:25]
  wire  commul_re_m_axis_result_tvalid; // @[Ip_BlackBox.scala 90:25]
  wire  commul_im_aclk; // @[Ip_BlackBox.scala 91:25]
  wire [31:0] commul_im_s_axis_a_tdata; // @[Ip_BlackBox.scala 91:25]
  wire  commul_im_s_axis_a_tvalid; // @[Ip_BlackBox.scala 91:25]
  wire [31:0] commul_im_s_axis_b_tdata; // @[Ip_BlackBox.scala 91:25]
  wire  commul_im_s_axis_b_tvalid; // @[Ip_BlackBox.scala 91:25]
  wire [31:0] commul_im_m_axis_result_tdata; // @[Ip_BlackBox.scala 91:25]
  wire  commul_im_m_axis_result_tvalid; // @[Ip_BlackBox.scala 91:25]
  FPSub_blackbox commul_re ( // @[Ip_BlackBox.scala 90:25]
    .aclk(commul_re_aclk),
    .s_axis_a_tdata(commul_re_s_axis_a_tdata),
    .s_axis_a_tvalid(commul_re_s_axis_a_tvalid),
    .s_axis_b_tdata(commul_re_s_axis_b_tdata),
    .s_axis_b_tvalid(commul_re_s_axis_b_tvalid),
    .m_axis_result_tdata(commul_re_m_axis_result_tdata),
    .m_axis_result_tvalid(commul_re_m_axis_result_tvalid)
  );
  FPSub_blackbox commul_im ( // @[Ip_BlackBox.scala 91:25]
    .aclk(commul_im_aclk),
    .s_axis_a_tdata(commul_im_s_axis_a_tdata),
    .s_axis_a_tvalid(commul_im_s_axis_a_tvalid),
    .s_axis_b_tdata(commul_im_s_axis_b_tdata),
    .s_axis_b_tvalid(commul_im_s_axis_b_tvalid),
    .m_axis_result_tdata(commul_im_m_axis_result_tdata),
    .m_axis_result_tvalid(commul_im_m_axis_result_tvalid)
  );
  assign io_res_re = commul_re_m_axis_result_tdata; // @[Ip_BlackBox.scala 105:13]
  assign io_res_im = commul_im_m_axis_result_tdata; // @[Ip_BlackBox.scala 98:13]
  assign io_valid = commul_im_m_axis_result_tvalid; // @[Ip_BlackBox.scala 106:12]
  assign commul_re_aclk = clock; // @[Ip_BlackBox.scala 100:21]
  assign commul_re_s_axis_a_tdata = io_op1_re; // @[Ip_BlackBox.scala 101:31]
  assign commul_re_s_axis_a_tvalid = io_ready; // @[Ip_BlackBox.scala 102:32]
  assign commul_re_s_axis_b_tdata = io_op2_re; // @[Ip_BlackBox.scala 103:31]
  assign commul_re_s_axis_b_tvalid = io_ready; // @[Ip_BlackBox.scala 104:32]
  assign commul_im_aclk = clock; // @[Ip_BlackBox.scala 93:21]
  assign commul_im_s_axis_a_tdata = io_op1_im; // @[Ip_BlackBox.scala 94:31]
  assign commul_im_s_axis_a_tvalid = io_ready; // @[Ip_BlackBox.scala 95:32]
  assign commul_im_s_axis_b_tdata = io_op2_im; // @[Ip_BlackBox.scala 96:31]
  assign commul_im_s_axis_b_tvalid = io_ready; // @[Ip_BlackBox.scala 97:32]
endmodule
module Twiddle_Address(
  input         clock,
  input         reset,
  input         io_ready,
  input  [31:0] io_counter,
  output [31:0] io_address
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] j; // @[Twiddle_Address.scala 80:18]
  wire [31:0] _T_5 = io_counter - 32'h1; // @[Twiddle_Address.scala 120:31]
  wire [31:0] _j_T_1 = j + 32'h1; // @[Twiddle_Address.scala 127:16]
  assign io_address = j; // @[Twiddle_Address.scala 133:14]
  always @(posedge clock) begin
    if (reset) begin // @[Twiddle_Address.scala 80:18]
      j <= 32'h0; // @[Twiddle_Address.scala 80:18]
    end else if (io_ready) begin // @[Twiddle_Address.scala 119:18]
      if (j < _T_5) begin // @[Twiddle_Address.scala 120:36]
        j <= _j_T_1;
      end else begin
        j <= 32'h0; // @[Twiddle_Address.scala 130:9]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  j = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delay(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_re,
  input  [31:0] io_in_data_im,
  output [31:0] io_out_data_re,
  output [31:0] io_out_data_im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_delay_re_0; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_1; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_2; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_3; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_4; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_5; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_6; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_7; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_8; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_9; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_10; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_11; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_12; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_13; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_14; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_15; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_16; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_17; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_18; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_19; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_20; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_21; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_22; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_23; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_24; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_25; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_26; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_27; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_28; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_29; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_30; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_31; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_im_0; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_1; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_2; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_3; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_4; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_5; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_6; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_7; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_8; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_9; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_10; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_11; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_12; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_13; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_14; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_15; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_16; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_17; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_18; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_19; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_20; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_21; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_22; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_23; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_24; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_25; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_26; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_27; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_28; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_29; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_30; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_31; // @[Delay.scala 19:42]
  wire [5:0] _io_out_data_re_T_1 = 6'h20 - 6'h1; // @[Delay.scala 26:44]
  wire [31:0] _GEN_1 = 5'h1 == _io_out_data_re_T_1[4:0] ? reg_delay_re_1 : reg_delay_re_0; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_2 = 5'h2 == _io_out_data_re_T_1[4:0] ? reg_delay_re_2 : _GEN_1; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_3 = 5'h3 == _io_out_data_re_T_1[4:0] ? reg_delay_re_3 : _GEN_2; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_4 = 5'h4 == _io_out_data_re_T_1[4:0] ? reg_delay_re_4 : _GEN_3; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_5 = 5'h5 == _io_out_data_re_T_1[4:0] ? reg_delay_re_5 : _GEN_4; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_6 = 5'h6 == _io_out_data_re_T_1[4:0] ? reg_delay_re_6 : _GEN_5; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_7 = 5'h7 == _io_out_data_re_T_1[4:0] ? reg_delay_re_7 : _GEN_6; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_8 = 5'h8 == _io_out_data_re_T_1[4:0] ? reg_delay_re_8 : _GEN_7; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_9 = 5'h9 == _io_out_data_re_T_1[4:0] ? reg_delay_re_9 : _GEN_8; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_10 = 5'ha == _io_out_data_re_T_1[4:0] ? reg_delay_re_10 : _GEN_9; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_11 = 5'hb == _io_out_data_re_T_1[4:0] ? reg_delay_re_11 : _GEN_10; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_12 = 5'hc == _io_out_data_re_T_1[4:0] ? reg_delay_re_12 : _GEN_11; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_13 = 5'hd == _io_out_data_re_T_1[4:0] ? reg_delay_re_13 : _GEN_12; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_14 = 5'he == _io_out_data_re_T_1[4:0] ? reg_delay_re_14 : _GEN_13; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_15 = 5'hf == _io_out_data_re_T_1[4:0] ? reg_delay_re_15 : _GEN_14; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_16 = 5'h10 == _io_out_data_re_T_1[4:0] ? reg_delay_re_16 : _GEN_15; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_17 = 5'h11 == _io_out_data_re_T_1[4:0] ? reg_delay_re_17 : _GEN_16; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_18 = 5'h12 == _io_out_data_re_T_1[4:0] ? reg_delay_re_18 : _GEN_17; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_19 = 5'h13 == _io_out_data_re_T_1[4:0] ? reg_delay_re_19 : _GEN_18; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_20 = 5'h14 == _io_out_data_re_T_1[4:0] ? reg_delay_re_20 : _GEN_19; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_21 = 5'h15 == _io_out_data_re_T_1[4:0] ? reg_delay_re_21 : _GEN_20; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_22 = 5'h16 == _io_out_data_re_T_1[4:0] ? reg_delay_re_22 : _GEN_21; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_23 = 5'h17 == _io_out_data_re_T_1[4:0] ? reg_delay_re_23 : _GEN_22; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_24 = 5'h18 == _io_out_data_re_T_1[4:0] ? reg_delay_re_24 : _GEN_23; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_25 = 5'h19 == _io_out_data_re_T_1[4:0] ? reg_delay_re_25 : _GEN_24; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_26 = 5'h1a == _io_out_data_re_T_1[4:0] ? reg_delay_re_26 : _GEN_25; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_27 = 5'h1b == _io_out_data_re_T_1[4:0] ? reg_delay_re_27 : _GEN_26; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_28 = 5'h1c == _io_out_data_re_T_1[4:0] ? reg_delay_re_28 : _GEN_27; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_29 = 5'h1d == _io_out_data_re_T_1[4:0] ? reg_delay_re_29 : _GEN_28; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_30 = 5'h1e == _io_out_data_re_T_1[4:0] ? reg_delay_re_30 : _GEN_29; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_33 = 5'h1 == _io_out_data_re_T_1[4:0] ? reg_delay_im_1 : reg_delay_im_0; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_34 = 5'h2 == _io_out_data_re_T_1[4:0] ? reg_delay_im_2 : _GEN_33; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_35 = 5'h3 == _io_out_data_re_T_1[4:0] ? reg_delay_im_3 : _GEN_34; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_36 = 5'h4 == _io_out_data_re_T_1[4:0] ? reg_delay_im_4 : _GEN_35; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_37 = 5'h5 == _io_out_data_re_T_1[4:0] ? reg_delay_im_5 : _GEN_36; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_38 = 5'h6 == _io_out_data_re_T_1[4:0] ? reg_delay_im_6 : _GEN_37; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_39 = 5'h7 == _io_out_data_re_T_1[4:0] ? reg_delay_im_7 : _GEN_38; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_40 = 5'h8 == _io_out_data_re_T_1[4:0] ? reg_delay_im_8 : _GEN_39; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_41 = 5'h9 == _io_out_data_re_T_1[4:0] ? reg_delay_im_9 : _GEN_40; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_42 = 5'ha == _io_out_data_re_T_1[4:0] ? reg_delay_im_10 : _GEN_41; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_43 = 5'hb == _io_out_data_re_T_1[4:0] ? reg_delay_im_11 : _GEN_42; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_44 = 5'hc == _io_out_data_re_T_1[4:0] ? reg_delay_im_12 : _GEN_43; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_45 = 5'hd == _io_out_data_re_T_1[4:0] ? reg_delay_im_13 : _GEN_44; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_46 = 5'he == _io_out_data_re_T_1[4:0] ? reg_delay_im_14 : _GEN_45; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_47 = 5'hf == _io_out_data_re_T_1[4:0] ? reg_delay_im_15 : _GEN_46; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_48 = 5'h10 == _io_out_data_re_T_1[4:0] ? reg_delay_im_16 : _GEN_47; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_49 = 5'h11 == _io_out_data_re_T_1[4:0] ? reg_delay_im_17 : _GEN_48; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_50 = 5'h12 == _io_out_data_re_T_1[4:0] ? reg_delay_im_18 : _GEN_49; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_51 = 5'h13 == _io_out_data_re_T_1[4:0] ? reg_delay_im_19 : _GEN_50; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_52 = 5'h14 == _io_out_data_re_T_1[4:0] ? reg_delay_im_20 : _GEN_51; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_53 = 5'h15 == _io_out_data_re_T_1[4:0] ? reg_delay_im_21 : _GEN_52; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_54 = 5'h16 == _io_out_data_re_T_1[4:0] ? reg_delay_im_22 : _GEN_53; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_55 = 5'h17 == _io_out_data_re_T_1[4:0] ? reg_delay_im_23 : _GEN_54; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_56 = 5'h18 == _io_out_data_re_T_1[4:0] ? reg_delay_im_24 : _GEN_55; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_57 = 5'h19 == _io_out_data_re_T_1[4:0] ? reg_delay_im_25 : _GEN_56; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_58 = 5'h1a == _io_out_data_re_T_1[4:0] ? reg_delay_im_26 : _GEN_57; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_59 = 5'h1b == _io_out_data_re_T_1[4:0] ? reg_delay_im_27 : _GEN_58; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_60 = 5'h1c == _io_out_data_re_T_1[4:0] ? reg_delay_im_28 : _GEN_59; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_61 = 5'h1d == _io_out_data_re_T_1[4:0] ? reg_delay_im_29 : _GEN_60; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_62 = 5'h1e == _io_out_data_re_T_1[4:0] ? reg_delay_im_30 : _GEN_61; // @[Delay.scala 27:{20,20}]
  assign io_out_data_re = 5'h1f == _io_out_data_re_T_1[4:0] ? reg_delay_re_31 : _GEN_30; // @[Delay.scala 26:{20,20}]
  assign io_out_data_im = 5'h1f == _io_out_data_re_T_1[4:0] ? reg_delay_im_31 : _GEN_62; // @[Delay.scala 27:{20,20}]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_0 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_0 <= io_in_data_re; // @[Delay.scala 20:21]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_1 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_1 <= reg_delay_re_0; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_2 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_2 <= reg_delay_re_1; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_3 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_3 <= reg_delay_re_2; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_4 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_4 <= reg_delay_re_3; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_5 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_5 <= reg_delay_re_4; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_6 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_6 <= reg_delay_re_5; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_7 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_7 <= reg_delay_re_6; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_8 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_8 <= reg_delay_re_7; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_9 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_9 <= reg_delay_re_8; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_10 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_10 <= reg_delay_re_9; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_11 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_11 <= reg_delay_re_10; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_12 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_12 <= reg_delay_re_11; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_13 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_13 <= reg_delay_re_12; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_14 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_14 <= reg_delay_re_13; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_15 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_15 <= reg_delay_re_14; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_16 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_16 <= reg_delay_re_15; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_17 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_17 <= reg_delay_re_16; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_18 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_18 <= reg_delay_re_17; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_19 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_19 <= reg_delay_re_18; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_20 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_20 <= reg_delay_re_19; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_21 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_21 <= reg_delay_re_20; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_22 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_22 <= reg_delay_re_21; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_23 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_23 <= reg_delay_re_22; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_24 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_24 <= reg_delay_re_23; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_25 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_25 <= reg_delay_re_24; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_26 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_26 <= reg_delay_re_25; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_27 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_27 <= reg_delay_re_26; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_28 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_28 <= reg_delay_re_27; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_29 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_29 <= reg_delay_re_28; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_30 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_30 <= reg_delay_re_29; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_31 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_31 <= reg_delay_re_30; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_0 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_0 <= io_in_data_im; // @[Delay.scala 21:21]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_1 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_1 <= reg_delay_im_0; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_2 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_2 <= reg_delay_im_1; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_3 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_3 <= reg_delay_im_2; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_4 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_4 <= reg_delay_im_3; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_5 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_5 <= reg_delay_im_4; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_6 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_6 <= reg_delay_im_5; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_7 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_7 <= reg_delay_im_6; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_8 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_8 <= reg_delay_im_7; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_9 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_9 <= reg_delay_im_8; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_10 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_10 <= reg_delay_im_9; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_11 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_11 <= reg_delay_im_10; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_12 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_12 <= reg_delay_im_11; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_13 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_13 <= reg_delay_im_12; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_14 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_14 <= reg_delay_im_13; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_15 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_15 <= reg_delay_im_14; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_16 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_16 <= reg_delay_im_15; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_17 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_17 <= reg_delay_im_16; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_18 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_18 <= reg_delay_im_17; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_19 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_19 <= reg_delay_im_18; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_20 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_20 <= reg_delay_im_19; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_21 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_21 <= reg_delay_im_20; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_22 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_22 <= reg_delay_im_21; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_23 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_23 <= reg_delay_im_22; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_24 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_24 <= reg_delay_im_23; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_25 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_25 <= reg_delay_im_24; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_26 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_26 <= reg_delay_im_25; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_27 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_27 <= reg_delay_im_26; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_28 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_28 <= reg_delay_im_27; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_29 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_29 <= reg_delay_im_28; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_30 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_30 <= reg_delay_im_29; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_31 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_31 <= reg_delay_im_30; // @[Delay.scala 24:23]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_re_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  reg_delay_re_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  reg_delay_re_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  reg_delay_re_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  reg_delay_re_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  reg_delay_re_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  reg_delay_re_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  reg_delay_re_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  reg_delay_re_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  reg_delay_re_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  reg_delay_re_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  reg_delay_re_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  reg_delay_re_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  reg_delay_re_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  reg_delay_re_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  reg_delay_re_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  reg_delay_re_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  reg_delay_re_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  reg_delay_re_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  reg_delay_re_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  reg_delay_re_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  reg_delay_re_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  reg_delay_re_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  reg_delay_re_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  reg_delay_re_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  reg_delay_re_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  reg_delay_re_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  reg_delay_re_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  reg_delay_re_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  reg_delay_re_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  reg_delay_re_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  reg_delay_re_31 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  reg_delay_im_0 = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  reg_delay_im_1 = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  reg_delay_im_2 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  reg_delay_im_3 = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  reg_delay_im_4 = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  reg_delay_im_5 = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  reg_delay_im_6 = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  reg_delay_im_7 = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  reg_delay_im_8 = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  reg_delay_im_9 = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  reg_delay_im_10 = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  reg_delay_im_11 = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  reg_delay_im_12 = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  reg_delay_im_13 = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  reg_delay_im_14 = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  reg_delay_im_15 = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  reg_delay_im_16 = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  reg_delay_im_17 = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  reg_delay_im_18 = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  reg_delay_im_19 = _RAND_51[31:0];
  _RAND_52 = {1{`RANDOM}};
  reg_delay_im_20 = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  reg_delay_im_21 = _RAND_53[31:0];
  _RAND_54 = {1{`RANDOM}};
  reg_delay_im_22 = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  reg_delay_im_23 = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  reg_delay_im_24 = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  reg_delay_im_25 = _RAND_57[31:0];
  _RAND_58 = {1{`RANDOM}};
  reg_delay_im_26 = _RAND_58[31:0];
  _RAND_59 = {1{`RANDOM}};
  reg_delay_im_27 = _RAND_59[31:0];
  _RAND_60 = {1{`RANDOM}};
  reg_delay_im_28 = _RAND_60[31:0];
  _RAND_61 = {1{`RANDOM}};
  reg_delay_im_29 = _RAND_61[31:0];
  _RAND_62 = {1{`RANDOM}};
  reg_delay_im_30 = _RAND_62[31:0];
  _RAND_63 = {1{`RANDOM}};
  reg_delay_im_31 = _RAND_63[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module BF1_Dyn_blackbox(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_a_re,
  input  [31:0] io_in_data_a_im,
  input  [31:0] io_in_data_b_re,
  input  [31:0] io_in_data_b_im,
  input         io_ready,
  output [31:0] io_out_data_add_re,
  output [31:0] io_out_data_add_im,
  output [31:0] io_out_data_mul_re,
  output [31:0] io_out_data_mul_im,
  output        io_valid
);
  wire  Mul_clock; // @[BF1_Dyn.scala 32:19]
  wire [31:0] Mul_io_op1_re; // @[BF1_Dyn.scala 32:19]
  wire [31:0] Mul_io_op1_im; // @[BF1_Dyn.scala 32:19]
  wire [31:0] Mul_io_op2_re; // @[BF1_Dyn.scala 32:19]
  wire [31:0] Mul_io_op2_im; // @[BF1_Dyn.scala 32:19]
  wire  Mul_io_ready; // @[BF1_Dyn.scala 32:19]
  wire  Mul_io_valid; // @[BF1_Dyn.scala 32:19]
  wire [31:0] Mul_io_res_re; // @[BF1_Dyn.scala 32:19]
  wire [31:0] Mul_io_res_im; // @[BF1_Dyn.scala 32:19]
  wire  Add_clock; // @[BF1_Dyn.scala 33:19]
  wire [31:0] Add_io_op1_re; // @[BF1_Dyn.scala 33:19]
  wire [31:0] Add_io_op1_im; // @[BF1_Dyn.scala 33:19]
  wire [31:0] Add_io_op2_re; // @[BF1_Dyn.scala 33:19]
  wire [31:0] Add_io_op2_im; // @[BF1_Dyn.scala 33:19]
  wire [31:0] Add_io_res_re; // @[BF1_Dyn.scala 33:19]
  wire [31:0] Add_io_res_im; // @[BF1_Dyn.scala 33:19]
  wire  Add_io_ready; // @[BF1_Dyn.scala 33:19]
  wire  Sub_clock; // @[BF1_Dyn.scala 34:19]
  wire [31:0] Sub_io_op1_re; // @[BF1_Dyn.scala 34:19]
  wire [31:0] Sub_io_op1_im; // @[BF1_Dyn.scala 34:19]
  wire [31:0] Sub_io_op2_re; // @[BF1_Dyn.scala 34:19]
  wire [31:0] Sub_io_op2_im; // @[BF1_Dyn.scala 34:19]
  wire [31:0] Sub_io_res_re; // @[BF1_Dyn.scala 34:19]
  wire [31:0] Sub_io_res_im; // @[BF1_Dyn.scala 34:19]
  wire  Sub_io_ready; // @[BF1_Dyn.scala 34:19]
  wire  Sub_io_valid; // @[BF1_Dyn.scala 34:19]
  wire  twiddle_Address_BF_4_1_clock; // @[BF1_Dyn.scala 87:38]
  wire  twiddle_Address_BF_4_1_reset; // @[BF1_Dyn.scala 87:38]
  wire  twiddle_Address_BF_4_1_io_ready; // @[BF1_Dyn.scala 87:38]
  wire [31:0] twiddle_Address_BF_4_1_io_counter; // @[BF1_Dyn.scala 87:38]
  wire [31:0] twiddle_Address_BF_4_1_io_address; // @[BF1_Dyn.scala 87:38]
  wire  io_out_data_add_delay_clock; // @[Delay.scala 34:23]
  wire  io_out_data_add_delay_reset; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_in_data_re; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_in_data_im; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_out_data_re; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_out_data_im; // @[Delay.scala 34:23]
  wire [31:0] _GEN_1 = 4'h1 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'h3f7b14be : 32'h3f800000; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_2 = 4'h2 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'h3f6c835e : _GEN_1; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_3 = 4'h3 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'h3f54db31 : _GEN_2; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_4 = 4'h4 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'h3f3504f3 : _GEN_3; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_5 = 4'h5 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'h3f0e39da : _GEN_4; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_6 = 4'h6 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'h3ec3ef15 : _GEN_5; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_7 = 4'h7 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'h3e47c5c2 : _GEN_6; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_8 = 4'h8 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'h0 : _GEN_7; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_9 = 4'h9 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbe47c5c2 : _GEN_8; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_10 = 4'ha == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbec3ef15 : _GEN_9; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_11 = 4'hb == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf0e39da : _GEN_10; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_12 = 4'hc == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf3504f3 : _GEN_11; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_13 = 4'hd == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf54db31 : _GEN_12; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_14 = 4'he == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf6c835e : _GEN_13; // @[BF1_Dyn.scala 100:{17,17}]
  wire [31:0] _GEN_17 = 4'h1 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbe47c5c2 : 32'h0; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_18 = 4'h2 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbec3ef15 : _GEN_17; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_19 = 4'h3 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf0e39da : _GEN_18; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_20 = 4'h4 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf3504f3 : _GEN_19; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_21 = 4'h5 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf54db31 : _GEN_20; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_22 = 4'h6 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf6c835e : _GEN_21; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_23 = 4'h7 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf7b14be : _GEN_22; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_24 = 4'h8 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf800000 : _GEN_23; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_25 = 4'h9 == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf7b14be : _GEN_24; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_26 = 4'ha == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf6c835e : _GEN_25; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_27 = 4'hb == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf54db31 : _GEN_26; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_28 = 4'hc == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf3504f3 : _GEN_27; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_29 = 4'hd == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf0e39da : _GEN_28; // @[BF1_Dyn.scala 101:{17,17}]
  wire [31:0] _GEN_30 = 4'he == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbec3ef15 : _GEN_29; // @[BF1_Dyn.scala 101:{17,17}]
  Ip_ComplexMul_blackbox_wrapper Mul ( // @[BF1_Dyn.scala 32:19]
    .clock(Mul_clock),
    .io_op1_re(Mul_io_op1_re),
    .io_op1_im(Mul_io_op1_im),
    .io_op2_re(Mul_io_op2_re),
    .io_op2_im(Mul_io_op2_im),
    .io_ready(Mul_io_ready),
    .io_valid(Mul_io_valid),
    .io_res_re(Mul_io_res_re),
    .io_res_im(Mul_io_res_im)
  );
  FPComplexAdd_blackbox Add ( // @[BF1_Dyn.scala 33:19]
    .clock(Add_clock),
    .io_op1_re(Add_io_op1_re),
    .io_op1_im(Add_io_op1_im),
    .io_op2_re(Add_io_op2_re),
    .io_op2_im(Add_io_op2_im),
    .io_res_re(Add_io_res_re),
    .io_res_im(Add_io_res_im),
    .io_ready(Add_io_ready)
  );
  FPComplexSub_blackbox Sub ( // @[BF1_Dyn.scala 34:19]
    .clock(Sub_clock),
    .io_op1_re(Sub_io_op1_re),
    .io_op1_im(Sub_io_op1_im),
    .io_op2_re(Sub_io_op2_re),
    .io_op2_im(Sub_io_op2_im),
    .io_res_re(Sub_io_res_re),
    .io_res_im(Sub_io_res_im),
    .io_ready(Sub_io_ready),
    .io_valid(Sub_io_valid)
  );
  Twiddle_Address twiddle_Address_BF_4_1 ( // @[BF1_Dyn.scala 87:38]
    .clock(twiddle_Address_BF_4_1_clock),
    .reset(twiddle_Address_BF_4_1_reset),
    .io_ready(twiddle_Address_BF_4_1_io_ready),
    .io_counter(twiddle_Address_BF_4_1_io_counter),
    .io_address(twiddle_Address_BF_4_1_io_address)
  );
  Delay io_out_data_add_delay ( // @[Delay.scala 34:23]
    .clock(io_out_data_add_delay_clock),
    .reset(io_out_data_add_delay_reset),
    .io_in_data_re(io_out_data_add_delay_io_in_data_re),
    .io_in_data_im(io_out_data_add_delay_io_in_data_im),
    .io_out_data_re(io_out_data_add_delay_io_out_data_re),
    .io_out_data_im(io_out_data_add_delay_io_out_data_im)
  );
  assign io_out_data_add_re = io_out_data_add_delay_io_out_data_re; // @[BF1_Dyn.scala 107:19]
  assign io_out_data_add_im = io_out_data_add_delay_io_out_data_im; // @[BF1_Dyn.scala 107:19]
  assign io_out_data_mul_re = Mul_io_res_re; // @[BF1_Dyn.scala 102:19]
  assign io_out_data_mul_im = Mul_io_res_im; // @[BF1_Dyn.scala 102:19]
  assign io_valid = Mul_io_valid; // @[BF1_Dyn.scala 103:12]
  assign Mul_clock = clock;
  assign Mul_io_op1_re = Sub_io_res_re; // @[BF1_Dyn.scala 99:14]
  assign Mul_io_op1_im = Sub_io_res_im; // @[BF1_Dyn.scala 99:14]
  assign Mul_io_op2_re = 4'hf == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbf7b14be : _GEN_14; // @[BF1_Dyn.scala 100:{17,17}]
  assign Mul_io_op2_im = 4'hf == twiddle_Address_BF_4_1_io_address[3:0] ? 32'hbe47c5c2 : _GEN_30; // @[BF1_Dyn.scala 101:{17,17}]
  assign Mul_io_ready = Sub_io_valid; // @[BF1_Dyn.scala 98:16]
  assign Add_clock = clock;
  assign Add_io_op1_re = io_in_data_a_re; // @[BF1_Dyn.scala 37:14]
  assign Add_io_op1_im = io_in_data_a_im; // @[BF1_Dyn.scala 37:14]
  assign Add_io_op2_re = io_in_data_b_re; // @[BF1_Dyn.scala 38:14]
  assign Add_io_op2_im = io_in_data_b_im; // @[BF1_Dyn.scala 38:14]
  assign Add_io_ready = io_ready; // @[BF1_Dyn.scala 39:16]
  assign Sub_clock = clock;
  assign Sub_io_op1_re = io_in_data_a_re; // @[BF1_Dyn.scala 41:14]
  assign Sub_io_op1_im = io_in_data_a_im; // @[BF1_Dyn.scala 41:14]
  assign Sub_io_op2_re = io_in_data_b_re; // @[BF1_Dyn.scala 42:14]
  assign Sub_io_op2_im = io_in_data_b_im; // @[BF1_Dyn.scala 42:14]
  assign Sub_io_ready = io_ready; // @[BF1_Dyn.scala 43:16]
  assign twiddle_Address_BF_4_1_clock = clock;
  assign twiddle_Address_BF_4_1_reset = reset;
  assign twiddle_Address_BF_4_1_io_ready = Sub_io_valid; // @[BF1_Dyn.scala 89:35]
  assign twiddle_Address_BF_4_1_io_counter = 32'h10; // @[BF1_Dyn.scala 90:37]
  assign io_out_data_add_delay_clock = clock;
  assign io_out_data_add_delay_reset = reset;
  assign io_out_data_add_delay_io_in_data_re = Add_io_res_re; // @[Delay.scala 35:22]
  assign io_out_data_add_delay_io_in_data_im = Add_io_res_im; // @[Delay.scala 35:22]
endmodule
module Divider_frequency(
  input   clock,
  input   reset,
  input   io_en,
  output  io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] countReg; // @[shuffle.scala 17:25]
  reg  toggleReg; // @[shuffle.scala 18:26]
  wire [3:0] _T_1 = 4'h8 - 4'h1; // @[shuffle.scala 21:35]
  wire [3:0] _countReg_T_1 = countReg + 4'h1; // @[shuffle.scala 25:28]
  assign io_out = toggleReg; // @[shuffle.scala 29:10]
  always @(posedge clock) begin
    if (reset) begin // @[shuffle.scala 17:25]
      countReg <= 4'h0; // @[shuffle.scala 17:25]
    end else if (io_en) begin // @[shuffle.scala 20:15]
      if (countReg == _T_1) begin // @[shuffle.scala 21:41]
        countReg <= 4'h0; // @[shuffle.scala 22:16]
      end else begin
        countReg <= _countReg_T_1; // @[shuffle.scala 25:16]
      end
    end
    if (reset) begin // @[shuffle.scala 18:26]
      toggleReg <= 1'h0; // @[shuffle.scala 18:26]
    end else if (io_en) begin // @[shuffle.scala 20:15]
      if (countReg == _T_1) begin // @[shuffle.scala 21:41]
        toggleReg <= ~toggleReg; // @[shuffle.scala 23:17]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  countReg = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  toggleReg = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delay_1(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_re,
  input  [31:0] io_in_data_im,
  output [31:0] io_out_data_re,
  output [31:0] io_out_data_im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_delay_re_0; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_1; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_2; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_3; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_4; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_5; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_6; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_7; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_im_0; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_1; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_2; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_3; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_4; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_5; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_6; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_7; // @[Delay.scala 19:42]
  wire [3:0] _io_out_data_re_T_1 = 4'h8 - 4'h1; // @[Delay.scala 26:44]
  wire [31:0] _GEN_1 = 3'h1 == _io_out_data_re_T_1[2:0] ? reg_delay_re_1 : reg_delay_re_0; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_2 = 3'h2 == _io_out_data_re_T_1[2:0] ? reg_delay_re_2 : _GEN_1; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_3 = 3'h3 == _io_out_data_re_T_1[2:0] ? reg_delay_re_3 : _GEN_2; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_4 = 3'h4 == _io_out_data_re_T_1[2:0] ? reg_delay_re_4 : _GEN_3; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_5 = 3'h5 == _io_out_data_re_T_1[2:0] ? reg_delay_re_5 : _GEN_4; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_6 = 3'h6 == _io_out_data_re_T_1[2:0] ? reg_delay_re_6 : _GEN_5; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_9 = 3'h1 == _io_out_data_re_T_1[2:0] ? reg_delay_im_1 : reg_delay_im_0; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_10 = 3'h2 == _io_out_data_re_T_1[2:0] ? reg_delay_im_2 : _GEN_9; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_11 = 3'h3 == _io_out_data_re_T_1[2:0] ? reg_delay_im_3 : _GEN_10; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_12 = 3'h4 == _io_out_data_re_T_1[2:0] ? reg_delay_im_4 : _GEN_11; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_13 = 3'h5 == _io_out_data_re_T_1[2:0] ? reg_delay_im_5 : _GEN_12; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_14 = 3'h6 == _io_out_data_re_T_1[2:0] ? reg_delay_im_6 : _GEN_13; // @[Delay.scala 27:{20,20}]
  assign io_out_data_re = 3'h7 == _io_out_data_re_T_1[2:0] ? reg_delay_re_7 : _GEN_6; // @[Delay.scala 26:{20,20}]
  assign io_out_data_im = 3'h7 == _io_out_data_re_T_1[2:0] ? reg_delay_im_7 : _GEN_14; // @[Delay.scala 27:{20,20}]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_0 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_0 <= io_in_data_re; // @[Delay.scala 20:21]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_1 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_1 <= reg_delay_re_0; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_2 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_2 <= reg_delay_re_1; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_3 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_3 <= reg_delay_re_2; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_4 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_4 <= reg_delay_re_3; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_5 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_5 <= reg_delay_re_4; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_6 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_6 <= reg_delay_re_5; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_7 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_7 <= reg_delay_re_6; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_0 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_0 <= io_in_data_im; // @[Delay.scala 21:21]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_1 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_1 <= reg_delay_im_0; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_2 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_2 <= reg_delay_im_1; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_3 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_3 <= reg_delay_im_2; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_4 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_4 <= reg_delay_im_3; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_5 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_5 <= reg_delay_im_4; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_6 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_6 <= reg_delay_im_5; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_7 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_7 <= reg_delay_im_6; // @[Delay.scala 24:23]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_re_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  reg_delay_re_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  reg_delay_re_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  reg_delay_re_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  reg_delay_re_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  reg_delay_re_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  reg_delay_re_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  reg_delay_re_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  reg_delay_im_0 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  reg_delay_im_1 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  reg_delay_im_2 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  reg_delay_im_3 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  reg_delay_im_4 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  reg_delay_im_5 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  reg_delay_im_6 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  reg_delay_im_7 = _RAND_15[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Myselect(
  input         io_condition,
  input  [31:0] io_in_data_1_re,
  input  [31:0] io_in_data_1_im,
  input  [31:0] io_in_data_2_re,
  input  [31:0] io_in_data_2_im,
  output [31:0] io_out_data_re,
  output [31:0] io_out_data_im
);
  assign io_out_data_re = io_condition ? io_in_data_1_re : io_in_data_2_re; // @[shuffle.scala 88:24 89:19 91:18]
  assign io_out_data_im = io_condition ? io_in_data_1_im : io_in_data_2_im; // @[shuffle.scala 88:24 89:19 91:18]
endmodule
module Delayu(
  input         clock,
  input         reset,
  input  [31:0] io_in_data,
  output [31:0] io_out_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_delay_0; // @[Delay.scala 50:39]
  reg [31:0] reg_delay_1; // @[Delay.scala 50:39]
  reg [31:0] reg_delay_2; // @[Delay.scala 50:39]
  reg [31:0] reg_delay_3; // @[Delay.scala 50:39]
  reg [31:0] reg_delay_4; // @[Delay.scala 50:39]
  reg [31:0] reg_delay_5; // @[Delay.scala 50:39]
  reg [31:0] reg_delay_6; // @[Delay.scala 50:39]
  reg [31:0] reg_delay_7; // @[Delay.scala 50:39]
  wire [3:0] _io_out_data_T_1 = 4'h8 - 4'h1; // @[Delay.scala 55:38]
  wire [31:0] _GEN_1 = 3'h1 == _io_out_data_T_1[2:0] ? reg_delay_1 : reg_delay_0; // @[Delay.scala 55:{17,17}]
  wire [31:0] _GEN_2 = 3'h2 == _io_out_data_T_1[2:0] ? reg_delay_2 : _GEN_1; // @[Delay.scala 55:{17,17}]
  wire [31:0] _GEN_3 = 3'h3 == _io_out_data_T_1[2:0] ? reg_delay_3 : _GEN_2; // @[Delay.scala 55:{17,17}]
  wire [31:0] _GEN_4 = 3'h4 == _io_out_data_T_1[2:0] ? reg_delay_4 : _GEN_3; // @[Delay.scala 55:{17,17}]
  wire [31:0] _GEN_5 = 3'h5 == _io_out_data_T_1[2:0] ? reg_delay_5 : _GEN_4; // @[Delay.scala 55:{17,17}]
  wire [31:0] _GEN_6 = 3'h6 == _io_out_data_T_1[2:0] ? reg_delay_6 : _GEN_5; // @[Delay.scala 55:{17,17}]
  assign io_out_data = 3'h7 == _io_out_data_T_1[2:0] ? reg_delay_7 : _GEN_6; // @[Delay.scala 55:{17,17}]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_0 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_0 <= io_in_data; // @[Delay.scala 51:18]
    end
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_1 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_1 <= reg_delay_0; // @[Delay.scala 53:20]
    end
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_2 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_2 <= reg_delay_1; // @[Delay.scala 53:20]
    end
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_3 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_3 <= reg_delay_2; // @[Delay.scala 53:20]
    end
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_4 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_4 <= reg_delay_3; // @[Delay.scala 53:20]
    end
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_5 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_5 <= reg_delay_4; // @[Delay.scala 53:20]
    end
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_6 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_6 <= reg_delay_5; // @[Delay.scala 53:20]
    end
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_7 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_7 <= reg_delay_6; // @[Delay.scala 53:20]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  reg_delay_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  reg_delay_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  reg_delay_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  reg_delay_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  reg_delay_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  reg_delay_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  reg_delay_7 = _RAND_7[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delayb_1(
  input   clock,
  input   reset,
  input   io_in_data,
  output  io_out_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg  reg_delay_0; // @[Delay.scala 101:39]
  reg  reg_delay_1; // @[Delay.scala 101:39]
  reg  reg_delay_2; // @[Delay.scala 101:39]
  reg  reg_delay_3; // @[Delay.scala 101:39]
  reg  reg_delay_4; // @[Delay.scala 101:39]
  reg  reg_delay_5; // @[Delay.scala 101:39]
  reg  reg_delay_6; // @[Delay.scala 101:39]
  reg  reg_delay_7; // @[Delay.scala 101:39]
  wire [3:0] _io_out_data_T_1 = 4'h8 - 4'h1; // @[Delay.scala 106:38]
  wire  _GEN_1 = 3'h1 == _io_out_data_T_1[2:0] ? reg_delay_1 : reg_delay_0; // @[Delay.scala 106:{17,17}]
  wire  _GEN_2 = 3'h2 == _io_out_data_T_1[2:0] ? reg_delay_2 : _GEN_1; // @[Delay.scala 106:{17,17}]
  wire  _GEN_3 = 3'h3 == _io_out_data_T_1[2:0] ? reg_delay_3 : _GEN_2; // @[Delay.scala 106:{17,17}]
  wire  _GEN_4 = 3'h4 == _io_out_data_T_1[2:0] ? reg_delay_4 : _GEN_3; // @[Delay.scala 106:{17,17}]
  wire  _GEN_5 = 3'h5 == _io_out_data_T_1[2:0] ? reg_delay_5 : _GEN_4; // @[Delay.scala 106:{17,17}]
  wire  _GEN_6 = 3'h6 == _io_out_data_T_1[2:0] ? reg_delay_6 : _GEN_5; // @[Delay.scala 106:{17,17}]
  assign io_out_data = 3'h7 == _io_out_data_T_1[2:0] ? reg_delay_7 : _GEN_6; // @[Delay.scala 106:{17,17}]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_0 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_0 <= io_in_data; // @[Delay.scala 102:18]
    end
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_1 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_1 <= reg_delay_0; // @[Delay.scala 104:20]
    end
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_2 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_2 <= reg_delay_1; // @[Delay.scala 104:20]
    end
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_3 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_3 <= reg_delay_2; // @[Delay.scala 104:20]
    end
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_4 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_4 <= reg_delay_3; // @[Delay.scala 104:20]
    end
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_5 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_5 <= reg_delay_4; // @[Delay.scala 104:20]
    end
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_6 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_6 <= reg_delay_5; // @[Delay.scala 104:20]
    end
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_7 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_7 <= reg_delay_6; // @[Delay.scala 104:20]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  reg_delay_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  reg_delay_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  reg_delay_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  reg_delay_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  reg_delay_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  reg_delay_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  reg_delay_7 = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module shuffle(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_add_re,
  input  [31:0] io_in_data_add_im,
  input  [31:0] io_in_data_mul_re,
  input  [31:0] io_in_data_mul_im,
  input         io_ready,
  output        io_valid,
  output [31:0] io_out_delay_data_add_re,
  output [31:0] io_out_delay_data_add_im,
  output [31:0] io_out_delay_data_mul_re,
  output [31:0] io_out_delay_data_mul_im
);
  wire  condition_div_clock; // @[shuffle.scala 66:21]
  wire  condition_div_reset; // @[shuffle.scala 66:21]
  wire  condition_div_io_en; // @[shuffle.scala 66:21]
  wire  condition_div_io_out; // @[shuffle.scala 66:21]
  wire  mul_delay_delay_clock; // @[Delay.scala 34:23]
  wire  mul_delay_delay_reset; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_in_data_re; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_in_data_im; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_out_data_re; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_out_data_im; // @[Delay.scala 34:23]
  wire  mux_add_io_condition; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_1_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_1_im; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_2_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_2_im; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_out_data_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_out_data_im; // @[shuffle.scala 120:23]
  wire  mux_mul_io_condition; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_1_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_1_im; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_2_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_2_im; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_out_data_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_out_data_im; // @[shuffle.scala 121:23]
  wire  io_out_delay_data_add_re_delay_clock; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_re_delay_reset; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_re_delay_io_in_data; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_re_delay_io_out_data; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_im_delay_clock; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_im_delay_reset; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_im_delay_io_in_data; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_im_delay_io_out_data; // @[Delay.scala 60:23]
  wire  io_valid_delay_clock; // @[Delay.scala 111:23]
  wire  io_valid_delay_reset; // @[Delay.scala 111:23]
  wire  io_valid_delay_io_in_data; // @[Delay.scala 111:23]
  wire  io_valid_delay_io_out_data; // @[Delay.scala 111:23]
  Divider_frequency condition_div ( // @[shuffle.scala 66:21]
    .clock(condition_div_clock),
    .reset(condition_div_reset),
    .io_en(condition_div_io_en),
    .io_out(condition_div_io_out)
  );
  Delay_1 mul_delay_delay ( // @[Delay.scala 34:23]
    .clock(mul_delay_delay_clock),
    .reset(mul_delay_delay_reset),
    .io_in_data_re(mul_delay_delay_io_in_data_re),
    .io_in_data_im(mul_delay_delay_io_in_data_im),
    .io_out_data_re(mul_delay_delay_io_out_data_re),
    .io_out_data_im(mul_delay_delay_io_out_data_im)
  );
  Myselect mux_add ( // @[shuffle.scala 120:23]
    .io_condition(mux_add_io_condition),
    .io_in_data_1_re(mux_add_io_in_data_1_re),
    .io_in_data_1_im(mux_add_io_in_data_1_im),
    .io_in_data_2_re(mux_add_io_in_data_2_re),
    .io_in_data_2_im(mux_add_io_in_data_2_im),
    .io_out_data_re(mux_add_io_out_data_re),
    .io_out_data_im(mux_add_io_out_data_im)
  );
  Myselect mux_mul ( // @[shuffle.scala 121:23]
    .io_condition(mux_mul_io_condition),
    .io_in_data_1_re(mux_mul_io_in_data_1_re),
    .io_in_data_1_im(mux_mul_io_in_data_1_im),
    .io_in_data_2_re(mux_mul_io_in_data_2_re),
    .io_in_data_2_im(mux_mul_io_in_data_2_im),
    .io_out_data_re(mux_mul_io_out_data_re),
    .io_out_data_im(mux_mul_io_out_data_im)
  );
  Delayu io_out_delay_data_add_re_delay ( // @[Delay.scala 60:23]
    .clock(io_out_delay_data_add_re_delay_clock),
    .reset(io_out_delay_data_add_re_delay_reset),
    .io_in_data(io_out_delay_data_add_re_delay_io_in_data),
    .io_out_data(io_out_delay_data_add_re_delay_io_out_data)
  );
  Delayu io_out_delay_data_add_im_delay ( // @[Delay.scala 60:23]
    .clock(io_out_delay_data_add_im_delay_clock),
    .reset(io_out_delay_data_add_im_delay_reset),
    .io_in_data(io_out_delay_data_add_im_delay_io_in_data),
    .io_out_data(io_out_delay_data_add_im_delay_io_out_data)
  );
  Delayb_1 io_valid_delay ( // @[Delay.scala 111:23]
    .clock(io_valid_delay_clock),
    .reset(io_valid_delay_reset),
    .io_in_data(io_valid_delay_io_in_data),
    .io_out_data(io_valid_delay_io_out_data)
  );
  assign io_valid = io_valid_delay_io_out_data; // @[shuffle.scala 138:12]
  assign io_out_delay_data_add_re = io_out_delay_data_add_re_delay_io_out_data; // @[shuffle.scala 133:28]
  assign io_out_delay_data_add_im = io_out_delay_data_add_im_delay_io_out_data; // @[shuffle.scala 134:28]
  assign io_out_delay_data_mul_re = mux_mul_io_out_data_re; // @[shuffle.scala 135:25]
  assign io_out_delay_data_mul_im = mux_mul_io_out_data_im; // @[shuffle.scala 135:25]
  assign condition_div_clock = clock;
  assign condition_div_reset = reset;
  assign condition_div_io_en = io_ready; // @[shuffle.scala 67:15]
  assign mul_delay_delay_clock = clock;
  assign mul_delay_delay_reset = reset;
  assign mul_delay_delay_io_in_data_re = io_in_data_mul_re; // @[Delay.scala 35:22]
  assign mul_delay_delay_io_in_data_im = io_in_data_mul_im; // @[Delay.scala 35:22]
  assign mux_add_io_condition = condition_div_io_out; // @[shuffle.scala 123:24]
  assign mux_add_io_in_data_1_re = mul_delay_delay_io_out_data_re; // @[shuffle.scala 124:24]
  assign mux_add_io_in_data_1_im = mul_delay_delay_io_out_data_im; // @[shuffle.scala 124:24]
  assign mux_add_io_in_data_2_re = io_in_data_add_re; // @[shuffle.scala 125:24]
  assign mux_add_io_in_data_2_im = io_in_data_add_im; // @[shuffle.scala 125:24]
  assign mux_mul_io_condition = condition_div_io_out; // @[shuffle.scala 128:24]
  assign mux_mul_io_in_data_1_re = io_in_data_add_re; // @[shuffle.scala 129:24]
  assign mux_mul_io_in_data_1_im = io_in_data_add_im; // @[shuffle.scala 129:24]
  assign mux_mul_io_in_data_2_re = mul_delay_delay_io_out_data_re; // @[shuffle.scala 130:24]
  assign mux_mul_io_in_data_2_im = mul_delay_delay_io_out_data_im; // @[shuffle.scala 130:24]
  assign io_out_delay_data_add_re_delay_clock = clock;
  assign io_out_delay_data_add_re_delay_reset = reset;
  assign io_out_delay_data_add_re_delay_io_in_data = mux_add_io_out_data_re; // @[Delay.scala 61:22]
  assign io_out_delay_data_add_im_delay_clock = clock;
  assign io_out_delay_data_add_im_delay_reset = reset;
  assign io_out_delay_data_add_im_delay_io_in_data = mux_add_io_out_data_im; // @[Delay.scala 61:22]
  assign io_valid_delay_clock = clock;
  assign io_valid_delay_reset = reset;
  assign io_valid_delay_io_in_data = io_ready; // @[Delay.scala 112:22]
endmodule
module BF2_Dyn_blackbox(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_a_re,
  input  [31:0] io_in_data_a_im,
  input  [31:0] io_in_data_b_re,
  input  [31:0] io_in_data_b_im,
  input         io_ready,
  output [31:0] io_out_data_add_re,
  output [31:0] io_out_data_add_im,
  output [31:0] io_out_data_mul_re,
  output [31:0] io_out_data_mul_im,
  output        io_valid
);
  wire  Mul_clock; // @[BF2_Dyn.scala 32:19]
  wire [31:0] Mul_io_op1_re; // @[BF2_Dyn.scala 32:19]
  wire [31:0] Mul_io_op1_im; // @[BF2_Dyn.scala 32:19]
  wire [31:0] Mul_io_op2_re; // @[BF2_Dyn.scala 32:19]
  wire [31:0] Mul_io_op2_im; // @[BF2_Dyn.scala 32:19]
  wire  Mul_io_ready; // @[BF2_Dyn.scala 32:19]
  wire  Mul_io_valid; // @[BF2_Dyn.scala 32:19]
  wire [31:0] Mul_io_res_re; // @[BF2_Dyn.scala 32:19]
  wire [31:0] Mul_io_res_im; // @[BF2_Dyn.scala 32:19]
  wire  Add_clock; // @[BF2_Dyn.scala 33:19]
  wire [31:0] Add_io_op1_re; // @[BF2_Dyn.scala 33:19]
  wire [31:0] Add_io_op1_im; // @[BF2_Dyn.scala 33:19]
  wire [31:0] Add_io_op2_re; // @[BF2_Dyn.scala 33:19]
  wire [31:0] Add_io_op2_im; // @[BF2_Dyn.scala 33:19]
  wire [31:0] Add_io_res_re; // @[BF2_Dyn.scala 33:19]
  wire [31:0] Add_io_res_im; // @[BF2_Dyn.scala 33:19]
  wire  Add_io_ready; // @[BF2_Dyn.scala 33:19]
  wire  Sub_clock; // @[BF2_Dyn.scala 34:19]
  wire [31:0] Sub_io_op1_re; // @[BF2_Dyn.scala 34:19]
  wire [31:0] Sub_io_op1_im; // @[BF2_Dyn.scala 34:19]
  wire [31:0] Sub_io_op2_re; // @[BF2_Dyn.scala 34:19]
  wire [31:0] Sub_io_op2_im; // @[BF2_Dyn.scala 34:19]
  wire [31:0] Sub_io_res_re; // @[BF2_Dyn.scala 34:19]
  wire [31:0] Sub_io_res_im; // @[BF2_Dyn.scala 34:19]
  wire  Sub_io_ready; // @[BF2_Dyn.scala 34:19]
  wire  Sub_io_valid; // @[BF2_Dyn.scala 34:19]
  wire  twiddle_Address_BF_4_2_clock; // @[BF2_Dyn.scala 71:38]
  wire  twiddle_Address_BF_4_2_reset; // @[BF2_Dyn.scala 71:38]
  wire  twiddle_Address_BF_4_2_io_ready; // @[BF2_Dyn.scala 71:38]
  wire [31:0] twiddle_Address_BF_4_2_io_counter; // @[BF2_Dyn.scala 71:38]
  wire [31:0] twiddle_Address_BF_4_2_io_address; // @[BF2_Dyn.scala 71:38]
  wire  io_out_data_add_delay_clock; // @[Delay.scala 34:23]
  wire  io_out_data_add_delay_reset; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_in_data_re; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_in_data_im; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_out_data_re; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_out_data_im; // @[Delay.scala 34:23]
  wire [31:0] _GEN_1 = 3'h1 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'h3f6c835e : 32'h3f800000; // @[BF2_Dyn.scala 84:{17,17}]
  wire [31:0] _GEN_2 = 3'h2 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'h3f3504f3 : _GEN_1; // @[BF2_Dyn.scala 84:{17,17}]
  wire [31:0] _GEN_3 = 3'h3 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'h3ec3ef15 : _GEN_2; // @[BF2_Dyn.scala 84:{17,17}]
  wire [31:0] _GEN_4 = 3'h4 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'h0 : _GEN_3; // @[BF2_Dyn.scala 84:{17,17}]
  wire [31:0] _GEN_5 = 3'h5 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'hbec3ef15 : _GEN_4; // @[BF2_Dyn.scala 84:{17,17}]
  wire [31:0] _GEN_6 = 3'h6 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'hbf3504f3 : _GEN_5; // @[BF2_Dyn.scala 84:{17,17}]
  wire [31:0] _GEN_9 = 3'h1 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'hbec3ef15 : 32'h0; // @[BF2_Dyn.scala 85:{17,17}]
  wire [31:0] _GEN_10 = 3'h2 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'hbf3504f3 : _GEN_9; // @[BF2_Dyn.scala 85:{17,17}]
  wire [31:0] _GEN_11 = 3'h3 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'hbf6c835e : _GEN_10; // @[BF2_Dyn.scala 85:{17,17}]
  wire [31:0] _GEN_12 = 3'h4 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'hbf800000 : _GEN_11; // @[BF2_Dyn.scala 85:{17,17}]
  wire [31:0] _GEN_13 = 3'h5 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'hbf6c835e : _GEN_12; // @[BF2_Dyn.scala 85:{17,17}]
  wire [31:0] _GEN_14 = 3'h6 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'hbf3504f3 : _GEN_13; // @[BF2_Dyn.scala 85:{17,17}]
  Ip_ComplexMul_blackbox_wrapper Mul ( // @[BF2_Dyn.scala 32:19]
    .clock(Mul_clock),
    .io_op1_re(Mul_io_op1_re),
    .io_op1_im(Mul_io_op1_im),
    .io_op2_re(Mul_io_op2_re),
    .io_op2_im(Mul_io_op2_im),
    .io_ready(Mul_io_ready),
    .io_valid(Mul_io_valid),
    .io_res_re(Mul_io_res_re),
    .io_res_im(Mul_io_res_im)
  );
  FPComplexAdd_blackbox Add ( // @[BF2_Dyn.scala 33:19]
    .clock(Add_clock),
    .io_op1_re(Add_io_op1_re),
    .io_op1_im(Add_io_op1_im),
    .io_op2_re(Add_io_op2_re),
    .io_op2_im(Add_io_op2_im),
    .io_res_re(Add_io_res_re),
    .io_res_im(Add_io_res_im),
    .io_ready(Add_io_ready)
  );
  FPComplexSub_blackbox Sub ( // @[BF2_Dyn.scala 34:19]
    .clock(Sub_clock),
    .io_op1_re(Sub_io_op1_re),
    .io_op1_im(Sub_io_op1_im),
    .io_op2_re(Sub_io_op2_re),
    .io_op2_im(Sub_io_op2_im),
    .io_res_re(Sub_io_res_re),
    .io_res_im(Sub_io_res_im),
    .io_ready(Sub_io_ready),
    .io_valid(Sub_io_valid)
  );
  Twiddle_Address twiddle_Address_BF_4_2 ( // @[BF2_Dyn.scala 71:38]
    .clock(twiddle_Address_BF_4_2_clock),
    .reset(twiddle_Address_BF_4_2_reset),
    .io_ready(twiddle_Address_BF_4_2_io_ready),
    .io_counter(twiddle_Address_BF_4_2_io_counter),
    .io_address(twiddle_Address_BF_4_2_io_address)
  );
  Delay io_out_data_add_delay ( // @[Delay.scala 34:23]
    .clock(io_out_data_add_delay_clock),
    .reset(io_out_data_add_delay_reset),
    .io_in_data_re(io_out_data_add_delay_io_in_data_re),
    .io_in_data_im(io_out_data_add_delay_io_in_data_im),
    .io_out_data_re(io_out_data_add_delay_io_out_data_re),
    .io_out_data_im(io_out_data_add_delay_io_out_data_im)
  );
  assign io_out_data_add_re = io_out_data_add_delay_io_out_data_re; // @[BF2_Dyn.scala 91:19]
  assign io_out_data_add_im = io_out_data_add_delay_io_out_data_im; // @[BF2_Dyn.scala 91:19]
  assign io_out_data_mul_re = Mul_io_res_re; // @[BF2_Dyn.scala 86:19]
  assign io_out_data_mul_im = Mul_io_res_im; // @[BF2_Dyn.scala 86:19]
  assign io_valid = Mul_io_valid; // @[BF2_Dyn.scala 87:12]
  assign Mul_clock = clock;
  assign Mul_io_op1_re = Sub_io_res_re; // @[BF2_Dyn.scala 83:14]
  assign Mul_io_op1_im = Sub_io_res_im; // @[BF2_Dyn.scala 83:14]
  assign Mul_io_op2_re = 3'h7 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'hbf6c835e : _GEN_6; // @[BF2_Dyn.scala 84:{17,17}]
  assign Mul_io_op2_im = 3'h7 == twiddle_Address_BF_4_2_io_address[2:0] ? 32'hbec3ef15 : _GEN_14; // @[BF2_Dyn.scala 85:{17,17}]
  assign Mul_io_ready = Sub_io_valid; // @[BF2_Dyn.scala 82:16]
  assign Add_clock = clock;
  assign Add_io_op1_re = io_in_data_a_re; // @[BF2_Dyn.scala 37:14]
  assign Add_io_op1_im = io_in_data_a_im; // @[BF2_Dyn.scala 37:14]
  assign Add_io_op2_re = io_in_data_b_re; // @[BF2_Dyn.scala 38:14]
  assign Add_io_op2_im = io_in_data_b_im; // @[BF2_Dyn.scala 38:14]
  assign Add_io_ready = io_ready; // @[BF2_Dyn.scala 39:16]
  assign Sub_clock = clock;
  assign Sub_io_op1_re = io_in_data_a_re; // @[BF2_Dyn.scala 41:14]
  assign Sub_io_op1_im = io_in_data_a_im; // @[BF2_Dyn.scala 41:14]
  assign Sub_io_op2_re = io_in_data_b_re; // @[BF2_Dyn.scala 42:14]
  assign Sub_io_op2_im = io_in_data_b_im; // @[BF2_Dyn.scala 42:14]
  assign Sub_io_ready = io_ready; // @[BF2_Dyn.scala 43:16]
  assign twiddle_Address_BF_4_2_clock = clock;
  assign twiddle_Address_BF_4_2_reset = reset;
  assign twiddle_Address_BF_4_2_io_ready = Sub_io_valid; // @[BF2_Dyn.scala 73:35]
  assign twiddle_Address_BF_4_2_io_counter = 32'h8; // @[BF2_Dyn.scala 74:37]
  assign io_out_data_add_delay_clock = clock;
  assign io_out_data_add_delay_reset = reset;
  assign io_out_data_add_delay_io_in_data_re = Add_io_res_re; // @[Delay.scala 35:22]
  assign io_out_data_add_delay_io_in_data_im = Add_io_res_im; // @[Delay.scala 35:22]
endmodule
module Divider_frequency_1(
  input   clock,
  input   reset,
  input   io_en,
  output  io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] countReg; // @[shuffle.scala 17:25]
  reg  toggleReg; // @[shuffle.scala 18:26]
  wire [2:0] _T_1 = 3'h4 - 3'h1; // @[shuffle.scala 21:35]
  wire [2:0] _countReg_T_1 = countReg + 3'h1; // @[shuffle.scala 25:28]
  assign io_out = toggleReg; // @[shuffle.scala 29:10]
  always @(posedge clock) begin
    if (reset) begin // @[shuffle.scala 17:25]
      countReg <= 3'h0; // @[shuffle.scala 17:25]
    end else if (io_en) begin // @[shuffle.scala 20:15]
      if (countReg == _T_1) begin // @[shuffle.scala 21:41]
        countReg <= 3'h0; // @[shuffle.scala 22:16]
      end else begin
        countReg <= _countReg_T_1; // @[shuffle.scala 25:16]
      end
    end
    if (reset) begin // @[shuffle.scala 18:26]
      toggleReg <= 1'h0; // @[shuffle.scala 18:26]
    end else if (io_en) begin // @[shuffle.scala 20:15]
      if (countReg == _T_1) begin // @[shuffle.scala 21:41]
        toggleReg <= ~toggleReg; // @[shuffle.scala 23:17]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  countReg = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  toggleReg = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delay_3(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_re,
  input  [31:0] io_in_data_im,
  output [31:0] io_out_data_re,
  output [31:0] io_out_data_im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_delay_re_0; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_1; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_2; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_3; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_im_0; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_1; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_2; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_3; // @[Delay.scala 19:42]
  wire [2:0] _io_out_data_re_T_1 = 3'h4 - 3'h1; // @[Delay.scala 26:44]
  wire [31:0] _GEN_1 = 2'h1 == _io_out_data_re_T_1[1:0] ? reg_delay_re_1 : reg_delay_re_0; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_2 = 2'h2 == _io_out_data_re_T_1[1:0] ? reg_delay_re_2 : _GEN_1; // @[Delay.scala 26:{20,20}]
  wire [31:0] _GEN_5 = 2'h1 == _io_out_data_re_T_1[1:0] ? reg_delay_im_1 : reg_delay_im_0; // @[Delay.scala 27:{20,20}]
  wire [31:0] _GEN_6 = 2'h2 == _io_out_data_re_T_1[1:0] ? reg_delay_im_2 : _GEN_5; // @[Delay.scala 27:{20,20}]
  assign io_out_data_re = 2'h3 == _io_out_data_re_T_1[1:0] ? reg_delay_re_3 : _GEN_2; // @[Delay.scala 26:{20,20}]
  assign io_out_data_im = 2'h3 == _io_out_data_re_T_1[1:0] ? reg_delay_im_3 : _GEN_6; // @[Delay.scala 27:{20,20}]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_0 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_0 <= io_in_data_re; // @[Delay.scala 20:21]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_1 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_1 <= reg_delay_re_0; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_2 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_2 <= reg_delay_re_1; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_3 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_3 <= reg_delay_re_2; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_0 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_0 <= io_in_data_im; // @[Delay.scala 21:21]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_1 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_1 <= reg_delay_im_0; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_2 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_2 <= reg_delay_im_1; // @[Delay.scala 24:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_3 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_3 <= reg_delay_im_2; // @[Delay.scala 24:23]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_re_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  reg_delay_re_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  reg_delay_re_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  reg_delay_re_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  reg_delay_im_0 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  reg_delay_im_1 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  reg_delay_im_2 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  reg_delay_im_3 = _RAND_7[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delayu_2(
  input         clock,
  input         reset,
  input  [31:0] io_in_data,
  output [31:0] io_out_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_delay_0; // @[Delay.scala 50:39]
  reg [31:0] reg_delay_1; // @[Delay.scala 50:39]
  reg [31:0] reg_delay_2; // @[Delay.scala 50:39]
  reg [31:0] reg_delay_3; // @[Delay.scala 50:39]
  wire [2:0] _io_out_data_T_1 = 3'h4 - 3'h1; // @[Delay.scala 55:38]
  wire [31:0] _GEN_1 = 2'h1 == _io_out_data_T_1[1:0] ? reg_delay_1 : reg_delay_0; // @[Delay.scala 55:{17,17}]
  wire [31:0] _GEN_2 = 2'h2 == _io_out_data_T_1[1:0] ? reg_delay_2 : _GEN_1; // @[Delay.scala 55:{17,17}]
  assign io_out_data = 2'h3 == _io_out_data_T_1[1:0] ? reg_delay_3 : _GEN_2; // @[Delay.scala 55:{17,17}]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_0 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_0 <= io_in_data; // @[Delay.scala 51:18]
    end
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_1 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_1 <= reg_delay_0; // @[Delay.scala 53:20]
    end
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_2 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_2 <= reg_delay_1; // @[Delay.scala 53:20]
    end
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_3 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_3 <= reg_delay_2; // @[Delay.scala 53:20]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  reg_delay_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  reg_delay_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  reg_delay_3 = _RAND_3[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delayb_2(
  input   clock,
  input   reset,
  input   io_in_data,
  output  io_out_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg  reg_delay_0; // @[Delay.scala 101:39]
  reg  reg_delay_1; // @[Delay.scala 101:39]
  reg  reg_delay_2; // @[Delay.scala 101:39]
  reg  reg_delay_3; // @[Delay.scala 101:39]
  wire [2:0] _io_out_data_T_1 = 3'h4 - 3'h1; // @[Delay.scala 106:38]
  wire  _GEN_1 = 2'h1 == _io_out_data_T_1[1:0] ? reg_delay_1 : reg_delay_0; // @[Delay.scala 106:{17,17}]
  wire  _GEN_2 = 2'h2 == _io_out_data_T_1[1:0] ? reg_delay_2 : _GEN_1; // @[Delay.scala 106:{17,17}]
  assign io_out_data = 2'h3 == _io_out_data_T_1[1:0] ? reg_delay_3 : _GEN_2; // @[Delay.scala 106:{17,17}]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_0 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_0 <= io_in_data; // @[Delay.scala 102:18]
    end
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_1 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_1 <= reg_delay_0; // @[Delay.scala 104:20]
    end
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_2 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_2 <= reg_delay_1; // @[Delay.scala 104:20]
    end
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_3 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_3 <= reg_delay_2; // @[Delay.scala 104:20]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  reg_delay_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  reg_delay_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  reg_delay_3 = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module shuffle_1(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_add_re,
  input  [31:0] io_in_data_add_im,
  input  [31:0] io_in_data_mul_re,
  input  [31:0] io_in_data_mul_im,
  input         io_ready,
  output        io_valid,
  output [31:0] io_out_delay_data_add_re,
  output [31:0] io_out_delay_data_add_im,
  output [31:0] io_out_delay_data_mul_re,
  output [31:0] io_out_delay_data_mul_im
);
  wire  condition_div_clock; // @[shuffle.scala 66:21]
  wire  condition_div_reset; // @[shuffle.scala 66:21]
  wire  condition_div_io_en; // @[shuffle.scala 66:21]
  wire  condition_div_io_out; // @[shuffle.scala 66:21]
  wire  mul_delay_delay_clock; // @[Delay.scala 34:23]
  wire  mul_delay_delay_reset; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_in_data_re; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_in_data_im; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_out_data_re; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_out_data_im; // @[Delay.scala 34:23]
  wire  mux_add_io_condition; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_1_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_1_im; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_2_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_2_im; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_out_data_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_out_data_im; // @[shuffle.scala 120:23]
  wire  mux_mul_io_condition; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_1_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_1_im; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_2_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_2_im; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_out_data_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_out_data_im; // @[shuffle.scala 121:23]
  wire  io_out_delay_data_add_re_delay_clock; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_re_delay_reset; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_re_delay_io_in_data; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_re_delay_io_out_data; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_im_delay_clock; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_im_delay_reset; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_im_delay_io_in_data; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_im_delay_io_out_data; // @[Delay.scala 60:23]
  wire  io_valid_delay_clock; // @[Delay.scala 111:23]
  wire  io_valid_delay_reset; // @[Delay.scala 111:23]
  wire  io_valid_delay_io_in_data; // @[Delay.scala 111:23]
  wire  io_valid_delay_io_out_data; // @[Delay.scala 111:23]
  Divider_frequency_1 condition_div ( // @[shuffle.scala 66:21]
    .clock(condition_div_clock),
    .reset(condition_div_reset),
    .io_en(condition_div_io_en),
    .io_out(condition_div_io_out)
  );
  Delay_3 mul_delay_delay ( // @[Delay.scala 34:23]
    .clock(mul_delay_delay_clock),
    .reset(mul_delay_delay_reset),
    .io_in_data_re(mul_delay_delay_io_in_data_re),
    .io_in_data_im(mul_delay_delay_io_in_data_im),
    .io_out_data_re(mul_delay_delay_io_out_data_re),
    .io_out_data_im(mul_delay_delay_io_out_data_im)
  );
  Myselect mux_add ( // @[shuffle.scala 120:23]
    .io_condition(mux_add_io_condition),
    .io_in_data_1_re(mux_add_io_in_data_1_re),
    .io_in_data_1_im(mux_add_io_in_data_1_im),
    .io_in_data_2_re(mux_add_io_in_data_2_re),
    .io_in_data_2_im(mux_add_io_in_data_2_im),
    .io_out_data_re(mux_add_io_out_data_re),
    .io_out_data_im(mux_add_io_out_data_im)
  );
  Myselect mux_mul ( // @[shuffle.scala 121:23]
    .io_condition(mux_mul_io_condition),
    .io_in_data_1_re(mux_mul_io_in_data_1_re),
    .io_in_data_1_im(mux_mul_io_in_data_1_im),
    .io_in_data_2_re(mux_mul_io_in_data_2_re),
    .io_in_data_2_im(mux_mul_io_in_data_2_im),
    .io_out_data_re(mux_mul_io_out_data_re),
    .io_out_data_im(mux_mul_io_out_data_im)
  );
  Delayu_2 io_out_delay_data_add_re_delay ( // @[Delay.scala 60:23]
    .clock(io_out_delay_data_add_re_delay_clock),
    .reset(io_out_delay_data_add_re_delay_reset),
    .io_in_data(io_out_delay_data_add_re_delay_io_in_data),
    .io_out_data(io_out_delay_data_add_re_delay_io_out_data)
  );
  Delayu_2 io_out_delay_data_add_im_delay ( // @[Delay.scala 60:23]
    .clock(io_out_delay_data_add_im_delay_clock),
    .reset(io_out_delay_data_add_im_delay_reset),
    .io_in_data(io_out_delay_data_add_im_delay_io_in_data),
    .io_out_data(io_out_delay_data_add_im_delay_io_out_data)
  );
  Delayb_2 io_valid_delay ( // @[Delay.scala 111:23]
    .clock(io_valid_delay_clock),
    .reset(io_valid_delay_reset),
    .io_in_data(io_valid_delay_io_in_data),
    .io_out_data(io_valid_delay_io_out_data)
  );
  assign io_valid = io_valid_delay_io_out_data; // @[shuffle.scala 138:12]
  assign io_out_delay_data_add_re = io_out_delay_data_add_re_delay_io_out_data; // @[shuffle.scala 133:28]
  assign io_out_delay_data_add_im = io_out_delay_data_add_im_delay_io_out_data; // @[shuffle.scala 134:28]
  assign io_out_delay_data_mul_re = mux_mul_io_out_data_re; // @[shuffle.scala 135:25]
  assign io_out_delay_data_mul_im = mux_mul_io_out_data_im; // @[shuffle.scala 135:25]
  assign condition_div_clock = clock;
  assign condition_div_reset = reset;
  assign condition_div_io_en = io_ready; // @[shuffle.scala 67:15]
  assign mul_delay_delay_clock = clock;
  assign mul_delay_delay_reset = reset;
  assign mul_delay_delay_io_in_data_re = io_in_data_mul_re; // @[Delay.scala 35:22]
  assign mul_delay_delay_io_in_data_im = io_in_data_mul_im; // @[Delay.scala 35:22]
  assign mux_add_io_condition = condition_div_io_out; // @[shuffle.scala 123:24]
  assign mux_add_io_in_data_1_re = mul_delay_delay_io_out_data_re; // @[shuffle.scala 124:24]
  assign mux_add_io_in_data_1_im = mul_delay_delay_io_out_data_im; // @[shuffle.scala 124:24]
  assign mux_add_io_in_data_2_re = io_in_data_add_re; // @[shuffle.scala 125:24]
  assign mux_add_io_in_data_2_im = io_in_data_add_im; // @[shuffle.scala 125:24]
  assign mux_mul_io_condition = condition_div_io_out; // @[shuffle.scala 128:24]
  assign mux_mul_io_in_data_1_re = io_in_data_add_re; // @[shuffle.scala 129:24]
  assign mux_mul_io_in_data_1_im = io_in_data_add_im; // @[shuffle.scala 129:24]
  assign mux_mul_io_in_data_2_re = mul_delay_delay_io_out_data_re; // @[shuffle.scala 130:24]
  assign mux_mul_io_in_data_2_im = mul_delay_delay_io_out_data_im; // @[shuffle.scala 130:24]
  assign io_out_delay_data_add_re_delay_clock = clock;
  assign io_out_delay_data_add_re_delay_reset = reset;
  assign io_out_delay_data_add_re_delay_io_in_data = mux_add_io_out_data_re; // @[Delay.scala 61:22]
  assign io_out_delay_data_add_im_delay_clock = clock;
  assign io_out_delay_data_add_im_delay_reset = reset;
  assign io_out_delay_data_add_im_delay_io_in_data = mux_add_io_out_data_im; // @[Delay.scala 61:22]
  assign io_valid_delay_clock = clock;
  assign io_valid_delay_reset = reset;
  assign io_valid_delay_io_in_data = io_ready; // @[Delay.scala 112:22]
endmodule
module BF3_Dyn_blackbox(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_a_re,
  input  [31:0] io_in_data_a_im,
  input  [31:0] io_in_data_b_re,
  input  [31:0] io_in_data_b_im,
  input         io_ready,
  output [31:0] io_out_data_add_re,
  output [31:0] io_out_data_add_im,
  output [31:0] io_out_data_mul_re,
  output [31:0] io_out_data_mul_im,
  output        io_valid
);
  wire  Mul_clock; // @[BF3_Dyn.scala 32:19]
  wire [31:0] Mul_io_op1_re; // @[BF3_Dyn.scala 32:19]
  wire [31:0] Mul_io_op1_im; // @[BF3_Dyn.scala 32:19]
  wire [31:0] Mul_io_op2_re; // @[BF3_Dyn.scala 32:19]
  wire [31:0] Mul_io_op2_im; // @[BF3_Dyn.scala 32:19]
  wire  Mul_io_ready; // @[BF3_Dyn.scala 32:19]
  wire  Mul_io_valid; // @[BF3_Dyn.scala 32:19]
  wire [31:0] Mul_io_res_re; // @[BF3_Dyn.scala 32:19]
  wire [31:0] Mul_io_res_im; // @[BF3_Dyn.scala 32:19]
  wire  Add_clock; // @[BF3_Dyn.scala 33:19]
  wire [31:0] Add_io_op1_re; // @[BF3_Dyn.scala 33:19]
  wire [31:0] Add_io_op1_im; // @[BF3_Dyn.scala 33:19]
  wire [31:0] Add_io_op2_re; // @[BF3_Dyn.scala 33:19]
  wire [31:0] Add_io_op2_im; // @[BF3_Dyn.scala 33:19]
  wire [31:0] Add_io_res_re; // @[BF3_Dyn.scala 33:19]
  wire [31:0] Add_io_res_im; // @[BF3_Dyn.scala 33:19]
  wire  Add_io_ready; // @[BF3_Dyn.scala 33:19]
  wire  Sub_clock; // @[BF3_Dyn.scala 34:19]
  wire [31:0] Sub_io_op1_re; // @[BF3_Dyn.scala 34:19]
  wire [31:0] Sub_io_op1_im; // @[BF3_Dyn.scala 34:19]
  wire [31:0] Sub_io_op2_re; // @[BF3_Dyn.scala 34:19]
  wire [31:0] Sub_io_op2_im; // @[BF3_Dyn.scala 34:19]
  wire [31:0] Sub_io_res_re; // @[BF3_Dyn.scala 34:19]
  wire [31:0] Sub_io_res_im; // @[BF3_Dyn.scala 34:19]
  wire  Sub_io_ready; // @[BF3_Dyn.scala 34:19]
  wire  Sub_io_valid; // @[BF3_Dyn.scala 34:19]
  wire  twiddle_Address_BF_4_3_clock; // @[BF3_Dyn.scala 63:38]
  wire  twiddle_Address_BF_4_3_reset; // @[BF3_Dyn.scala 63:38]
  wire  twiddle_Address_BF_4_3_io_ready; // @[BF3_Dyn.scala 63:38]
  wire [31:0] twiddle_Address_BF_4_3_io_counter; // @[BF3_Dyn.scala 63:38]
  wire [31:0] twiddle_Address_BF_4_3_io_address; // @[BF3_Dyn.scala 63:38]
  wire  io_out_data_add_delay_clock; // @[Delay.scala 34:23]
  wire  io_out_data_add_delay_reset; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_in_data_re; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_in_data_im; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_out_data_re; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_out_data_im; // @[Delay.scala 34:23]
  wire [31:0] _GEN_1 = 2'h1 == twiddle_Address_BF_4_3_io_address[1:0] ? 32'h3f3504f3 : 32'h3f800000; // @[BF3_Dyn.scala 76:{17,17}]
  wire [31:0] _GEN_2 = 2'h2 == twiddle_Address_BF_4_3_io_address[1:0] ? 32'h0 : _GEN_1; // @[BF3_Dyn.scala 76:{17,17}]
  wire [31:0] _GEN_5 = 2'h1 == twiddle_Address_BF_4_3_io_address[1:0] ? 32'hbf3504f3 : 32'h0; // @[BF3_Dyn.scala 77:{17,17}]
  wire [31:0] _GEN_6 = 2'h2 == twiddle_Address_BF_4_3_io_address[1:0] ? 32'hbf800000 : _GEN_5; // @[BF3_Dyn.scala 77:{17,17}]
  Ip_ComplexMul_blackbox_wrapper Mul ( // @[BF3_Dyn.scala 32:19]
    .clock(Mul_clock),
    .io_op1_re(Mul_io_op1_re),
    .io_op1_im(Mul_io_op1_im),
    .io_op2_re(Mul_io_op2_re),
    .io_op2_im(Mul_io_op2_im),
    .io_ready(Mul_io_ready),
    .io_valid(Mul_io_valid),
    .io_res_re(Mul_io_res_re),
    .io_res_im(Mul_io_res_im)
  );
  FPComplexAdd_blackbox Add ( // @[BF3_Dyn.scala 33:19]
    .clock(Add_clock),
    .io_op1_re(Add_io_op1_re),
    .io_op1_im(Add_io_op1_im),
    .io_op2_re(Add_io_op2_re),
    .io_op2_im(Add_io_op2_im),
    .io_res_re(Add_io_res_re),
    .io_res_im(Add_io_res_im),
    .io_ready(Add_io_ready)
  );
  FPComplexSub_blackbox Sub ( // @[BF3_Dyn.scala 34:19]
    .clock(Sub_clock),
    .io_op1_re(Sub_io_op1_re),
    .io_op1_im(Sub_io_op1_im),
    .io_op2_re(Sub_io_op2_re),
    .io_op2_im(Sub_io_op2_im),
    .io_res_re(Sub_io_res_re),
    .io_res_im(Sub_io_res_im),
    .io_ready(Sub_io_ready),
    .io_valid(Sub_io_valid)
  );
  Twiddle_Address twiddle_Address_BF_4_3 ( // @[BF3_Dyn.scala 63:38]
    .clock(twiddle_Address_BF_4_3_clock),
    .reset(twiddle_Address_BF_4_3_reset),
    .io_ready(twiddle_Address_BF_4_3_io_ready),
    .io_counter(twiddle_Address_BF_4_3_io_counter),
    .io_address(twiddle_Address_BF_4_3_io_address)
  );
  Delay io_out_data_add_delay ( // @[Delay.scala 34:23]
    .clock(io_out_data_add_delay_clock),
    .reset(io_out_data_add_delay_reset),
    .io_in_data_re(io_out_data_add_delay_io_in_data_re),
    .io_in_data_im(io_out_data_add_delay_io_in_data_im),
    .io_out_data_re(io_out_data_add_delay_io_out_data_re),
    .io_out_data_im(io_out_data_add_delay_io_out_data_im)
  );
  assign io_out_data_add_re = io_out_data_add_delay_io_out_data_re; // @[BF3_Dyn.scala 83:19]
  assign io_out_data_add_im = io_out_data_add_delay_io_out_data_im; // @[BF3_Dyn.scala 83:19]
  assign io_out_data_mul_re = Mul_io_res_re; // @[BF3_Dyn.scala 78:19]
  assign io_out_data_mul_im = Mul_io_res_im; // @[BF3_Dyn.scala 78:19]
  assign io_valid = Mul_io_valid; // @[BF3_Dyn.scala 79:12]
  assign Mul_clock = clock;
  assign Mul_io_op1_re = Sub_io_res_re; // @[BF3_Dyn.scala 75:14]
  assign Mul_io_op1_im = Sub_io_res_im; // @[BF3_Dyn.scala 75:14]
  assign Mul_io_op2_re = 2'h3 == twiddle_Address_BF_4_3_io_address[1:0] ? 32'hbf3504f3 : _GEN_2; // @[BF3_Dyn.scala 76:{17,17}]
  assign Mul_io_op2_im = 2'h3 == twiddle_Address_BF_4_3_io_address[1:0] ? 32'hbf3504f3 : _GEN_6; // @[BF3_Dyn.scala 77:{17,17}]
  assign Mul_io_ready = Sub_io_valid; // @[BF3_Dyn.scala 74:16]
  assign Add_clock = clock;
  assign Add_io_op1_re = io_in_data_a_re; // @[BF3_Dyn.scala 37:14]
  assign Add_io_op1_im = io_in_data_a_im; // @[BF3_Dyn.scala 37:14]
  assign Add_io_op2_re = io_in_data_b_re; // @[BF3_Dyn.scala 38:14]
  assign Add_io_op2_im = io_in_data_b_im; // @[BF3_Dyn.scala 38:14]
  assign Add_io_ready = io_ready; // @[BF3_Dyn.scala 39:16]
  assign Sub_clock = clock;
  assign Sub_io_op1_re = io_in_data_a_re; // @[BF3_Dyn.scala 41:14]
  assign Sub_io_op1_im = io_in_data_a_im; // @[BF3_Dyn.scala 41:14]
  assign Sub_io_op2_re = io_in_data_b_re; // @[BF3_Dyn.scala 42:14]
  assign Sub_io_op2_im = io_in_data_b_im; // @[BF3_Dyn.scala 42:14]
  assign Sub_io_ready = io_ready; // @[BF3_Dyn.scala 43:16]
  assign twiddle_Address_BF_4_3_clock = clock;
  assign twiddle_Address_BF_4_3_reset = reset;
  assign twiddle_Address_BF_4_3_io_ready = Sub_io_valid; // @[BF3_Dyn.scala 65:35]
  assign twiddle_Address_BF_4_3_io_counter = 32'h4; // @[BF3_Dyn.scala 66:37]
  assign io_out_data_add_delay_clock = clock;
  assign io_out_data_add_delay_reset = reset;
  assign io_out_data_add_delay_io_in_data_re = Add_io_res_re; // @[Delay.scala 35:22]
  assign io_out_data_add_delay_io_in_data_im = Add_io_res_im; // @[Delay.scala 35:22]
endmodule
module Divider_frequency_2(
  input   clock,
  input   reset,
  input   io_en,
  output  io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] countReg; // @[shuffle.scala 17:25]
  reg  toggleReg; // @[shuffle.scala 18:26]
  wire [1:0] _T_1 = 2'h2 - 2'h1; // @[shuffle.scala 21:35]
  wire [1:0] _countReg_T_1 = countReg + 2'h1; // @[shuffle.scala 25:28]
  assign io_out = toggleReg; // @[shuffle.scala 29:10]
  always @(posedge clock) begin
    if (reset) begin // @[shuffle.scala 17:25]
      countReg <= 2'h0; // @[shuffle.scala 17:25]
    end else if (io_en) begin // @[shuffle.scala 20:15]
      if (countReg == _T_1) begin // @[shuffle.scala 21:41]
        countReg <= 2'h0; // @[shuffle.scala 22:16]
      end else begin
        countReg <= _countReg_T_1; // @[shuffle.scala 25:16]
      end
    end
    if (reset) begin // @[shuffle.scala 18:26]
      toggleReg <= 1'h0; // @[shuffle.scala 18:26]
    end else if (io_en) begin // @[shuffle.scala 20:15]
      if (countReg == _T_1) begin // @[shuffle.scala 21:41]
        toggleReg <= ~toggleReg; // @[shuffle.scala 23:17]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  countReg = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  toggleReg = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delay_5(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_re,
  input  [31:0] io_in_data_im,
  output [31:0] io_out_data_re,
  output [31:0] io_out_data_im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_delay_re_0; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_re_1; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_im_0; // @[Delay.scala 19:42]
  reg [31:0] reg_delay_im_1; // @[Delay.scala 19:42]
  wire [1:0] _io_out_data_re_T_1 = 2'h2 - 2'h1; // @[Delay.scala 26:44]
  assign io_out_data_re = _io_out_data_re_T_1[0] ? reg_delay_re_1 : reg_delay_re_0; // @[Delay.scala 26:{20,20}]
  assign io_out_data_im = _io_out_data_re_T_1[0] ? reg_delay_im_1 : reg_delay_im_0; // @[Delay.scala 27:{20,20}]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_0 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_0 <= io_in_data_re; // @[Delay.scala 20:21]
    end
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_1 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_1 <= reg_delay_re_0; // @[Delay.scala 23:23]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_0 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_0 <= io_in_data_im; // @[Delay.scala 21:21]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_1 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_1 <= reg_delay_im_0; // @[Delay.scala 24:23]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_re_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  reg_delay_re_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  reg_delay_im_0 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  reg_delay_im_1 = _RAND_3[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delayu_4(
  input         clock,
  input         reset,
  input  [31:0] io_in_data,
  output [31:0] io_out_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_delay_0; // @[Delay.scala 50:39]
  reg [31:0] reg_delay_1; // @[Delay.scala 50:39]
  wire [1:0] _io_out_data_T_1 = 2'h2 - 2'h1; // @[Delay.scala 55:38]
  assign io_out_data = _io_out_data_T_1[0] ? reg_delay_1 : reg_delay_0; // @[Delay.scala 55:{17,17}]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_0 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_0 <= io_in_data; // @[Delay.scala 51:18]
    end
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_1 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_1 <= reg_delay_0; // @[Delay.scala 53:20]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  reg_delay_1 = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module shuffle_2(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_add_re,
  input  [31:0] io_in_data_add_im,
  input  [31:0] io_in_data_mul_re,
  input  [31:0] io_in_data_mul_im,
  input         io_ready,
  output        io_valid,
  output [31:0] io_out_delay_data_add_re,
  output [31:0] io_out_delay_data_add_im,
  output [31:0] io_out_delay_data_mul_re,
  output [31:0] io_out_delay_data_mul_im
);
  wire  condition_div_clock; // @[shuffle.scala 66:21]
  wire  condition_div_reset; // @[shuffle.scala 66:21]
  wire  condition_div_io_en; // @[shuffle.scala 66:21]
  wire  condition_div_io_out; // @[shuffle.scala 66:21]
  wire  mul_delay_delay_clock; // @[Delay.scala 34:23]
  wire  mul_delay_delay_reset; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_in_data_re; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_in_data_im; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_out_data_re; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_out_data_im; // @[Delay.scala 34:23]
  wire  mux_add_io_condition; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_1_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_1_im; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_2_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_2_im; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_out_data_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_out_data_im; // @[shuffle.scala 120:23]
  wire  mux_mul_io_condition; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_1_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_1_im; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_2_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_2_im; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_out_data_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_out_data_im; // @[shuffle.scala 121:23]
  wire  io_out_delay_data_add_re_delay_clock; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_re_delay_reset; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_re_delay_io_in_data; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_re_delay_io_out_data; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_im_delay_clock; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_im_delay_reset; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_im_delay_io_in_data; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_im_delay_io_out_data; // @[Delay.scala 60:23]
  wire  io_valid_delay_clock; // @[Delay.scala 111:23]
  wire  io_valid_delay_reset; // @[Delay.scala 111:23]
  wire  io_valid_delay_io_in_data; // @[Delay.scala 111:23]
  wire  io_valid_delay_io_out_data; // @[Delay.scala 111:23]
  Divider_frequency_2 condition_div ( // @[shuffle.scala 66:21]
    .clock(condition_div_clock),
    .reset(condition_div_reset),
    .io_en(condition_div_io_en),
    .io_out(condition_div_io_out)
  );
  Delay_5 mul_delay_delay ( // @[Delay.scala 34:23]
    .clock(mul_delay_delay_clock),
    .reset(mul_delay_delay_reset),
    .io_in_data_re(mul_delay_delay_io_in_data_re),
    .io_in_data_im(mul_delay_delay_io_in_data_im),
    .io_out_data_re(mul_delay_delay_io_out_data_re),
    .io_out_data_im(mul_delay_delay_io_out_data_im)
  );
  Myselect mux_add ( // @[shuffle.scala 120:23]
    .io_condition(mux_add_io_condition),
    .io_in_data_1_re(mux_add_io_in_data_1_re),
    .io_in_data_1_im(mux_add_io_in_data_1_im),
    .io_in_data_2_re(mux_add_io_in_data_2_re),
    .io_in_data_2_im(mux_add_io_in_data_2_im),
    .io_out_data_re(mux_add_io_out_data_re),
    .io_out_data_im(mux_add_io_out_data_im)
  );
  Myselect mux_mul ( // @[shuffle.scala 121:23]
    .io_condition(mux_mul_io_condition),
    .io_in_data_1_re(mux_mul_io_in_data_1_re),
    .io_in_data_1_im(mux_mul_io_in_data_1_im),
    .io_in_data_2_re(mux_mul_io_in_data_2_re),
    .io_in_data_2_im(mux_mul_io_in_data_2_im),
    .io_out_data_re(mux_mul_io_out_data_re),
    .io_out_data_im(mux_mul_io_out_data_im)
  );
  Delayu_4 io_out_delay_data_add_re_delay ( // @[Delay.scala 60:23]
    .clock(io_out_delay_data_add_re_delay_clock),
    .reset(io_out_delay_data_add_re_delay_reset),
    .io_in_data(io_out_delay_data_add_re_delay_io_in_data),
    .io_out_data(io_out_delay_data_add_re_delay_io_out_data)
  );
  Delayu_4 io_out_delay_data_add_im_delay ( // @[Delay.scala 60:23]
    .clock(io_out_delay_data_add_im_delay_clock),
    .reset(io_out_delay_data_add_im_delay_reset),
    .io_in_data(io_out_delay_data_add_im_delay_io_in_data),
    .io_out_data(io_out_delay_data_add_im_delay_io_out_data)
  );
  Delayb io_valid_delay ( // @[Delay.scala 111:23]
    .clock(io_valid_delay_clock),
    .reset(io_valid_delay_reset),
    .io_in_data(io_valid_delay_io_in_data),
    .io_out_data(io_valid_delay_io_out_data)
  );
  assign io_valid = io_valid_delay_io_out_data; // @[shuffle.scala 138:12]
  assign io_out_delay_data_add_re = io_out_delay_data_add_re_delay_io_out_data; // @[shuffle.scala 133:28]
  assign io_out_delay_data_add_im = io_out_delay_data_add_im_delay_io_out_data; // @[shuffle.scala 134:28]
  assign io_out_delay_data_mul_re = mux_mul_io_out_data_re; // @[shuffle.scala 135:25]
  assign io_out_delay_data_mul_im = mux_mul_io_out_data_im; // @[shuffle.scala 135:25]
  assign condition_div_clock = clock;
  assign condition_div_reset = reset;
  assign condition_div_io_en = io_ready; // @[shuffle.scala 67:15]
  assign mul_delay_delay_clock = clock;
  assign mul_delay_delay_reset = reset;
  assign mul_delay_delay_io_in_data_re = io_in_data_mul_re; // @[Delay.scala 35:22]
  assign mul_delay_delay_io_in_data_im = io_in_data_mul_im; // @[Delay.scala 35:22]
  assign mux_add_io_condition = condition_div_io_out; // @[shuffle.scala 123:24]
  assign mux_add_io_in_data_1_re = mul_delay_delay_io_out_data_re; // @[shuffle.scala 124:24]
  assign mux_add_io_in_data_1_im = mul_delay_delay_io_out_data_im; // @[shuffle.scala 124:24]
  assign mux_add_io_in_data_2_re = io_in_data_add_re; // @[shuffle.scala 125:24]
  assign mux_add_io_in_data_2_im = io_in_data_add_im; // @[shuffle.scala 125:24]
  assign mux_mul_io_condition = condition_div_io_out; // @[shuffle.scala 128:24]
  assign mux_mul_io_in_data_1_re = io_in_data_add_re; // @[shuffle.scala 129:24]
  assign mux_mul_io_in_data_1_im = io_in_data_add_im; // @[shuffle.scala 129:24]
  assign mux_mul_io_in_data_2_re = mul_delay_delay_io_out_data_re; // @[shuffle.scala 130:24]
  assign mux_mul_io_in_data_2_im = mul_delay_delay_io_out_data_im; // @[shuffle.scala 130:24]
  assign io_out_delay_data_add_re_delay_clock = clock;
  assign io_out_delay_data_add_re_delay_reset = reset;
  assign io_out_delay_data_add_re_delay_io_in_data = mux_add_io_out_data_re; // @[Delay.scala 61:22]
  assign io_out_delay_data_add_im_delay_clock = clock;
  assign io_out_delay_data_add_im_delay_reset = reset;
  assign io_out_delay_data_add_im_delay_io_in_data = mux_add_io_out_data_im; // @[Delay.scala 61:22]
  assign io_valid_delay_clock = clock;
  assign io_valid_delay_reset = reset;
  assign io_valid_delay_io_in_data = io_ready; // @[Delay.scala 112:22]
endmodule
module BF4_Dyn_blackbox(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_a_re,
  input  [31:0] io_in_data_a_im,
  input  [31:0] io_in_data_b_re,
  input  [31:0] io_in_data_b_im,
  input         io_ready,
  output [31:0] io_out_data_add_re,
  output [31:0] io_out_data_add_im,
  output [31:0] io_out_data_mul_re,
  output [31:0] io_out_data_mul_im,
  output        io_valid
);
  wire  Mul_clock; // @[BF4_Dyn.scala 32:19]
  wire [31:0] Mul_io_op1_re; // @[BF4_Dyn.scala 32:19]
  wire [31:0] Mul_io_op1_im; // @[BF4_Dyn.scala 32:19]
  wire [31:0] Mul_io_op2_re; // @[BF4_Dyn.scala 32:19]
  wire [31:0] Mul_io_op2_im; // @[BF4_Dyn.scala 32:19]
  wire  Mul_io_ready; // @[BF4_Dyn.scala 32:19]
  wire  Mul_io_valid; // @[BF4_Dyn.scala 32:19]
  wire [31:0] Mul_io_res_re; // @[BF4_Dyn.scala 32:19]
  wire [31:0] Mul_io_res_im; // @[BF4_Dyn.scala 32:19]
  wire  Add_clock; // @[BF4_Dyn.scala 33:19]
  wire [31:0] Add_io_op1_re; // @[BF4_Dyn.scala 33:19]
  wire [31:0] Add_io_op1_im; // @[BF4_Dyn.scala 33:19]
  wire [31:0] Add_io_op2_re; // @[BF4_Dyn.scala 33:19]
  wire [31:0] Add_io_op2_im; // @[BF4_Dyn.scala 33:19]
  wire [31:0] Add_io_res_re; // @[BF4_Dyn.scala 33:19]
  wire [31:0] Add_io_res_im; // @[BF4_Dyn.scala 33:19]
  wire  Add_io_ready; // @[BF4_Dyn.scala 33:19]
  wire  Sub_clock; // @[BF4_Dyn.scala 34:19]
  wire [31:0] Sub_io_op1_re; // @[BF4_Dyn.scala 34:19]
  wire [31:0] Sub_io_op1_im; // @[BF4_Dyn.scala 34:19]
  wire [31:0] Sub_io_op2_re; // @[BF4_Dyn.scala 34:19]
  wire [31:0] Sub_io_op2_im; // @[BF4_Dyn.scala 34:19]
  wire [31:0] Sub_io_res_re; // @[BF4_Dyn.scala 34:19]
  wire [31:0] Sub_io_res_im; // @[BF4_Dyn.scala 34:19]
  wire  Sub_io_ready; // @[BF4_Dyn.scala 34:19]
  wire  Sub_io_valid; // @[BF4_Dyn.scala 34:19]
  wire  twiddle_Address_BF_4_3_clock; // @[BF4_Dyn.scala 59:38]
  wire  twiddle_Address_BF_4_3_reset; // @[BF4_Dyn.scala 59:38]
  wire  twiddle_Address_BF_4_3_io_ready; // @[BF4_Dyn.scala 59:38]
  wire [31:0] twiddle_Address_BF_4_3_io_counter; // @[BF4_Dyn.scala 59:38]
  wire [31:0] twiddle_Address_BF_4_3_io_address; // @[BF4_Dyn.scala 59:38]
  wire  io_out_data_add_delay_clock; // @[Delay.scala 34:23]
  wire  io_out_data_add_delay_reset; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_in_data_re; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_in_data_im; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_out_data_re; // @[Delay.scala 34:23]
  wire [31:0] io_out_data_add_delay_io_out_data_im; // @[Delay.scala 34:23]
  wire [29:0] _GEN_1 = twiddle_Address_BF_4_3_io_address[0] ? 30'h0 : 30'h3f800000; // @[BF4_Dyn.scala 72:{17,17}]
  Ip_ComplexMul_blackbox_wrapper Mul ( // @[BF4_Dyn.scala 32:19]
    .clock(Mul_clock),
    .io_op1_re(Mul_io_op1_re),
    .io_op1_im(Mul_io_op1_im),
    .io_op2_re(Mul_io_op2_re),
    .io_op2_im(Mul_io_op2_im),
    .io_ready(Mul_io_ready),
    .io_valid(Mul_io_valid),
    .io_res_re(Mul_io_res_re),
    .io_res_im(Mul_io_res_im)
  );
  FPComplexAdd_blackbox Add ( // @[BF4_Dyn.scala 33:19]
    .clock(Add_clock),
    .io_op1_re(Add_io_op1_re),
    .io_op1_im(Add_io_op1_im),
    .io_op2_re(Add_io_op2_re),
    .io_op2_im(Add_io_op2_im),
    .io_res_re(Add_io_res_re),
    .io_res_im(Add_io_res_im),
    .io_ready(Add_io_ready)
  );
  FPComplexSub_blackbox Sub ( // @[BF4_Dyn.scala 34:19]
    .clock(Sub_clock),
    .io_op1_re(Sub_io_op1_re),
    .io_op1_im(Sub_io_op1_im),
    .io_op2_re(Sub_io_op2_re),
    .io_op2_im(Sub_io_op2_im),
    .io_res_re(Sub_io_res_re),
    .io_res_im(Sub_io_res_im),
    .io_ready(Sub_io_ready),
    .io_valid(Sub_io_valid)
  );
  Twiddle_Address twiddle_Address_BF_4_3 ( // @[BF4_Dyn.scala 59:38]
    .clock(twiddle_Address_BF_4_3_clock),
    .reset(twiddle_Address_BF_4_3_reset),
    .io_ready(twiddle_Address_BF_4_3_io_ready),
    .io_counter(twiddle_Address_BF_4_3_io_counter),
    .io_address(twiddle_Address_BF_4_3_io_address)
  );
  Delay io_out_data_add_delay ( // @[Delay.scala 34:23]
    .clock(io_out_data_add_delay_clock),
    .reset(io_out_data_add_delay_reset),
    .io_in_data_re(io_out_data_add_delay_io_in_data_re),
    .io_in_data_im(io_out_data_add_delay_io_in_data_im),
    .io_out_data_re(io_out_data_add_delay_io_out_data_re),
    .io_out_data_im(io_out_data_add_delay_io_out_data_im)
  );
  assign io_out_data_add_re = io_out_data_add_delay_io_out_data_re; // @[BF4_Dyn.scala 79:19]
  assign io_out_data_add_im = io_out_data_add_delay_io_out_data_im; // @[BF4_Dyn.scala 79:19]
  assign io_out_data_mul_re = Mul_io_res_re; // @[BF4_Dyn.scala 74:19]
  assign io_out_data_mul_im = Mul_io_res_im; // @[BF4_Dyn.scala 74:19]
  assign io_valid = Mul_io_valid; // @[BF4_Dyn.scala 75:12]
  assign Mul_clock = clock;
  assign Mul_io_op1_re = Sub_io_res_re; // @[BF4_Dyn.scala 71:14]
  assign Mul_io_op1_im = Sub_io_res_im; // @[BF4_Dyn.scala 71:14]
  assign Mul_io_op2_re = {{2'd0}, _GEN_1}; // @[BF4_Dyn.scala 72:17]
  assign Mul_io_op2_im = twiddle_Address_BF_4_3_io_address[0] ? 32'hbf800000 : 32'h0; // @[BF4_Dyn.scala 73:{17,17}]
  assign Mul_io_ready = Sub_io_valid; // @[BF4_Dyn.scala 70:16]
  assign Add_clock = clock;
  assign Add_io_op1_re = io_in_data_a_re; // @[BF4_Dyn.scala 37:14]
  assign Add_io_op1_im = io_in_data_a_im; // @[BF4_Dyn.scala 37:14]
  assign Add_io_op2_re = io_in_data_b_re; // @[BF4_Dyn.scala 38:14]
  assign Add_io_op2_im = io_in_data_b_im; // @[BF4_Dyn.scala 38:14]
  assign Add_io_ready = io_ready; // @[BF4_Dyn.scala 39:16]
  assign Sub_clock = clock;
  assign Sub_io_op1_re = io_in_data_a_re; // @[BF4_Dyn.scala 41:14]
  assign Sub_io_op1_im = io_in_data_a_im; // @[BF4_Dyn.scala 41:14]
  assign Sub_io_op2_re = io_in_data_b_re; // @[BF4_Dyn.scala 42:14]
  assign Sub_io_op2_im = io_in_data_b_im; // @[BF4_Dyn.scala 42:14]
  assign Sub_io_ready = io_ready; // @[BF4_Dyn.scala 43:16]
  assign twiddle_Address_BF_4_3_clock = clock;
  assign twiddle_Address_BF_4_3_reset = reset;
  assign twiddle_Address_BF_4_3_io_ready = Sub_io_valid; // @[BF4_Dyn.scala 61:35]
  assign twiddle_Address_BF_4_3_io_counter = 32'h2; // @[BF4_Dyn.scala 62:37]
  assign io_out_data_add_delay_clock = clock;
  assign io_out_data_add_delay_reset = reset;
  assign io_out_data_add_delay_io_in_data_re = Add_io_res_re; // @[Delay.scala 35:22]
  assign io_out_data_add_delay_io_in_data_im = Add_io_res_im; // @[Delay.scala 35:22]
endmodule
module Divider_frequency_3(
  input   clock,
  input   reset,
  input   io_en,
  output  io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  countReg; // @[shuffle.scala 17:25]
  reg  toggleReg; // @[shuffle.scala 18:26]
  assign io_out = toggleReg; // @[shuffle.scala 29:10]
  always @(posedge clock) begin
    if (reset) begin // @[shuffle.scala 17:25]
      countReg <= 1'h0; // @[shuffle.scala 17:25]
    end else if (io_en) begin // @[shuffle.scala 20:15]
      if (~countReg) begin // @[shuffle.scala 21:41]
        countReg <= 1'h0; // @[shuffle.scala 22:16]
      end else begin
        countReg <= countReg + 1'h1; // @[shuffle.scala 25:16]
      end
    end
    if (reset) begin // @[shuffle.scala 18:26]
      toggleReg <= 1'h0; // @[shuffle.scala 18:26]
    end else if (io_en) begin // @[shuffle.scala 20:15]
      if (~countReg) begin // @[shuffle.scala 21:41]
        toggleReg <= ~toggleReg; // @[shuffle.scala 23:17]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  countReg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  toggleReg = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delay_7(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_re,
  input  [31:0] io_in_data_im,
  output [31:0] io_out_data_re,
  output [31:0] io_out_data_im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_delay_re_0; // @[Delay.scala 18:42]
  reg [31:0] reg_delay_im_0; // @[Delay.scala 19:42]
  assign io_out_data_re = reg_delay_re_0; // @[Delay.scala 26:20]
  assign io_out_data_im = reg_delay_im_0; // @[Delay.scala 27:20]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 18:42]
      reg_delay_re_0 <= 32'h0; // @[Delay.scala 18:42]
    end else begin
      reg_delay_re_0 <= io_in_data_re; // @[Delay.scala 20:21]
    end
    if (reset) begin // @[Delay.scala 19:42]
      reg_delay_im_0 <= 32'h0; // @[Delay.scala 19:42]
    end else begin
      reg_delay_im_0 <= io_in_data_im; // @[Delay.scala 21:21]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_re_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  reg_delay_im_0 = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delayu_6(
  input         clock,
  input         reset,
  input  [31:0] io_in_data,
  output [31:0] io_out_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_delay_0; // @[Delay.scala 50:39]
  assign io_out_data = reg_delay_0; // @[Delay.scala 55:17]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 50:39]
      reg_delay_0 <= 32'h0; // @[Delay.scala 50:39]
    end else begin
      reg_delay_0 <= io_in_data; // @[Delay.scala 51:18]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_0 = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Delayb_4(
  input   clock,
  input   reset,
  input   io_in_data,
  output  io_out_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  reg_delay_0; // @[Delay.scala 101:39]
  assign io_out_data = reg_delay_0; // @[Delay.scala 106:17]
  always @(posedge clock) begin
    if (reset) begin // @[Delay.scala 101:39]
      reg_delay_0 <= 1'h0; // @[Delay.scala 101:39]
    end else begin
      reg_delay_0 <= io_in_data; // @[Delay.scala 102:18]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_delay_0 = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module shuffle_3(
  input         clock,
  input         reset,
  input  [31:0] io_in_data_add_re,
  input  [31:0] io_in_data_add_im,
  input  [31:0] io_in_data_mul_re,
  input  [31:0] io_in_data_mul_im,
  input         io_ready,
  output        io_valid,
  output [31:0] io_out_delay_data_add_re,
  output [31:0] io_out_delay_data_add_im,
  output [31:0] io_out_delay_data_mul_re,
  output [31:0] io_out_delay_data_mul_im
);
  wire  condition_div_clock; // @[shuffle.scala 66:21]
  wire  condition_div_reset; // @[shuffle.scala 66:21]
  wire  condition_div_io_en; // @[shuffle.scala 66:21]
  wire  condition_div_io_out; // @[shuffle.scala 66:21]
  wire  mul_delay_delay_clock; // @[Delay.scala 34:23]
  wire  mul_delay_delay_reset; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_in_data_re; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_in_data_im; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_out_data_re; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_out_data_im; // @[Delay.scala 34:23]
  wire  mux_add_io_condition; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_1_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_1_im; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_2_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_in_data_2_im; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_out_data_re; // @[shuffle.scala 120:23]
  wire [31:0] mux_add_io_out_data_im; // @[shuffle.scala 120:23]
  wire  mux_mul_io_condition; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_1_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_1_im; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_2_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_in_data_2_im; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_out_data_re; // @[shuffle.scala 121:23]
  wire [31:0] mux_mul_io_out_data_im; // @[shuffle.scala 121:23]
  wire  io_out_delay_data_add_re_delay_clock; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_re_delay_reset; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_re_delay_io_in_data; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_re_delay_io_out_data; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_im_delay_clock; // @[Delay.scala 60:23]
  wire  io_out_delay_data_add_im_delay_reset; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_im_delay_io_in_data; // @[Delay.scala 60:23]
  wire [31:0] io_out_delay_data_add_im_delay_io_out_data; // @[Delay.scala 60:23]
  wire  io_valid_delay_clock; // @[Delay.scala 111:23]
  wire  io_valid_delay_reset; // @[Delay.scala 111:23]
  wire  io_valid_delay_io_in_data; // @[Delay.scala 111:23]
  wire  io_valid_delay_io_out_data; // @[Delay.scala 111:23]
  Divider_frequency_3 condition_div ( // @[shuffle.scala 66:21]
    .clock(condition_div_clock),
    .reset(condition_div_reset),
    .io_en(condition_div_io_en),
    .io_out(condition_div_io_out)
  );
  Delay_7 mul_delay_delay ( // @[Delay.scala 34:23]
    .clock(mul_delay_delay_clock),
    .reset(mul_delay_delay_reset),
    .io_in_data_re(mul_delay_delay_io_in_data_re),
    .io_in_data_im(mul_delay_delay_io_in_data_im),
    .io_out_data_re(mul_delay_delay_io_out_data_re),
    .io_out_data_im(mul_delay_delay_io_out_data_im)
  );
  Myselect mux_add ( // @[shuffle.scala 120:23]
    .io_condition(mux_add_io_condition),
    .io_in_data_1_re(mux_add_io_in_data_1_re),
    .io_in_data_1_im(mux_add_io_in_data_1_im),
    .io_in_data_2_re(mux_add_io_in_data_2_re),
    .io_in_data_2_im(mux_add_io_in_data_2_im),
    .io_out_data_re(mux_add_io_out_data_re),
    .io_out_data_im(mux_add_io_out_data_im)
  );
  Myselect mux_mul ( // @[shuffle.scala 121:23]
    .io_condition(mux_mul_io_condition),
    .io_in_data_1_re(mux_mul_io_in_data_1_re),
    .io_in_data_1_im(mux_mul_io_in_data_1_im),
    .io_in_data_2_re(mux_mul_io_in_data_2_re),
    .io_in_data_2_im(mux_mul_io_in_data_2_im),
    .io_out_data_re(mux_mul_io_out_data_re),
    .io_out_data_im(mux_mul_io_out_data_im)
  );
  Delayu_6 io_out_delay_data_add_re_delay ( // @[Delay.scala 60:23]
    .clock(io_out_delay_data_add_re_delay_clock),
    .reset(io_out_delay_data_add_re_delay_reset),
    .io_in_data(io_out_delay_data_add_re_delay_io_in_data),
    .io_out_data(io_out_delay_data_add_re_delay_io_out_data)
  );
  Delayu_6 io_out_delay_data_add_im_delay ( // @[Delay.scala 60:23]
    .clock(io_out_delay_data_add_im_delay_clock),
    .reset(io_out_delay_data_add_im_delay_reset),
    .io_in_data(io_out_delay_data_add_im_delay_io_in_data),
    .io_out_data(io_out_delay_data_add_im_delay_io_out_data)
  );
  Delayb_4 io_valid_delay ( // @[Delay.scala 111:23]
    .clock(io_valid_delay_clock),
    .reset(io_valid_delay_reset),
    .io_in_data(io_valid_delay_io_in_data),
    .io_out_data(io_valid_delay_io_out_data)
  );
  assign io_valid = io_valid_delay_io_out_data; // @[shuffle.scala 138:12]
  assign io_out_delay_data_add_re = io_out_delay_data_add_re_delay_io_out_data; // @[shuffle.scala 133:28]
  assign io_out_delay_data_add_im = io_out_delay_data_add_im_delay_io_out_data; // @[shuffle.scala 134:28]
  assign io_out_delay_data_mul_re = mux_mul_io_out_data_re; // @[shuffle.scala 135:25]
  assign io_out_delay_data_mul_im = mux_mul_io_out_data_im; // @[shuffle.scala 135:25]
  assign condition_div_clock = clock;
  assign condition_div_reset = reset;
  assign condition_div_io_en = io_ready; // @[shuffle.scala 67:15]
  assign mul_delay_delay_clock = clock;
  assign mul_delay_delay_reset = reset;
  assign mul_delay_delay_io_in_data_re = io_in_data_mul_re; // @[Delay.scala 35:22]
  assign mul_delay_delay_io_in_data_im = io_in_data_mul_im; // @[Delay.scala 35:22]
  assign mux_add_io_condition = condition_div_io_out; // @[shuffle.scala 123:24]
  assign mux_add_io_in_data_1_re = mul_delay_delay_io_out_data_re; // @[shuffle.scala 124:24]
  assign mux_add_io_in_data_1_im = mul_delay_delay_io_out_data_im; // @[shuffle.scala 124:24]
  assign mux_add_io_in_data_2_re = io_in_data_add_re; // @[shuffle.scala 125:24]
  assign mux_add_io_in_data_2_im = io_in_data_add_im; // @[shuffle.scala 125:24]
  assign mux_mul_io_condition = condition_div_io_out; // @[shuffle.scala 128:24]
  assign mux_mul_io_in_data_1_re = io_in_data_add_re; // @[shuffle.scala 129:24]
  assign mux_mul_io_in_data_1_im = io_in_data_add_im; // @[shuffle.scala 129:24]
  assign mux_mul_io_in_data_2_re = mul_delay_delay_io_out_data_re; // @[shuffle.scala 130:24]
  assign mux_mul_io_in_data_2_im = mul_delay_delay_io_out_data_im; // @[shuffle.scala 130:24]
  assign io_out_delay_data_add_re_delay_clock = clock;
  assign io_out_delay_data_add_re_delay_reset = reset;
  assign io_out_delay_data_add_re_delay_io_in_data = mux_add_io_out_data_re; // @[Delay.scala 61:22]
  assign io_out_delay_data_add_im_delay_clock = clock;
  assign io_out_delay_data_add_im_delay_reset = reset;
  assign io_out_delay_data_add_im_delay_io_in_data = mux_add_io_out_data_im; // @[Delay.scala 61:22]
  assign io_valid_delay_clock = clock;
  assign io_valid_delay_reset = reset;
  assign io_valid_delay_io_in_data = io_ready; // @[Delay.scala 112:22]
endmodule
module BF5_Fourth(
  input         clock,
  input  [31:0] io_in_data_a_re,
  input  [31:0] io_in_data_a_im,
  input  [31:0] io_in_data_b_re,
  input  [31:0] io_in_data_b_im,
  input         io_ready,
  output [31:0] io_out_data_add_re,
  output [31:0] io_out_data_add_im,
  output [31:0] io_out_data_mul_re,
  output [31:0] io_out_data_mul_im,
  output        io_valid
);
  wire  Add_clock; // @[BF5_Fourth.scala 20:19]
  wire [31:0] Add_io_op1_re; // @[BF5_Fourth.scala 20:19]
  wire [31:0] Add_io_op1_im; // @[BF5_Fourth.scala 20:19]
  wire [31:0] Add_io_op2_re; // @[BF5_Fourth.scala 20:19]
  wire [31:0] Add_io_op2_im; // @[BF5_Fourth.scala 20:19]
  wire [31:0] Add_io_res_re; // @[BF5_Fourth.scala 20:19]
  wire [31:0] Add_io_res_im; // @[BF5_Fourth.scala 20:19]
  wire  Add_io_ready; // @[BF5_Fourth.scala 20:19]
  wire  Sub_clock; // @[BF5_Fourth.scala 21:19]
  wire [31:0] Sub_io_op1_re; // @[BF5_Fourth.scala 21:19]
  wire [31:0] Sub_io_op1_im; // @[BF5_Fourth.scala 21:19]
  wire [31:0] Sub_io_op2_re; // @[BF5_Fourth.scala 21:19]
  wire [31:0] Sub_io_op2_im; // @[BF5_Fourth.scala 21:19]
  wire [31:0] Sub_io_res_re; // @[BF5_Fourth.scala 21:19]
  wire [31:0] Sub_io_res_im; // @[BF5_Fourth.scala 21:19]
  wire  Sub_io_ready; // @[BF5_Fourth.scala 21:19]
  wire  Sub_io_valid; // @[BF5_Fourth.scala 21:19]
  FPComplexAdd_blackbox Add ( // @[BF5_Fourth.scala 20:19]
    .clock(Add_clock),
    .io_op1_re(Add_io_op1_re),
    .io_op1_im(Add_io_op1_im),
    .io_op2_re(Add_io_op2_re),
    .io_op2_im(Add_io_op2_im),
    .io_res_re(Add_io_res_re),
    .io_res_im(Add_io_res_im),
    .io_ready(Add_io_ready)
  );
  FPComplexSub_blackbox Sub ( // @[BF5_Fourth.scala 21:19]
    .clock(Sub_clock),
    .io_op1_re(Sub_io_op1_re),
    .io_op1_im(Sub_io_op1_im),
    .io_op2_re(Sub_io_op2_re),
    .io_op2_im(Sub_io_op2_im),
    .io_res_re(Sub_io_res_re),
    .io_res_im(Sub_io_res_im),
    .io_ready(Sub_io_ready),
    .io_valid(Sub_io_valid)
  );
  assign io_out_data_add_re = Add_io_res_re; // @[BF5_Fourth.scala 37:19]
  assign io_out_data_add_im = Add_io_res_im; // @[BF5_Fourth.scala 37:19]
  assign io_out_data_mul_re = Sub_io_res_re; // @[BF5_Fourth.scala 38:19]
  assign io_out_data_mul_im = Sub_io_res_im; // @[BF5_Fourth.scala 38:19]
  assign io_valid = Sub_io_valid; // @[BF5_Fourth.scala 36:12]
  assign Add_clock = clock;
  assign Add_io_op1_re = io_in_data_a_re; // @[BF5_Fourth.scala 26:14]
  assign Add_io_op1_im = io_in_data_a_im; // @[BF5_Fourth.scala 26:14]
  assign Add_io_op2_re = io_in_data_b_re; // @[BF5_Fourth.scala 27:14]
  assign Add_io_op2_im = io_in_data_b_im; // @[BF5_Fourth.scala 27:14]
  assign Add_io_ready = io_ready; // @[BF5_Fourth.scala 28:16]
  assign Sub_clock = clock;
  assign Sub_io_op1_re = io_in_data_a_re; // @[BF5_Fourth.scala 31:14]
  assign Sub_io_op1_im = io_in_data_a_im; // @[BF5_Fourth.scala 31:14]
  assign Sub_io_op2_re = io_in_data_b_re; // @[BF5_Fourth.scala 32:14]
  assign Sub_io_op2_im = io_in_data_b_im; // @[BF5_Fourth.scala 32:14]
  assign Sub_io_ready = io_ready; // @[BF5_Fourth.scala 33:16]
endmodule
module Fourth_Row(
  input         clock,
  input         reset,
  input  [31:0] io_number,
  output [31:0] io_out_data_a_re,
  output [31:0] io_out_data_a_im,
  output [31:0] io_out_data_b_re,
  output [31:0] io_out_data_b_im,
  input         io_ready,
  output        io_valid
);
  wire  Memory_First_clock; // @[Fourth_Row.scala 19:28]
  wire  Memory_First_reset; // @[Fourth_Row.scala 19:28]
  wire  Memory_First_io_ready; // @[Fourth_Row.scala 19:28]
  wire [31:0] Memory_First_io_number; // @[Fourth_Row.scala 19:28]
  wire [31:0] Memory_First_io_out_data_add_re; // @[Fourth_Row.scala 19:28]
  wire [31:0] Memory_First_io_out_data_add_im; // @[Fourth_Row.scala 19:28]
  wire [31:0] Memory_First_io_out_data_sub_re; // @[Fourth_Row.scala 19:28]
  wire [31:0] Memory_First_io_out_data_sub_im; // @[Fourth_Row.scala 19:28]
  wire  Memory_First_io_valid; // @[Fourth_Row.scala 19:28]
  wire  BF1_Dyn_blackbox_clock; // @[Fourth_Row.scala 23:32]
  wire  BF1_Dyn_blackbox_reset; // @[Fourth_Row.scala 23:32]
  wire [31:0] BF1_Dyn_blackbox_io_in_data_a_re; // @[Fourth_Row.scala 23:32]
  wire [31:0] BF1_Dyn_blackbox_io_in_data_a_im; // @[Fourth_Row.scala 23:32]
  wire [31:0] BF1_Dyn_blackbox_io_in_data_b_re; // @[Fourth_Row.scala 23:32]
  wire [31:0] BF1_Dyn_blackbox_io_in_data_b_im; // @[Fourth_Row.scala 23:32]
  wire  BF1_Dyn_blackbox_io_ready; // @[Fourth_Row.scala 23:32]
  wire [31:0] BF1_Dyn_blackbox_io_out_data_add_re; // @[Fourth_Row.scala 23:32]
  wire [31:0] BF1_Dyn_blackbox_io_out_data_add_im; // @[Fourth_Row.scala 23:32]
  wire [31:0] BF1_Dyn_blackbox_io_out_data_mul_re; // @[Fourth_Row.scala 23:32]
  wire [31:0] BF1_Dyn_blackbox_io_out_data_mul_im; // @[Fourth_Row.scala 23:32]
  wire  BF1_Dyn_blackbox_io_valid; // @[Fourth_Row.scala 23:32]
  wire  shuffle_8_clock; // @[Fourth_Row.scala 29:25]
  wire  shuffle_8_reset; // @[Fourth_Row.scala 29:25]
  wire [31:0] shuffle_8_io_in_data_add_re; // @[Fourth_Row.scala 29:25]
  wire [31:0] shuffle_8_io_in_data_add_im; // @[Fourth_Row.scala 29:25]
  wire [31:0] shuffle_8_io_in_data_mul_re; // @[Fourth_Row.scala 29:25]
  wire [31:0] shuffle_8_io_in_data_mul_im; // @[Fourth_Row.scala 29:25]
  wire  shuffle_8_io_ready; // @[Fourth_Row.scala 29:25]
  wire  shuffle_8_io_valid; // @[Fourth_Row.scala 29:25]
  wire [31:0] shuffle_8_io_out_delay_data_add_re; // @[Fourth_Row.scala 29:25]
  wire [31:0] shuffle_8_io_out_delay_data_add_im; // @[Fourth_Row.scala 29:25]
  wire [31:0] shuffle_8_io_out_delay_data_mul_re; // @[Fourth_Row.scala 29:25]
  wire [31:0] shuffle_8_io_out_delay_data_mul_im; // @[Fourth_Row.scala 29:25]
  wire  BF2_Dyn_blackbox_clock; // @[Fourth_Row.scala 35:32]
  wire  BF2_Dyn_blackbox_reset; // @[Fourth_Row.scala 35:32]
  wire [31:0] BF2_Dyn_blackbox_io_in_data_a_re; // @[Fourth_Row.scala 35:32]
  wire [31:0] BF2_Dyn_blackbox_io_in_data_a_im; // @[Fourth_Row.scala 35:32]
  wire [31:0] BF2_Dyn_blackbox_io_in_data_b_re; // @[Fourth_Row.scala 35:32]
  wire [31:0] BF2_Dyn_blackbox_io_in_data_b_im; // @[Fourth_Row.scala 35:32]
  wire  BF2_Dyn_blackbox_io_ready; // @[Fourth_Row.scala 35:32]
  wire [31:0] BF2_Dyn_blackbox_io_out_data_add_re; // @[Fourth_Row.scala 35:32]
  wire [31:0] BF2_Dyn_blackbox_io_out_data_add_im; // @[Fourth_Row.scala 35:32]
  wire [31:0] BF2_Dyn_blackbox_io_out_data_mul_re; // @[Fourth_Row.scala 35:32]
  wire [31:0] BF2_Dyn_blackbox_io_out_data_mul_im; // @[Fourth_Row.scala 35:32]
  wire  BF2_Dyn_blackbox_io_valid; // @[Fourth_Row.scala 35:32]
  wire  shuffle_4_clock; // @[Fourth_Row.scala 40:25]
  wire  shuffle_4_reset; // @[Fourth_Row.scala 40:25]
  wire [31:0] shuffle_4_io_in_data_add_re; // @[Fourth_Row.scala 40:25]
  wire [31:0] shuffle_4_io_in_data_add_im; // @[Fourth_Row.scala 40:25]
  wire [31:0] shuffle_4_io_in_data_mul_re; // @[Fourth_Row.scala 40:25]
  wire [31:0] shuffle_4_io_in_data_mul_im; // @[Fourth_Row.scala 40:25]
  wire  shuffle_4_io_ready; // @[Fourth_Row.scala 40:25]
  wire  shuffle_4_io_valid; // @[Fourth_Row.scala 40:25]
  wire [31:0] shuffle_4_io_out_delay_data_add_re; // @[Fourth_Row.scala 40:25]
  wire [31:0] shuffle_4_io_out_delay_data_add_im; // @[Fourth_Row.scala 40:25]
  wire [31:0] shuffle_4_io_out_delay_data_mul_re; // @[Fourth_Row.scala 40:25]
  wire [31:0] shuffle_4_io_out_delay_data_mul_im; // @[Fourth_Row.scala 40:25]
  wire  BF3_Dyn_blackbox_clock; // @[Fourth_Row.scala 45:32]
  wire  BF3_Dyn_blackbox_reset; // @[Fourth_Row.scala 45:32]
  wire [31:0] BF3_Dyn_blackbox_io_in_data_a_re; // @[Fourth_Row.scala 45:32]
  wire [31:0] BF3_Dyn_blackbox_io_in_data_a_im; // @[Fourth_Row.scala 45:32]
  wire [31:0] BF3_Dyn_blackbox_io_in_data_b_re; // @[Fourth_Row.scala 45:32]
  wire [31:0] BF3_Dyn_blackbox_io_in_data_b_im; // @[Fourth_Row.scala 45:32]
  wire  BF3_Dyn_blackbox_io_ready; // @[Fourth_Row.scala 45:32]
  wire [31:0] BF3_Dyn_blackbox_io_out_data_add_re; // @[Fourth_Row.scala 45:32]
  wire [31:0] BF3_Dyn_blackbox_io_out_data_add_im; // @[Fourth_Row.scala 45:32]
  wire [31:0] BF3_Dyn_blackbox_io_out_data_mul_re; // @[Fourth_Row.scala 45:32]
  wire [31:0] BF3_Dyn_blackbox_io_out_data_mul_im; // @[Fourth_Row.scala 45:32]
  wire  BF3_Dyn_blackbox_io_valid; // @[Fourth_Row.scala 45:32]
  wire  shuffle_2_clock; // @[Fourth_Row.scala 50:25]
  wire  shuffle_2_reset; // @[Fourth_Row.scala 50:25]
  wire [31:0] shuffle_2_io_in_data_add_re; // @[Fourth_Row.scala 50:25]
  wire [31:0] shuffle_2_io_in_data_add_im; // @[Fourth_Row.scala 50:25]
  wire [31:0] shuffle_2_io_in_data_mul_re; // @[Fourth_Row.scala 50:25]
  wire [31:0] shuffle_2_io_in_data_mul_im; // @[Fourth_Row.scala 50:25]
  wire  shuffle_2_io_ready; // @[Fourth_Row.scala 50:25]
  wire  shuffle_2_io_valid; // @[Fourth_Row.scala 50:25]
  wire [31:0] shuffle_2_io_out_delay_data_add_re; // @[Fourth_Row.scala 50:25]
  wire [31:0] shuffle_2_io_out_delay_data_add_im; // @[Fourth_Row.scala 50:25]
  wire [31:0] shuffle_2_io_out_delay_data_mul_re; // @[Fourth_Row.scala 50:25]
  wire [31:0] shuffle_2_io_out_delay_data_mul_im; // @[Fourth_Row.scala 50:25]
  wire  BF4_Dyn_blackbox_clock; // @[Fourth_Row.scala 55:32]
  wire  BF4_Dyn_blackbox_reset; // @[Fourth_Row.scala 55:32]
  wire [31:0] BF4_Dyn_blackbox_io_in_data_a_re; // @[Fourth_Row.scala 55:32]
  wire [31:0] BF4_Dyn_blackbox_io_in_data_a_im; // @[Fourth_Row.scala 55:32]
  wire [31:0] BF4_Dyn_blackbox_io_in_data_b_re; // @[Fourth_Row.scala 55:32]
  wire [31:0] BF4_Dyn_blackbox_io_in_data_b_im; // @[Fourth_Row.scala 55:32]
  wire  BF4_Dyn_blackbox_io_ready; // @[Fourth_Row.scala 55:32]
  wire [31:0] BF4_Dyn_blackbox_io_out_data_add_re; // @[Fourth_Row.scala 55:32]
  wire [31:0] BF4_Dyn_blackbox_io_out_data_add_im; // @[Fourth_Row.scala 55:32]
  wire [31:0] BF4_Dyn_blackbox_io_out_data_mul_re; // @[Fourth_Row.scala 55:32]
  wire [31:0] BF4_Dyn_blackbox_io_out_data_mul_im; // @[Fourth_Row.scala 55:32]
  wire  BF4_Dyn_blackbox_io_valid; // @[Fourth_Row.scala 55:32]
  wire  shuffle_1_clock; // @[Fourth_Row.scala 60:25]
  wire  shuffle_1_reset; // @[Fourth_Row.scala 60:25]
  wire [31:0] shuffle_1_io_in_data_add_re; // @[Fourth_Row.scala 60:25]
  wire [31:0] shuffle_1_io_in_data_add_im; // @[Fourth_Row.scala 60:25]
  wire [31:0] shuffle_1_io_in_data_mul_re; // @[Fourth_Row.scala 60:25]
  wire [31:0] shuffle_1_io_in_data_mul_im; // @[Fourth_Row.scala 60:25]
  wire  shuffle_1_io_ready; // @[Fourth_Row.scala 60:25]
  wire  shuffle_1_io_valid; // @[Fourth_Row.scala 60:25]
  wire [31:0] shuffle_1_io_out_delay_data_add_re; // @[Fourth_Row.scala 60:25]
  wire [31:0] shuffle_1_io_out_delay_data_add_im; // @[Fourth_Row.scala 60:25]
  wire [31:0] shuffle_1_io_out_delay_data_mul_re; // @[Fourth_Row.scala 60:25]
  wire [31:0] shuffle_1_io_out_delay_data_mul_im; // @[Fourth_Row.scala 60:25]
  wire  BF5_Dyn_blackbox_clock; // @[Fourth_Row.scala 65:32]
  wire [31:0] BF5_Dyn_blackbox_io_in_data_a_re; // @[Fourth_Row.scala 65:32]
  wire [31:0] BF5_Dyn_blackbox_io_in_data_a_im; // @[Fourth_Row.scala 65:32]
  wire [31:0] BF5_Dyn_blackbox_io_in_data_b_re; // @[Fourth_Row.scala 65:32]
  wire [31:0] BF5_Dyn_blackbox_io_in_data_b_im; // @[Fourth_Row.scala 65:32]
  wire  BF5_Dyn_blackbox_io_ready; // @[Fourth_Row.scala 65:32]
  wire [31:0] BF5_Dyn_blackbox_io_out_data_add_re; // @[Fourth_Row.scala 65:32]
  wire [31:0] BF5_Dyn_blackbox_io_out_data_add_im; // @[Fourth_Row.scala 65:32]
  wire [31:0] BF5_Dyn_blackbox_io_out_data_mul_re; // @[Fourth_Row.scala 65:32]
  wire [31:0] BF5_Dyn_blackbox_io_out_data_mul_im; // @[Fourth_Row.scala 65:32]
  wire  BF5_Dyn_blackbox_io_valid; // @[Fourth_Row.scala 65:32]
  Memory_First Memory_First ( // @[Fourth_Row.scala 19:28]
    .clock(Memory_First_clock),
    .reset(Memory_First_reset),
    .io_ready(Memory_First_io_ready),
    .io_number(Memory_First_io_number),
    .io_out_data_add_re(Memory_First_io_out_data_add_re),
    .io_out_data_add_im(Memory_First_io_out_data_add_im),
    .io_out_data_sub_re(Memory_First_io_out_data_sub_re),
    .io_out_data_sub_im(Memory_First_io_out_data_sub_im),
    .io_valid(Memory_First_io_valid)
  );
  BF1_Dyn_blackbox BF1_Dyn_blackbox ( // @[Fourth_Row.scala 23:32]
    .clock(BF1_Dyn_blackbox_clock),
    .reset(BF1_Dyn_blackbox_reset),
    .io_in_data_a_re(BF1_Dyn_blackbox_io_in_data_a_re),
    .io_in_data_a_im(BF1_Dyn_blackbox_io_in_data_a_im),
    .io_in_data_b_re(BF1_Dyn_blackbox_io_in_data_b_re),
    .io_in_data_b_im(BF1_Dyn_blackbox_io_in_data_b_im),
    .io_ready(BF1_Dyn_blackbox_io_ready),
    .io_out_data_add_re(BF1_Dyn_blackbox_io_out_data_add_re),
    .io_out_data_add_im(BF1_Dyn_blackbox_io_out_data_add_im),
    .io_out_data_mul_re(BF1_Dyn_blackbox_io_out_data_mul_re),
    .io_out_data_mul_im(BF1_Dyn_blackbox_io_out_data_mul_im),
    .io_valid(BF1_Dyn_blackbox_io_valid)
  );
  shuffle shuffle_8 ( // @[Fourth_Row.scala 29:25]
    .clock(shuffle_8_clock),
    .reset(shuffle_8_reset),
    .io_in_data_add_re(shuffle_8_io_in_data_add_re),
    .io_in_data_add_im(shuffle_8_io_in_data_add_im),
    .io_in_data_mul_re(shuffle_8_io_in_data_mul_re),
    .io_in_data_mul_im(shuffle_8_io_in_data_mul_im),
    .io_ready(shuffle_8_io_ready),
    .io_valid(shuffle_8_io_valid),
    .io_out_delay_data_add_re(shuffle_8_io_out_delay_data_add_re),
    .io_out_delay_data_add_im(shuffle_8_io_out_delay_data_add_im),
    .io_out_delay_data_mul_re(shuffle_8_io_out_delay_data_mul_re),
    .io_out_delay_data_mul_im(shuffle_8_io_out_delay_data_mul_im)
  );
  BF2_Dyn_blackbox BF2_Dyn_blackbox ( // @[Fourth_Row.scala 35:32]
    .clock(BF2_Dyn_blackbox_clock),
    .reset(BF2_Dyn_blackbox_reset),
    .io_in_data_a_re(BF2_Dyn_blackbox_io_in_data_a_re),
    .io_in_data_a_im(BF2_Dyn_blackbox_io_in_data_a_im),
    .io_in_data_b_re(BF2_Dyn_blackbox_io_in_data_b_re),
    .io_in_data_b_im(BF2_Dyn_blackbox_io_in_data_b_im),
    .io_ready(BF2_Dyn_blackbox_io_ready),
    .io_out_data_add_re(BF2_Dyn_blackbox_io_out_data_add_re),
    .io_out_data_add_im(BF2_Dyn_blackbox_io_out_data_add_im),
    .io_out_data_mul_re(BF2_Dyn_blackbox_io_out_data_mul_re),
    .io_out_data_mul_im(BF2_Dyn_blackbox_io_out_data_mul_im),
    .io_valid(BF2_Dyn_blackbox_io_valid)
  );
  shuffle_1 shuffle_4 ( // @[Fourth_Row.scala 40:25]
    .clock(shuffle_4_clock),
    .reset(shuffle_4_reset),
    .io_in_data_add_re(shuffle_4_io_in_data_add_re),
    .io_in_data_add_im(shuffle_4_io_in_data_add_im),
    .io_in_data_mul_re(shuffle_4_io_in_data_mul_re),
    .io_in_data_mul_im(shuffle_4_io_in_data_mul_im),
    .io_ready(shuffle_4_io_ready),
    .io_valid(shuffle_4_io_valid),
    .io_out_delay_data_add_re(shuffle_4_io_out_delay_data_add_re),
    .io_out_delay_data_add_im(shuffle_4_io_out_delay_data_add_im),
    .io_out_delay_data_mul_re(shuffle_4_io_out_delay_data_mul_re),
    .io_out_delay_data_mul_im(shuffle_4_io_out_delay_data_mul_im)
  );
  BF3_Dyn_blackbox BF3_Dyn_blackbox ( // @[Fourth_Row.scala 45:32]
    .clock(BF3_Dyn_blackbox_clock),
    .reset(BF3_Dyn_blackbox_reset),
    .io_in_data_a_re(BF3_Dyn_blackbox_io_in_data_a_re),
    .io_in_data_a_im(BF3_Dyn_blackbox_io_in_data_a_im),
    .io_in_data_b_re(BF3_Dyn_blackbox_io_in_data_b_re),
    .io_in_data_b_im(BF3_Dyn_blackbox_io_in_data_b_im),
    .io_ready(BF3_Dyn_blackbox_io_ready),
    .io_out_data_add_re(BF3_Dyn_blackbox_io_out_data_add_re),
    .io_out_data_add_im(BF3_Dyn_blackbox_io_out_data_add_im),
    .io_out_data_mul_re(BF3_Dyn_blackbox_io_out_data_mul_re),
    .io_out_data_mul_im(BF3_Dyn_blackbox_io_out_data_mul_im),
    .io_valid(BF3_Dyn_blackbox_io_valid)
  );
  shuffle_2 shuffle_2 ( // @[Fourth_Row.scala 50:25]
    .clock(shuffle_2_clock),
    .reset(shuffle_2_reset),
    .io_in_data_add_re(shuffle_2_io_in_data_add_re),
    .io_in_data_add_im(shuffle_2_io_in_data_add_im),
    .io_in_data_mul_re(shuffle_2_io_in_data_mul_re),
    .io_in_data_mul_im(shuffle_2_io_in_data_mul_im),
    .io_ready(shuffle_2_io_ready),
    .io_valid(shuffle_2_io_valid),
    .io_out_delay_data_add_re(shuffle_2_io_out_delay_data_add_re),
    .io_out_delay_data_add_im(shuffle_2_io_out_delay_data_add_im),
    .io_out_delay_data_mul_re(shuffle_2_io_out_delay_data_mul_re),
    .io_out_delay_data_mul_im(shuffle_2_io_out_delay_data_mul_im)
  );
  BF4_Dyn_blackbox BF4_Dyn_blackbox ( // @[Fourth_Row.scala 55:32]
    .clock(BF4_Dyn_blackbox_clock),
    .reset(BF4_Dyn_blackbox_reset),
    .io_in_data_a_re(BF4_Dyn_blackbox_io_in_data_a_re),
    .io_in_data_a_im(BF4_Dyn_blackbox_io_in_data_a_im),
    .io_in_data_b_re(BF4_Dyn_blackbox_io_in_data_b_re),
    .io_in_data_b_im(BF4_Dyn_blackbox_io_in_data_b_im),
    .io_ready(BF4_Dyn_blackbox_io_ready),
    .io_out_data_add_re(BF4_Dyn_blackbox_io_out_data_add_re),
    .io_out_data_add_im(BF4_Dyn_blackbox_io_out_data_add_im),
    .io_out_data_mul_re(BF4_Dyn_blackbox_io_out_data_mul_re),
    .io_out_data_mul_im(BF4_Dyn_blackbox_io_out_data_mul_im),
    .io_valid(BF4_Dyn_blackbox_io_valid)
  );
  shuffle_3 shuffle_1 ( // @[Fourth_Row.scala 60:25]
    .clock(shuffle_1_clock),
    .reset(shuffle_1_reset),
    .io_in_data_add_re(shuffle_1_io_in_data_add_re),
    .io_in_data_add_im(shuffle_1_io_in_data_add_im),
    .io_in_data_mul_re(shuffle_1_io_in_data_mul_re),
    .io_in_data_mul_im(shuffle_1_io_in_data_mul_im),
    .io_ready(shuffle_1_io_ready),
    .io_valid(shuffle_1_io_valid),
    .io_out_delay_data_add_re(shuffle_1_io_out_delay_data_add_re),
    .io_out_delay_data_add_im(shuffle_1_io_out_delay_data_add_im),
    .io_out_delay_data_mul_re(shuffle_1_io_out_delay_data_mul_re),
    .io_out_delay_data_mul_im(shuffle_1_io_out_delay_data_mul_im)
  );
  BF5_Fourth BF5_Dyn_blackbox ( // @[Fourth_Row.scala 65:32]
    .clock(BF5_Dyn_blackbox_clock),
    .io_in_data_a_re(BF5_Dyn_blackbox_io_in_data_a_re),
    .io_in_data_a_im(BF5_Dyn_blackbox_io_in_data_a_im),
    .io_in_data_b_re(BF5_Dyn_blackbox_io_in_data_b_re),
    .io_in_data_b_im(BF5_Dyn_blackbox_io_in_data_b_im),
    .io_ready(BF5_Dyn_blackbox_io_ready),
    .io_out_data_add_re(BF5_Dyn_blackbox_io_out_data_add_re),
    .io_out_data_add_im(BF5_Dyn_blackbox_io_out_data_add_im),
    .io_out_data_mul_re(BF5_Dyn_blackbox_io_out_data_mul_re),
    .io_out_data_mul_im(BF5_Dyn_blackbox_io_out_data_mul_im),
    .io_valid(BF5_Dyn_blackbox_io_valid)
  );
  assign io_out_data_a_re = BF5_Dyn_blackbox_io_out_data_add_re; // @[Fourth_Row.scala 71:17]
  assign io_out_data_a_im = BF5_Dyn_blackbox_io_out_data_add_im; // @[Fourth_Row.scala 71:17]
  assign io_out_data_b_re = BF5_Dyn_blackbox_io_out_data_mul_re; // @[Fourth_Row.scala 72:17]
  assign io_out_data_b_im = BF5_Dyn_blackbox_io_out_data_mul_im; // @[Fourth_Row.scala 72:17]
  assign io_valid = BF5_Dyn_blackbox_io_valid; // @[Fourth_Row.scala 74:12]
  assign Memory_First_clock = clock;
  assign Memory_First_reset = reset;
  assign Memory_First_io_ready = io_ready; // @[Fourth_Row.scala 21:25]
  assign Memory_First_io_number = io_number; // @[Fourth_Row.scala 20:26]
  assign BF1_Dyn_blackbox_clock = clock;
  assign BF1_Dyn_blackbox_reset = reset;
  assign BF1_Dyn_blackbox_io_in_data_a_re = Memory_First_io_out_data_add_re; // @[Fourth_Row.scala 25:33]
  assign BF1_Dyn_blackbox_io_in_data_a_im = Memory_First_io_out_data_add_im; // @[Fourth_Row.scala 25:33]
  assign BF1_Dyn_blackbox_io_in_data_b_re = Memory_First_io_out_data_sub_re; // @[Fourth_Row.scala 26:33]
  assign BF1_Dyn_blackbox_io_in_data_b_im = Memory_First_io_out_data_sub_im; // @[Fourth_Row.scala 26:33]
  assign BF1_Dyn_blackbox_io_ready = Memory_First_io_valid; // @[Fourth_Row.scala 24:29]
  assign shuffle_8_clock = clock;
  assign shuffle_8_reset = reset;
  assign shuffle_8_io_in_data_add_re = BF1_Dyn_blackbox_io_out_data_add_re; // @[Fourth_Row.scala 31:28]
  assign shuffle_8_io_in_data_add_im = BF1_Dyn_blackbox_io_out_data_add_im; // @[Fourth_Row.scala 31:28]
  assign shuffle_8_io_in_data_mul_re = BF1_Dyn_blackbox_io_out_data_mul_re; // @[Fourth_Row.scala 32:28]
  assign shuffle_8_io_in_data_mul_im = BF1_Dyn_blackbox_io_out_data_mul_im; // @[Fourth_Row.scala 32:28]
  assign shuffle_8_io_ready = BF1_Dyn_blackbox_io_valid; // @[Fourth_Row.scala 30:22]
  assign BF2_Dyn_blackbox_clock = clock;
  assign BF2_Dyn_blackbox_reset = reset;
  assign BF2_Dyn_blackbox_io_in_data_a_re = shuffle_8_io_out_delay_data_add_re; // @[Fourth_Row.scala 37:33]
  assign BF2_Dyn_blackbox_io_in_data_a_im = shuffle_8_io_out_delay_data_add_im; // @[Fourth_Row.scala 37:33]
  assign BF2_Dyn_blackbox_io_in_data_b_re = shuffle_8_io_out_delay_data_mul_re; // @[Fourth_Row.scala 38:33]
  assign BF2_Dyn_blackbox_io_in_data_b_im = shuffle_8_io_out_delay_data_mul_im; // @[Fourth_Row.scala 38:33]
  assign BF2_Dyn_blackbox_io_ready = shuffle_8_io_valid; // @[Fourth_Row.scala 36:29]
  assign shuffle_4_clock = clock;
  assign shuffle_4_reset = reset;
  assign shuffle_4_io_in_data_add_re = BF2_Dyn_blackbox_io_out_data_add_re; // @[Fourth_Row.scala 42:28]
  assign shuffle_4_io_in_data_add_im = BF2_Dyn_blackbox_io_out_data_add_im; // @[Fourth_Row.scala 42:28]
  assign shuffle_4_io_in_data_mul_re = BF2_Dyn_blackbox_io_out_data_mul_re; // @[Fourth_Row.scala 43:28]
  assign shuffle_4_io_in_data_mul_im = BF2_Dyn_blackbox_io_out_data_mul_im; // @[Fourth_Row.scala 43:28]
  assign shuffle_4_io_ready = BF2_Dyn_blackbox_io_valid; // @[Fourth_Row.scala 41:22]
  assign BF3_Dyn_blackbox_clock = clock;
  assign BF3_Dyn_blackbox_reset = reset;
  assign BF3_Dyn_blackbox_io_in_data_a_re = shuffle_4_io_out_delay_data_add_re; // @[Fourth_Row.scala 47:33]
  assign BF3_Dyn_blackbox_io_in_data_a_im = shuffle_4_io_out_delay_data_add_im; // @[Fourth_Row.scala 47:33]
  assign BF3_Dyn_blackbox_io_in_data_b_re = shuffle_4_io_out_delay_data_mul_re; // @[Fourth_Row.scala 48:33]
  assign BF3_Dyn_blackbox_io_in_data_b_im = shuffle_4_io_out_delay_data_mul_im; // @[Fourth_Row.scala 48:33]
  assign BF3_Dyn_blackbox_io_ready = shuffle_4_io_valid; // @[Fourth_Row.scala 46:29]
  assign shuffle_2_clock = clock;
  assign shuffle_2_reset = reset;
  assign shuffle_2_io_in_data_add_re = BF3_Dyn_blackbox_io_out_data_add_re; // @[Fourth_Row.scala 52:28]
  assign shuffle_2_io_in_data_add_im = BF3_Dyn_blackbox_io_out_data_add_im; // @[Fourth_Row.scala 52:28]
  assign shuffle_2_io_in_data_mul_re = BF3_Dyn_blackbox_io_out_data_mul_re; // @[Fourth_Row.scala 53:28]
  assign shuffle_2_io_in_data_mul_im = BF3_Dyn_blackbox_io_out_data_mul_im; // @[Fourth_Row.scala 53:28]
  assign shuffle_2_io_ready = BF3_Dyn_blackbox_io_valid; // @[Fourth_Row.scala 51:22]
  assign BF4_Dyn_blackbox_clock = clock;
  assign BF4_Dyn_blackbox_reset = reset;
  assign BF4_Dyn_blackbox_io_in_data_a_re = shuffle_2_io_out_delay_data_add_re; // @[Fourth_Row.scala 57:33]
  assign BF4_Dyn_blackbox_io_in_data_a_im = shuffle_2_io_out_delay_data_add_im; // @[Fourth_Row.scala 57:33]
  assign BF4_Dyn_blackbox_io_in_data_b_re = shuffle_2_io_out_delay_data_mul_re; // @[Fourth_Row.scala 58:33]
  assign BF4_Dyn_blackbox_io_in_data_b_im = shuffle_2_io_out_delay_data_mul_im; // @[Fourth_Row.scala 58:33]
  assign BF4_Dyn_blackbox_io_ready = shuffle_2_io_valid; // @[Fourth_Row.scala 56:29]
  assign shuffle_1_clock = clock;
  assign shuffle_1_reset = reset;
  assign shuffle_1_io_in_data_add_re = BF4_Dyn_blackbox_io_out_data_add_re; // @[Fourth_Row.scala 62:28]
  assign shuffle_1_io_in_data_add_im = BF4_Dyn_blackbox_io_out_data_add_im; // @[Fourth_Row.scala 62:28]
  assign shuffle_1_io_in_data_mul_re = BF4_Dyn_blackbox_io_out_data_mul_re; // @[Fourth_Row.scala 63:28]
  assign shuffle_1_io_in_data_mul_im = BF4_Dyn_blackbox_io_out_data_mul_im; // @[Fourth_Row.scala 63:28]
  assign shuffle_1_io_ready = BF4_Dyn_blackbox_io_valid; // @[Fourth_Row.scala 61:22]
  assign BF5_Dyn_blackbox_clock = clock;
  assign BF5_Dyn_blackbox_io_in_data_a_re = shuffle_1_io_out_delay_data_add_re; // @[Fourth_Row.scala 67:33]
  assign BF5_Dyn_blackbox_io_in_data_a_im = shuffle_1_io_out_delay_data_add_im; // @[Fourth_Row.scala 67:33]
  assign BF5_Dyn_blackbox_io_in_data_b_re = shuffle_1_io_out_delay_data_mul_re; // @[Fourth_Row.scala 68:33]
  assign BF5_Dyn_blackbox_io_in_data_b_im = shuffle_1_io_out_delay_data_mul_im; // @[Fourth_Row.scala 68:33]
  assign BF5_Dyn_blackbox_io_ready = shuffle_1_io_valid; // @[Fourth_Row.scala 66:29]
endmodule
