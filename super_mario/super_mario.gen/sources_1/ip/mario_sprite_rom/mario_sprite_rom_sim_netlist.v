// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec  3 17:58:53 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mario_sprite_rom -prefix
//               mario_sprite_rom_ mario_sprite_rom_sim_netlist.v
// Design      : mario_sprite_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mario_sprite_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module mario_sprite_rom
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
  mario_sprite_rom_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17856)
`pragma protect data_block
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
qutrPgO5xK77fYA5HfQU
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
