// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 24 22:31:04 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ tilemap_rom_sim_netlist.v
// Design      : tilemap_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tilemap_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26208)
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
