// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 24 22:08:07 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ tile_sprite_rom_sim_netlist.v
// Design      : tile_sprite_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tile_sprite_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [13:0]addra;
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
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.8465 mW" *) 
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
  (* C_INIT_FILE = "tile_sprite_rom.mem" *) 
  (* C_INIT_FILE_NAME = "tile_sprite_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16384" *) 
  (* C_READ_DEPTH_B = "16384" *) 
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
  (* C_WRITE_DEPTH_A = "16384" *) 
  (* C_WRITE_DEPTH_B = "16384" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43408)
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
