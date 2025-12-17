// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec  3 17:57:48 2025
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
iA==
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
