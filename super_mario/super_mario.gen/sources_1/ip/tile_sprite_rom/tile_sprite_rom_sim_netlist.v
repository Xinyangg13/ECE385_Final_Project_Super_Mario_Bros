// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec  3 18:04:03 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top tile_sprite_rom -prefix
//               tile_sprite_rom_ tile_sprite_rom_sim_netlist.v
// Design      : tile_sprite_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tile_sprite_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tile_sprite_rom
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
  tile_sprite_rom_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17840)
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
