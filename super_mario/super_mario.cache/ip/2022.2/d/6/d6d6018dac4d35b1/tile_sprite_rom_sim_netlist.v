// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec  3 18:04:03 2025
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
  (* C_INIT_FILE = "tile_sprite_rom.mem" *) 
  (* C_INIT_FILE_NAME = "tile_sprite_rom.mif" *) 
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
RFU=
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
