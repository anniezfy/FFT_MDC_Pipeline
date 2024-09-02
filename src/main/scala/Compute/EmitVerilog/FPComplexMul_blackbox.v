module FPComplexMul_blackbox(
  input         clock,
  input         reset,
  input  [31:0] io_op1_re,
  input  [31:0] io_op1_im,
  input  [31:0] io_op2_re,
  input  [31:0] io_op2_im,
  input         io_ready,
  output        io_valid,
  output [31:0] io_res_re,
  output [31:0] io_res_im
);
  wire  commul_aclk; // @[Ip_BlackBox.scala 138:23]
  wire  commul_enA; // @[Ip_BlackBox.scala 138:23]
  wire [31:0] commul_A_re; // @[Ip_BlackBox.scala 138:23]
  wire [31:0] commul_A_im; // @[Ip_BlackBox.scala 138:23]
  wire  commul_enB; // @[Ip_BlackBox.scala 138:23]
  wire [31:0] commul_B_re; // @[Ip_BlackBox.scala 138:23]
  wire [31:0] commul_B_im; // @[Ip_BlackBox.scala 138:23]
  wire  commul_valid; // @[Ip_BlackBox.scala 138:23]
  wire [31:0] commul_res_re; // @[Ip_BlackBox.scala 138:23]
  wire [31:0] commul_res_im; // @[Ip_BlackBox.scala 138:23]
  Ip_ComplexMul_blackbox commul ( // @[Ip_BlackBox.scala 138:23]
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
  assign io_valid = commul_valid; // @[Ip_BlackBox.scala 146:12]
  assign io_res_re = commul_res_re; // @[Ip_BlackBox.scala 147:13]
  assign io_res_im = commul_res_im; // @[Ip_BlackBox.scala 148:13]
  assign commul_aclk = clock; // @[Ip_BlackBox.scala 139:18]
  assign commul_enA = io_ready; // @[Ip_BlackBox.scala 140:17]
  assign commul_A_re = io_op1_re; // @[Ip_BlackBox.scala 141:18]
  assign commul_A_im = io_op1_im; // @[Ip_BlackBox.scala 142:18]
  assign commul_enB = io_ready; // @[Ip_BlackBox.scala 143:17]
  assign commul_B_re = io_op2_re; // @[Ip_BlackBox.scala 144:18]
  assign commul_B_im = io_op2_im; // @[Ip_BlackBox.scala 145:18]
endmodule
