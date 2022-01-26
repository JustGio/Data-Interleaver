// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jan 20 20:37:09 2022
// Host        : DESKTOP-BAGCK1D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Owner/Documents/HDL/VHDL/Lab-524/Data-Interleaver/Data-Interleaver/Data-Interleaver.srcs/sources_1/ip/c_shift_ram_0/c_shift_ram_0_sim_netlist.v
// Design      : c_shift_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module c_shift_ram_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [7:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "00000000" *) 
  (* c_default_data = "00000000" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "00000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "8" *) 
  (* c_xdevicefamily = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_shift_ram_0_c_shift_ram_v12_0_13 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "00000000" *) (* C_DEFAULT_DATA = "00000000" *) 
(* C_DEPTH = "16" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "00000000" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "kintex7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_shift_ram_0_c_shift_ram_v12_0_13
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [7:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [7:0]Q;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "00000000" *) 
  (* c_default_data = "00000000" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "00000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "8" *) 
  (* c_xdevicefamily = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_shift_ram_0_c_shift_ram_v12_0_13_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
nn2y8yvGEAU+oxfqIjNJMT0yc3TadO2A5cZHoK3dC6l8eNK9HFYMskFicvVj1pqkc9mDJyUKrSId
CCL/HetNvg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNkKvQED4vWNv+vYe3nI8o8VVd25+7OXvcQGN/bznOgwwQ9zOLtv8RpNciTxGp//tcY2jCAsQOQR
SAwBc00y7wnNCTMtZFvxXOqSHEUPYTYxcXYrIMSElXg1AeD03zwd+qdTjbS69InbpBZ40pWQBX71
ctP6YeotRwK8SefTdE8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aw7jhd7UZTrADfLTZ5YsRTYTdEzrJ+N4enHI0pDja6no68W2U8xeZSGR45xVkKPWy4UGH3zDqIyg
YAP5FGIc5LcSqiGDfNdrdIvThTT5xBjpM9zvSxq6836B2yVmJhQLgvziF962Xaqbe7uQRnXQp17I
kjzsA6zhURm/05lRx/day4Cz2CbJD4D4RVpd36+ytOucw4q+sxb/dm0j/Zj3I3aD0G+lVv+6bECF
ISSRuJv19uehdbvwf+qrzqTMPcPX7L9lxubWjJXjm+4496NlRuEv4eng6rowNLkC1RQXoUtW+UVo
PyhgdGfb+nJPLDiP90hHMCg0AlZBGnoQ4bZYlw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
biYqlehfUy2MPR5IeETLexHTdJ7q51nWkAsSzWCNbkr2c3/I9AYuwIkh2pcsUMgsCkL2Lcb26gJW
D9+BY0gYxVOzcZx9DtuxM/DqEvzsBG5XW/R6eymYeJJXtW18hS5aOcO2RDf30eieTCZwOyx3cnis
herNQHaIc5PrMK7dsl2V0mRQ4Lex1+r46DNrReU4z+3VNRVfL0mX4NhB+QV2zDspLTAYf1l7nA5u
EbLi12YBXczbhvawRV6TjHxA4Ml/QzRmYMg1mfxJ+3FZmfoR+uU07NrBc1LOhonCg2DPch0TTDa/
+umVNvlER66pUotjBuU9vgjw7Dkkp+/MdqAajg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VR2RqLmiSvIq90JPqVnSqgmKE5SicXJKPyTAunTpAaj1DuEXlVsRD04gzJadbWfPqE9xAoUiq9wU
PHjRKiQbrR4JC+wy8bkLpY5iW3oxOSRDZ65wXxQUvMxgGE2eFRVI/k/ZQRRYqr9mm8YdVU01dvtU
egqfPLie7vxuQB/aiN7a0E7FJ3PMFpnNM/lmZU8kUoAycwEcAu9Lvc3isAys48OIVQPaQHkMn2eB
HIwPBmpuermPsgmSnBIbbJxQ+dBWkPL0EzxPuDn7PUp+ojaG9ZnKwIfZL1me0oBJdzhp2dyAcfIo
QfkynG/j81yZHbXXctAPpAfTUjbbnye2spH36A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
spURjF4NoZ4yjaDCJd2V8NW+Oj5ZMaUYbemUjajnsue2uyV5q0a5IBxkOcXgNdlJ2vnd44QwYWa4
lylHJkTIRWpMiAc6oKbTc0UpP1dy19psYVCAqRk/1+Ql6FdGPO88bH+fSSVGZp3FT1qBOx/xZdlI
oCEDIIhFzto+GF3j648=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eMFwa46SXA6HVoFlviJtJvyKfnw7oJgLT1JrVR0eN4c/X8/spoO5r8yshZA3q3KquxGdP0kyqeP9
P1R/bA4WmHDfXN2hXErIJk8CzVEKi7D17DVfKTkvxwdjjBmDO5EYn24/k+RSr/VKfX4X0GFHpb5X
2fgSZVIPaY/ztx/tIF1U+TG7NvoQlBKjqBJyQNgDmciPzSPkSPzhpcEFL95PVLp2IwwcbtuM5PnK
SYBqbLz3Y6FcLScZwLiOUD+aFacR+bbjaJnOQ+Aap6Jy6mwXic0Vpf3KziYI6760f5HtSIaKYnEf
2emYl3n7jq3Nqev5AAxpFg7eUMHAnHMWb375Iw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AS835jJmSsa9QwOsl//UMZLDjJw9bLC5zeWQiJHM9vXTionpE1KLIMDH7olsWF4P64rkRmlf6xP2
wO2NHfoBZL+IRLWGzyKcCnNpQOd8DOcmi5K+UJW70j4gBWcY3m+WyK3+VchwZYxnbUXw2Ny/3Fye
bn3wT0gUbuwmKA4yDDCXYtWhwm6FBcHOLEs3CSwvFlnHrmvoV7CfEZBY3OOBolRbwQSrcFKr9Pil
zY+NxPHzU8x2D+PRJ2ZFs9hdz83SsiKLTnqOKuy77jf3tw0vPXJ0kdvyTgN5Lo+iJJCMHUur4bPF
30tAa0Hi0olKqLaIAkf/oIDXTjnjJecyM59XEw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5p23/nksCIxTWD95+QY+gsWSLML9P8MUIbT+OYMxo+5pFKZ0HqIGyVBeFXxCAgSHC20J0pPbEZqY
Pys26gPwttV37OERHSF0td3v77oIW3xi5mL8MNV5Qu5//HpCnLeEi5FhXrTBMN6N6trJYCbpY8+e
Mb7Ua73vQxdTLuCUehT/87Ctwi2ux4XFnLy0JiSpeRYc00kMgdWiWWlHkTU2PL4W1iMOtWDJQzCH
NIlV5aatwCfrvkXzpKZ31oxbFEEG7EtnmIkg1r3DBCgiQ43JcfMutGGkY0RPVdzR72dgze449iyR
n7isFB/zIQ9HSg2LqxeXE1Bmrs+kXmQDhAkIyw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10416)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
