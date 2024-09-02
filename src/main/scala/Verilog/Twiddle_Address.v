module Twiddle_Address(
  input         clock,
  input         reset,
  input  [1:0]  io_row,
  input         io_ready,
  input  [31:0] io_counter,
  output [31:0] io_address
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] j; // @[Twiddle_Address.scala 78:18]
  reg [31:0] k; // @[Twiddle_Address.scala 79:18]
  wire [4:0] _GEN_1 = 2'h3 == io_row ? 5'h1f : 5'h0; // @[Twiddle_Address.scala 102:14 94:17]
  wire [9:0] _GEN_2 = 2'h2 == io_row ? 10'h3ff : {{5'd0}, _GEN_1}; // @[Twiddle_Address.scala 94:17 99:14]
  wire [14:0] _GEN_3 = 2'h1 == io_row ? 15'h7ff9 : {{5'd0}, _GEN_2}; // @[Twiddle_Address.scala 94:17 96:14]
  wire [31:0] _T_5 = io_counter - 32'h1; // @[Twiddle_Address.scala 110:31]
  wire [31:0] repeat_ = {{17'd0}, _GEN_3}; // @[Twiddle_Address.scala 92:20]
  wire [31:0] _k_T_1 = k + 32'h1; // @[Twiddle_Address.scala 112:16]
  wire [31:0] _j_T_1 = j + 32'h1; // @[Twiddle_Address.scala 115:16]
  assign io_address = j; // @[Twiddle_Address.scala 121:14]
  always @(posedge clock) begin
    if (reset) begin // @[Twiddle_Address.scala 78:18]
      j <= 32'h0; // @[Twiddle_Address.scala 78:18]
    end else if (io_ready) begin // @[Twiddle_Address.scala 109:18]
      if (j < _T_5) begin // @[Twiddle_Address.scala 110:36]
        if (!(k < repeat_)) begin // @[Twiddle_Address.scala 111:22]
          j <= _j_T_1; // @[Twiddle_Address.scala 115:11]
        end
      end else begin
        j <= 32'h0; // @[Twiddle_Address.scala 118:9]
      end
    end
    if (reset) begin // @[Twiddle_Address.scala 79:18]
      k <= 32'h0; // @[Twiddle_Address.scala 79:18]
    end else if (io_ready) begin // @[Twiddle_Address.scala 109:18]
      if (j < _T_5) begin // @[Twiddle_Address.scala 110:36]
        if (k < repeat_) begin // @[Twiddle_Address.scala 111:22]
          k <= _k_T_1; // @[Twiddle_Address.scala 112:11]
        end else begin
          k <= 32'h0; // @[Twiddle_Address.scala 114:11]
        end
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
  _RAND_1 = {1{`RANDOM}};
  k = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
