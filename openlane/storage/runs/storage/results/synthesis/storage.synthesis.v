/* Generated by Yosys 0.9+3621 (git sha1 84e9fa7, gcc 8.3.1 -fPIC -Os) */

module storage(mgmt_clk, mgmt_ena, mgmt_wen, mgmt_wen_mask, mgmt_addr, mgmt_wdata, mgmt_rdata, mgmt_ena_ro, mgmt_addr_ro, mgmt_rdata_ro);
  input [7:0] mgmt_addr;
  input [7:0] mgmt_addr_ro;
  input mgmt_clk;
  input [1:0] mgmt_ena;
  input mgmt_ena_ro;
  output [63:0] mgmt_rdata;
  output [31:0] mgmt_rdata_ro;
  input [31:0] mgmt_wdata;
  input [1:0] mgmt_wen;
  input [7:0] mgmt_wen_mask;
  sram_1rw1r_32_256_8_sky130 SRAM_0 (
    .addr0(mgmt_addr),
    .addr1(mgmt_addr_ro),
    .clk0(mgmt_clk),
    .clk1(mgmt_clk),
    .csb0(mgmt_ena[0]),
    .csb1(mgmt_ena_ro),
    .din0(mgmt_wdata),
    .dout0(mgmt_rdata[31:0]),
    .dout1(mgmt_rdata_ro),
    .web0(mgmt_wen[0]),
    .wmask0(mgmt_wen_mask[3:0])
  );
  sram_1rw1r_32_256_8_sky130 SRAM_1 (
    .addr0(mgmt_addr),
    .clk0(mgmt_clk),
    .csb0(mgmt_ena[1]),
    .din0(mgmt_wdata),
    .dout0(mgmt_rdata[63:32]),
    .web0(mgmt_wen[1]),
    .wmask0(mgmt_wen_mask[7:4])
  );
endmodule
