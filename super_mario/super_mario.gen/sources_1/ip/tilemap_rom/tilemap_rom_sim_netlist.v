// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 24 22:31:04 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top tilemap_rom -prefix
//               tilemap_rom_ tilemap_rom_sim_netlist.v
// Design      : tilemap_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tilemap_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tilemap_rom
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.535699 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "tilemap_rom.mem" *) 
  (* C_INIT_FILE_NAME = "tilemap_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  tilemap_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25872)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
