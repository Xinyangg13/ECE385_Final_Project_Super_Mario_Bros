// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec  3 17:57:48 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top enemy_sprite_rom -prefix
//               enemy_sprite_rom_ enemy_sprite_rom_sim_netlist.v
// Design      : enemy_sprite_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "enemy_sprite_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module enemy_sprite_rom
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
  enemy_sprite_rom_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18352)
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
