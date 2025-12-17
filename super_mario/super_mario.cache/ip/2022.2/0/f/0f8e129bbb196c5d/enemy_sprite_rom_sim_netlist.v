// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 24 22:26:00 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ enemy_sprite_rom_sim_netlist.v
// Design      : enemy_sprite_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "enemy_sprite_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [10:0]addra;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.230799 mW" *) 
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
  (* C_INIT_FILE = "enemy_sprite_rom.mem" *) 
  (* C_INIT_FILE_NAME = "enemy_sprite_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18640)
`pragma protect data_block
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
5Q==
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
