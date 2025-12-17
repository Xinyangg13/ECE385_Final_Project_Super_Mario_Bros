// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec  3 17:58:53 2025
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
Uc4=
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
