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
  reg  countReg; // @[BFII_WithBlackBox.scala 68:25]
  reg  toggleReg; // @[BFII_WithBlackBox.scala 69:26]
  wire  _GEN_0 = countReg | countReg + 1'h1; // @[BFII_WithBlackBox.scala 72:37 73:16 76:16]
  assign io_out = toggleReg; // @[BFII_WithBlackBox.scala 80:10]
  always @(posedge clock) begin
    if (reset) begin // @[BFII_WithBlackBox.scala 68:25]
      countReg <= 1'h0; // @[BFII_WithBlackBox.scala 68:25]
    end else if (io_en) begin // @[BFII_WithBlackBox.scala 71:15]
      countReg <= _GEN_0;
    end
    if (reset) begin // @[BFII_WithBlackBox.scala 69:26]
      toggleReg <= 1'h0; // @[BFII_WithBlackBox.scala 69:26]
    end else if (io_en) begin // @[BFII_WithBlackBox.scala 71:15]
      if (countReg) begin // @[BFII_WithBlackBox.scala 72:37]
        toggleReg <= ~toggleReg; // @[BFII_WithBlackBox.scala 74:17]
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
module Myselect(
  input         io_condition,
  input  [31:0] io_in_data_1_re,
  input  [31:0] io_in_data_1_im,
  input  [31:0] io_in_data_2_re,
  input  [31:0] io_in_data_2_im,
  output [31:0] io_out_data_re,
  output [31:0] io_out_data_im
);
  assign io_out_data_re = io_condition ? io_in_data_1_re : io_in_data_2_re; // @[shuffle.scala 27:24 28:19 30:18]
  assign io_out_data_im = io_condition ? io_in_data_1_im : io_in_data_2_im; // @[shuffle.scala 27:24 28:19 30:18]
endmodule
module Delayu(
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
  wire  condition_div_clock; // @[BFII_WithBlackBox.scala 120:21]
  wire  condition_div_reset; // @[BFII_WithBlackBox.scala 120:21]
  wire  condition_div_io_en; // @[BFII_WithBlackBox.scala 120:21]
  wire  condition_div_io_out; // @[BFII_WithBlackBox.scala 120:21]
  wire  mul_delay_delay_clock; // @[Delay.scala 34:23]
  wire  mul_delay_delay_reset; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_in_data_re; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_in_data_im; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_out_data_re; // @[Delay.scala 34:23]
  wire [31:0] mul_delay_delay_io_out_data_im; // @[Delay.scala 34:23]
  wire  mux_add_io_condition; // @[shuffle.scala 59:23]
  wire [31:0] mux_add_io_in_data_1_re; // @[shuffle.scala 59:23]
  wire [31:0] mux_add_io_in_data_1_im; // @[shuffle.scala 59:23]
  wire [31:0] mux_add_io_in_data_2_re; // @[shuffle.scala 59:23]
  wire [31:0] mux_add_io_in_data_2_im; // @[shuffle.scala 59:23]
  wire [31:0] mux_add_io_out_data_re; // @[shuffle.scala 59:23]
  wire [31:0] mux_add_io_out_data_im; // @[shuffle.scala 59:23]
  wire  mux_mul_io_condition; // @[shuffle.scala 60:23]
  wire [31:0] mux_mul_io_in_data_1_re; // @[shuffle.scala 60:23]
  wire [31:0] mux_mul_io_in_data_1_im; // @[shuffle.scala 60:23]
  wire [31:0] mux_mul_io_in_data_2_re; // @[shuffle.scala 60:23]
  wire [31:0] mux_mul_io_in_data_2_im; // @[shuffle.scala 60:23]
  wire [31:0] mux_mul_io_out_data_re; // @[shuffle.scala 60:23]
  wire [31:0] mux_mul_io_out_data_im; // @[shuffle.scala 60:23]
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
  Divider_frequency condition_div ( // @[BFII_WithBlackBox.scala 120:21]
    .clock(condition_div_clock),
    .reset(condition_div_reset),
    .io_en(condition_div_io_en),
    .io_out(condition_div_io_out)
  );
  Delay mul_delay_delay ( // @[Delay.scala 34:23]
    .clock(mul_delay_delay_clock),
    .reset(mul_delay_delay_reset),
    .io_in_data_re(mul_delay_delay_io_in_data_re),
    .io_in_data_im(mul_delay_delay_io_in_data_im),
    .io_out_data_re(mul_delay_delay_io_out_data_re),
    .io_out_data_im(mul_delay_delay_io_out_data_im)
  );
  Myselect mux_add ( // @[shuffle.scala 59:23]
    .io_condition(mux_add_io_condition),
    .io_in_data_1_re(mux_add_io_in_data_1_re),
    .io_in_data_1_im(mux_add_io_in_data_1_im),
    .io_in_data_2_re(mux_add_io_in_data_2_re),
    .io_in_data_2_im(mux_add_io_in_data_2_im),
    .io_out_data_re(mux_add_io_out_data_re),
    .io_out_data_im(mux_add_io_out_data_im)
  );
  Myselect mux_mul ( // @[shuffle.scala 60:23]
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
  Delayb io_valid_delay ( // @[Delay.scala 111:23]
    .clock(io_valid_delay_clock),
    .reset(io_valid_delay_reset),
    .io_in_data(io_valid_delay_io_in_data),
    .io_out_data(io_valid_delay_io_out_data)
  );
  assign io_valid = io_valid_delay_io_out_data; // @[shuffle.scala 77:12]
  assign io_out_delay_data_add_re = io_out_delay_data_add_re_delay_io_out_data; // @[shuffle.scala 72:28]
  assign io_out_delay_data_add_im = io_out_delay_data_add_im_delay_io_out_data; // @[shuffle.scala 73:28]
  assign io_out_delay_data_mul_re = mux_mul_io_out_data_re; // @[shuffle.scala 74:25]
  assign io_out_delay_data_mul_im = mux_mul_io_out_data_im; // @[shuffle.scala 74:25]
  assign condition_div_clock = clock;
  assign condition_div_reset = reset;
  assign condition_div_io_en = io_ready; // @[BFII_WithBlackBox.scala 121:15]
  assign mul_delay_delay_clock = clock;
  assign mul_delay_delay_reset = reset;
  assign mul_delay_delay_io_in_data_re = io_in_data_mul_re; // @[Delay.scala 35:22]
  assign mul_delay_delay_io_in_data_im = io_in_data_mul_im; // @[Delay.scala 35:22]
  assign mux_add_io_condition = condition_div_io_out; // @[shuffle.scala 62:24]
  assign mux_add_io_in_data_1_re = mul_delay_delay_io_out_data_re; // @[shuffle.scala 63:24]
  assign mux_add_io_in_data_1_im = mul_delay_delay_io_out_data_im; // @[shuffle.scala 63:24]
  assign mux_add_io_in_data_2_re = io_in_data_add_re; // @[shuffle.scala 64:24]
  assign mux_add_io_in_data_2_im = io_in_data_add_im; // @[shuffle.scala 64:24]
  assign mux_mul_io_condition = condition_div_io_out; // @[shuffle.scala 67:24]
  assign mux_mul_io_in_data_1_re = io_in_data_add_re; // @[shuffle.scala 68:24]
  assign mux_mul_io_in_data_1_im = io_in_data_add_im; // @[shuffle.scala 68:24]
  assign mux_mul_io_in_data_2_re = mul_delay_delay_io_out_data_re; // @[shuffle.scala 69:24]
  assign mux_mul_io_in_data_2_im = mul_delay_delay_io_out_data_im; // @[shuffle.scala 69:24]
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
