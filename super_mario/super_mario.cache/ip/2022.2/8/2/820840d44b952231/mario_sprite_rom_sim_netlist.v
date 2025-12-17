// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 24 22:03:13 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mario_sprite_rom_sim_netlist.v
// Design      : mario_sprite_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mario_sprite_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [3:0]dina;
  wire [3:0]douta;
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
  wire [3:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.287299 mW" *) 
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
  (* C_INIT_FILE = "mario_sprite_rom.mem" *) 
  (* C_INIT_FILE_NAME = "mario_sprite_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
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
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[3:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18128)
`pragma protect data_block
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
8ys=
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
