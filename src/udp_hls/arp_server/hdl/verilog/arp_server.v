// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="arp_server,hls_ip_2015_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcku115-flva1517-2-e,HLS_INPUT_CLOCK=6.660000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=3.321000,HLS_SYN_LAT=1,HLS_SYN_TPT=1,HLS_SYN_MEM=11,HLS_SYN_DSP=0,HLS_SYN_FF=1193,HLS_SYN_LUT=1192}" *)

module arp_server (
        arpDataIn_V_data_V_dout,
        arpDataIn_V_data_V_empty_n,
        arpDataIn_V_data_V_read,
        arpDataIn_V_keep_V_dout,
        arpDataIn_V_keep_V_empty_n,
        arpDataIn_V_keep_V_read,
        arpDataIn_V_last_V_dout,
        arpDataIn_V_last_V_empty_n,
        arpDataIn_V_last_V_read,
        macIpEncode_req_V_V_dout,
        macIpEncode_req_V_V_empty_n,
        macIpEncode_req_V_V_read,
        arpDataOut_V_data_V_din,
        arpDataOut_V_data_V_full_n,
        arpDataOut_V_data_V_write,
        arpDataOut_V_keep_V_din,
        arpDataOut_V_keep_V_full_n,
        arpDataOut_V_keep_V_write,
        arpDataOut_V_last_V_din,
        arpDataOut_V_last_V_full_n,
        arpDataOut_V_last_V_write,
        macIpEncode_rsp_V_din,
        macIpEncode_rsp_V_full_n,
        macIpEncode_rsp_V_write,
        macLookup_req_V_din,
        macLookup_req_V_full_n,
        macLookup_req_V_write,
        macLookup_resp_V_dout,
        macLookup_resp_V_empty_n,
        macLookup_resp_V_read,
        macUpdate_req_V_din,
        macUpdate_req_V_full_n,
        macUpdate_req_V_write,
        macUpdate_resp_V_dout,
        macUpdate_resp_V_empty_n,
        macUpdate_resp_V_read,
        regIpAddress_V,
        myMacAddress_V,
        ap_clk,
        ap_rst
);

parameter    ap_const_logic_0 = 1'b0;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv49_0 = 49'b0000000000000000000000000000000000000000000000000;
parameter    ap_const_lv33_0 = 33'b000000000000000000000000000000000;
parameter    ap_const_lv82_0 = 82'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_true = 1'b1;

input  [63:0] arpDataIn_V_data_V_dout;
input   arpDataIn_V_data_V_empty_n;
output   arpDataIn_V_data_V_read;
input  [7:0] arpDataIn_V_keep_V_dout;
input   arpDataIn_V_keep_V_empty_n;
output   arpDataIn_V_keep_V_read;
input  [0:0] arpDataIn_V_last_V_dout;
input   arpDataIn_V_last_V_empty_n;
output   arpDataIn_V_last_V_read;
input  [31:0] macIpEncode_req_V_V_dout;
input   macIpEncode_req_V_V_empty_n;
output   macIpEncode_req_V_V_read;
output  [63:0] arpDataOut_V_data_V_din;
input   arpDataOut_V_data_V_full_n;
output   arpDataOut_V_data_V_write;
output  [7:0] arpDataOut_V_keep_V_din;
input   arpDataOut_V_keep_V_full_n;
output   arpDataOut_V_keep_V_write;
output  [0:0] arpDataOut_V_last_V_din;
input   arpDataOut_V_last_V_full_n;
output   arpDataOut_V_last_V_write;
output  [48:0] macIpEncode_rsp_V_din;
input   macIpEncode_rsp_V_full_n;
output   macIpEncode_rsp_V_write;
output  [32:0] macLookup_req_V_din;
input   macLookup_req_V_full_n;
output   macLookup_req_V_write;
input  [48:0] macLookup_resp_V_dout;
input   macLookup_resp_V_empty_n;
output   macLookup_resp_V_read;
output  [81:0] macUpdate_req_V_din;
input   macUpdate_req_V_full_n;
output   macUpdate_req_V_write;
input  [49:0] macUpdate_resp_V_dout;
input   macUpdate_resp_V_empty_n;
output   macUpdate_resp_V_read;
input  [31:0] regIpAddress_V;
input  [47:0] myMacAddress_V;
input   ap_clk;
input   ap_rst;

wire    arp_server_arp_pkg_receiver_U0_ap_start;
wire    arp_server_arp_pkg_receiver_U0_ap_done;
wire    arp_server_arp_pkg_receiver_U0_ap_continue;
wire    arp_server_arp_pkg_receiver_U0_ap_idle;
wire    arp_server_arp_pkg_receiver_U0_ap_ready;
wire   [191:0] arp_server_arp_pkg_receiver_U0_arpReplyMetaFifo_V_din;
wire    arp_server_arp_pkg_receiver_U0_arpReplyMetaFifo_V_full_n;
wire    arp_server_arp_pkg_receiver_U0_arpReplyMetaFifo_V_write;
wire   [80:0] arp_server_arp_pkg_receiver_U0_arpTableInsertFifo_V_din;
wire    arp_server_arp_pkg_receiver_U0_arpTableInsertFifo_V_full_n;
wire    arp_server_arp_pkg_receiver_U0_arpTableInsertFifo_V_write;
wire   [63:0] arp_server_arp_pkg_receiver_U0_arpDataIn_V_data_V_dout;
wire    arp_server_arp_pkg_receiver_U0_arpDataIn_V_data_V_empty_n;
wire    arp_server_arp_pkg_receiver_U0_arpDataIn_V_data_V_read;
wire   [7:0] arp_server_arp_pkg_receiver_U0_arpDataIn_V_keep_V_dout;
wire    arp_server_arp_pkg_receiver_U0_arpDataIn_V_keep_V_empty_n;
wire    arp_server_arp_pkg_receiver_U0_arpDataIn_V_keep_V_read;
wire   [0:0] arp_server_arp_pkg_receiver_U0_arpDataIn_V_last_V_dout;
wire    arp_server_arp_pkg_receiver_U0_arpDataIn_V_last_V_empty_n;
wire    arp_server_arp_pkg_receiver_U0_arpDataIn_V_last_V_read;
wire   [31:0] arp_server_arp_pkg_receiver_U0_regIpAddress_V;
wire    arp_server_arp_pkg_sender_U0_ap_start;
wire    arp_server_arp_pkg_sender_U0_ap_done;
wire    arp_server_arp_pkg_sender_U0_ap_continue;
wire    arp_server_arp_pkg_sender_U0_ap_idle;
wire    arp_server_arp_pkg_sender_U0_ap_ready;
wire   [31:0] arp_server_arp_pkg_sender_U0_arpRequestMetaFifo_V_V_dout;
wire    arp_server_arp_pkg_sender_U0_arpRequestMetaFifo_V_V_empty_n;
wire    arp_server_arp_pkg_sender_U0_arpRequestMetaFifo_V_V_read;
wire   [191:0] arp_server_arp_pkg_sender_U0_arpReplyMetaFifo_V_dout;
wire    arp_server_arp_pkg_sender_U0_arpReplyMetaFifo_V_empty_n;
wire    arp_server_arp_pkg_sender_U0_arpReplyMetaFifo_V_read;
wire   [63:0] arp_server_arp_pkg_sender_U0_arpDataOut_V_data_V_din;
wire    arp_server_arp_pkg_sender_U0_arpDataOut_V_data_V_full_n;
wire    arp_server_arp_pkg_sender_U0_arpDataOut_V_data_V_write;
wire   [7:0] arp_server_arp_pkg_sender_U0_arpDataOut_V_keep_V_din;
wire    arp_server_arp_pkg_sender_U0_arpDataOut_V_keep_V_full_n;
wire    arp_server_arp_pkg_sender_U0_arpDataOut_V_keep_V_write;
wire   [0:0] arp_server_arp_pkg_sender_U0_arpDataOut_V_last_V_din;
wire    arp_server_arp_pkg_sender_U0_arpDataOut_V_last_V_full_n;
wire    arp_server_arp_pkg_sender_U0_arpDataOut_V_last_V_write;
wire   [31:0] arp_server_arp_pkg_sender_U0_regIpAddress_V;
wire   [47:0] arp_server_arp_pkg_sender_U0_myMacAddress_V;
wire    ap_sig_hs_continue;
reg    arp_server_arp_table_U0_ap_start = 1'b0;
wire    arp_server_arp_table_U0_ap_done;
wire    arp_server_arp_table_U0_ap_continue;
wire    arp_server_arp_table_U0_ap_idle;
wire    arp_server_arp_table_U0_ap_ready;
wire   [48:0] arp_server_arp_table_U0_macLookup_resp_V_dout;
wire    arp_server_arp_table_U0_macLookup_resp_V_empty_n;
wire    arp_server_arp_table_U0_macLookup_resp_V_read;
wire   [49:0] arp_server_arp_table_U0_macUpdate_resp_V_dout;
wire    arp_server_arp_table_U0_macUpdate_resp_V_empty_n;
wire    arp_server_arp_table_U0_macUpdate_resp_V_read;
wire   [80:0] arp_server_arp_table_U0_arpTableInsertFifo_V_dout;
wire    arp_server_arp_table_U0_arpTableInsertFifo_V_empty_n;
wire    arp_server_arp_table_U0_arpTableInsertFifo_V_read;
wire   [31:0] arp_server_arp_table_U0_macIpEncode_req_V_V_dout;
wire    arp_server_arp_table_U0_macIpEncode_req_V_V_empty_n;
wire    arp_server_arp_table_U0_macIpEncode_req_V_V_read;
wire   [48:0] arp_server_arp_table_U0_macIpEncode_rsp_V_din;
wire    arp_server_arp_table_U0_macIpEncode_rsp_V_full_n;
wire    arp_server_arp_table_U0_macIpEncode_rsp_V_write;
wire   [31:0] arp_server_arp_table_U0_arpRequestMetaFifo_V_V_din;
wire    arp_server_arp_table_U0_arpRequestMetaFifo_V_V_full_n;
wire    arp_server_arp_table_U0_arpRequestMetaFifo_V_V_write;
wire   [81:0] arp_server_arp_table_U0_macUpdate_req_V_din;
wire    arp_server_arp_table_U0_macUpdate_req_V_full_n;
wire    arp_server_arp_table_U0_macUpdate_req_V_write;
wire   [32:0] arp_server_arp_table_U0_macLookup_req_V_din;
wire    arp_server_arp_table_U0_macLookup_req_V_full_n;
wire    arp_server_arp_table_U0_macLookup_req_V_write;
wire    arpReplyMetaFifo_V_U_ap_dummy_ce;
wire   [191:0] arpReplyMetaFifo_V_din;
wire    arpReplyMetaFifo_V_full_n;
wire    arpReplyMetaFifo_V_write;
wire   [191:0] arpReplyMetaFifo_V_dout;
wire    arpReplyMetaFifo_V_empty_n;
wire    arpReplyMetaFifo_V_read;
wire    arpTableInsertFifo_V_U_ap_dummy_ce;
wire   [80:0] arpTableInsertFifo_V_din;
wire    arpTableInsertFifo_V_full_n;
wire    arpTableInsertFifo_V_write;
wire   [80:0] arpTableInsertFifo_V_dout;
wire    arpTableInsertFifo_V_empty_n;
wire    arpTableInsertFifo_V_read;
wire    arpRequestMetaFifo_V_V_U_ap_dummy_ce;
wire   [31:0] arpRequestMetaFifo_V_V_din;
wire    arpRequestMetaFifo_V_V_full_n;
wire    arpRequestMetaFifo_V_V_write;
wire   [31:0] arpRequestMetaFifo_V_V_dout;
wire    arpRequestMetaFifo_V_V_empty_n;
wire    arpRequestMetaFifo_V_V_read;
reg    ap_CS;
reg    ap_reg_procdone_arp_server_arp_pkg_sender_U0 = 1'b0;
reg    ap_reg_procdone_arp_server_arp_table_U0 = 1'b0;
reg    ap_sig_hs_done;


arp_server_arp_pkg_receiver arp_server_arp_pkg_receiver_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( arp_server_arp_pkg_receiver_U0_ap_start ),
    .ap_done( arp_server_arp_pkg_receiver_U0_ap_done ),
    .ap_continue( arp_server_arp_pkg_receiver_U0_ap_continue ),
    .ap_idle( arp_server_arp_pkg_receiver_U0_ap_idle ),
    .ap_ready( arp_server_arp_pkg_receiver_U0_ap_ready ),
    .arpReplyMetaFifo_V_din( arp_server_arp_pkg_receiver_U0_arpReplyMetaFifo_V_din ),
    .arpReplyMetaFifo_V_full_n( arp_server_arp_pkg_receiver_U0_arpReplyMetaFifo_V_full_n ),
    .arpReplyMetaFifo_V_write( arp_server_arp_pkg_receiver_U0_arpReplyMetaFifo_V_write ),
    .arpTableInsertFifo_V_din( arp_server_arp_pkg_receiver_U0_arpTableInsertFifo_V_din ),
    .arpTableInsertFifo_V_full_n( arp_server_arp_pkg_receiver_U0_arpTableInsertFifo_V_full_n ),
    .arpTableInsertFifo_V_write( arp_server_arp_pkg_receiver_U0_arpTableInsertFifo_V_write ),
    .arpDataIn_V_data_V_dout( arp_server_arp_pkg_receiver_U0_arpDataIn_V_data_V_dout ),
    .arpDataIn_V_data_V_empty_n( arp_server_arp_pkg_receiver_U0_arpDataIn_V_data_V_empty_n ),
    .arpDataIn_V_data_V_read( arp_server_arp_pkg_receiver_U0_arpDataIn_V_data_V_read ),
    .arpDataIn_V_keep_V_dout( arp_server_arp_pkg_receiver_U0_arpDataIn_V_keep_V_dout ),
    .arpDataIn_V_keep_V_empty_n( arp_server_arp_pkg_receiver_U0_arpDataIn_V_keep_V_empty_n ),
    .arpDataIn_V_keep_V_read( arp_server_arp_pkg_receiver_U0_arpDataIn_V_keep_V_read ),
    .arpDataIn_V_last_V_dout( arp_server_arp_pkg_receiver_U0_arpDataIn_V_last_V_dout ),
    .arpDataIn_V_last_V_empty_n( arp_server_arp_pkg_receiver_U0_arpDataIn_V_last_V_empty_n ),
    .arpDataIn_V_last_V_read( arp_server_arp_pkg_receiver_U0_arpDataIn_V_last_V_read ),
    .regIpAddress_V( arp_server_arp_pkg_receiver_U0_regIpAddress_V )
);

arp_server_arp_pkg_sender arp_server_arp_pkg_sender_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( arp_server_arp_pkg_sender_U0_ap_start ),
    .ap_done( arp_server_arp_pkg_sender_U0_ap_done ),
    .ap_continue( arp_server_arp_pkg_sender_U0_ap_continue ),
    .ap_idle( arp_server_arp_pkg_sender_U0_ap_idle ),
    .ap_ready( arp_server_arp_pkg_sender_U0_ap_ready ),
    .arpRequestMetaFifo_V_V_dout( arp_server_arp_pkg_sender_U0_arpRequestMetaFifo_V_V_dout ),
    .arpRequestMetaFifo_V_V_empty_n( arp_server_arp_pkg_sender_U0_arpRequestMetaFifo_V_V_empty_n ),
    .arpRequestMetaFifo_V_V_read( arp_server_arp_pkg_sender_U0_arpRequestMetaFifo_V_V_read ),
    .arpReplyMetaFifo_V_dout( arp_server_arp_pkg_sender_U0_arpReplyMetaFifo_V_dout ),
    .arpReplyMetaFifo_V_empty_n( arp_server_arp_pkg_sender_U0_arpReplyMetaFifo_V_empty_n ),
    .arpReplyMetaFifo_V_read( arp_server_arp_pkg_sender_U0_arpReplyMetaFifo_V_read ),
    .arpDataOut_V_data_V_din( arp_server_arp_pkg_sender_U0_arpDataOut_V_data_V_din ),
    .arpDataOut_V_data_V_full_n( arp_server_arp_pkg_sender_U0_arpDataOut_V_data_V_full_n ),
    .arpDataOut_V_data_V_write( arp_server_arp_pkg_sender_U0_arpDataOut_V_data_V_write ),
    .arpDataOut_V_keep_V_din( arp_server_arp_pkg_sender_U0_arpDataOut_V_keep_V_din ),
    .arpDataOut_V_keep_V_full_n( arp_server_arp_pkg_sender_U0_arpDataOut_V_keep_V_full_n ),
    .arpDataOut_V_keep_V_write( arp_server_arp_pkg_sender_U0_arpDataOut_V_keep_V_write ),
    .arpDataOut_V_last_V_din( arp_server_arp_pkg_sender_U0_arpDataOut_V_last_V_din ),
    .arpDataOut_V_last_V_full_n( arp_server_arp_pkg_sender_U0_arpDataOut_V_last_V_full_n ),
    .arpDataOut_V_last_V_write( arp_server_arp_pkg_sender_U0_arpDataOut_V_last_V_write ),
    .regIpAddress_V( arp_server_arp_pkg_sender_U0_regIpAddress_V ),
    .myMacAddress_V( arp_server_arp_pkg_sender_U0_myMacAddress_V )
);

arp_server_arp_table arp_server_arp_table_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( arp_server_arp_table_U0_ap_start ),
    .ap_done( arp_server_arp_table_U0_ap_done ),
    .ap_continue( arp_server_arp_table_U0_ap_continue ),
    .ap_idle( arp_server_arp_table_U0_ap_idle ),
    .ap_ready( arp_server_arp_table_U0_ap_ready ),
    .macLookup_resp_V_dout( arp_server_arp_table_U0_macLookup_resp_V_dout ),
    .macLookup_resp_V_empty_n( arp_server_arp_table_U0_macLookup_resp_V_empty_n ),
    .macLookup_resp_V_read( arp_server_arp_table_U0_macLookup_resp_V_read ),
    .macUpdate_resp_V_dout( arp_server_arp_table_U0_macUpdate_resp_V_dout ),
    .macUpdate_resp_V_empty_n( arp_server_arp_table_U0_macUpdate_resp_V_empty_n ),
    .macUpdate_resp_V_read( arp_server_arp_table_U0_macUpdate_resp_V_read ),
    .arpTableInsertFifo_V_dout( arp_server_arp_table_U0_arpTableInsertFifo_V_dout ),
    .arpTableInsertFifo_V_empty_n( arp_server_arp_table_U0_arpTableInsertFifo_V_empty_n ),
    .arpTableInsertFifo_V_read( arp_server_arp_table_U0_arpTableInsertFifo_V_read ),
    .macIpEncode_req_V_V_dout( arp_server_arp_table_U0_macIpEncode_req_V_V_dout ),
    .macIpEncode_req_V_V_empty_n( arp_server_arp_table_U0_macIpEncode_req_V_V_empty_n ),
    .macIpEncode_req_V_V_read( arp_server_arp_table_U0_macIpEncode_req_V_V_read ),
    .macIpEncode_rsp_V_din( arp_server_arp_table_U0_macIpEncode_rsp_V_din ),
    .macIpEncode_rsp_V_full_n( arp_server_arp_table_U0_macIpEncode_rsp_V_full_n ),
    .macIpEncode_rsp_V_write( arp_server_arp_table_U0_macIpEncode_rsp_V_write ),
    .arpRequestMetaFifo_V_V_din( arp_server_arp_table_U0_arpRequestMetaFifo_V_V_din ),
    .arpRequestMetaFifo_V_V_full_n( arp_server_arp_table_U0_arpRequestMetaFifo_V_V_full_n ),
    .arpRequestMetaFifo_V_V_write( arp_server_arp_table_U0_arpRequestMetaFifo_V_V_write ),
    .macUpdate_req_V_din( arp_server_arp_table_U0_macUpdate_req_V_din ),
    .macUpdate_req_V_full_n( arp_server_arp_table_U0_macUpdate_req_V_full_n ),
    .macUpdate_req_V_write( arp_server_arp_table_U0_macUpdate_req_V_write ),
    .macLookup_req_V_din( arp_server_arp_table_U0_macLookup_req_V_din ),
    .macLookup_req_V_full_n( arp_server_arp_table_U0_macLookup_req_V_full_n ),
    .macLookup_req_V_write( arp_server_arp_table_U0_macLookup_req_V_write )
);

FIFO_arp_server_arpReplyMetaFifo_V arpReplyMetaFifo_V_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .if_read_ce( arpReplyMetaFifo_V_U_ap_dummy_ce ),
    .if_write_ce( arpReplyMetaFifo_V_U_ap_dummy_ce ),
    .if_din( arpReplyMetaFifo_V_din ),
    .if_full_n( arpReplyMetaFifo_V_full_n ),
    .if_write( arpReplyMetaFifo_V_write ),
    .if_dout( arpReplyMetaFifo_V_dout ),
    .if_empty_n( arpReplyMetaFifo_V_empty_n ),
    .if_read( arpReplyMetaFifo_V_read )
);

FIFO_arp_server_arpTableInsertFifo_V arpTableInsertFifo_V_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .if_read_ce( arpTableInsertFifo_V_U_ap_dummy_ce ),
    .if_write_ce( arpTableInsertFifo_V_U_ap_dummy_ce ),
    .if_din( arpTableInsertFifo_V_din ),
    .if_full_n( arpTableInsertFifo_V_full_n ),
    .if_write( arpTableInsertFifo_V_write ),
    .if_dout( arpTableInsertFifo_V_dout ),
    .if_empty_n( arpTableInsertFifo_V_empty_n ),
    .if_read( arpTableInsertFifo_V_read )
);

FIFO_arp_server_arpRequestMetaFifo_V_V arpRequestMetaFifo_V_V_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .if_read_ce( arpRequestMetaFifo_V_V_U_ap_dummy_ce ),
    .if_write_ce( arpRequestMetaFifo_V_V_U_ap_dummy_ce ),
    .if_din( arpRequestMetaFifo_V_V_din ),
    .if_full_n( arpRequestMetaFifo_V_V_full_n ),
    .if_write( arpRequestMetaFifo_V_V_write ),
    .if_dout( arpRequestMetaFifo_V_V_dout ),
    .if_empty_n( arpRequestMetaFifo_V_V_empty_n ),
    .if_read( arpRequestMetaFifo_V_V_read )
);



/// ap_reg_procdone_arp_server_arp_pkg_sender_U0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_procdone_arp_server_arp_pkg_sender_U0
    if (ap_rst == 1'b1) begin
        ap_reg_procdone_arp_server_arp_pkg_sender_U0 <= ap_const_logic_0;
    end else begin
    end
end

/// ap_reg_procdone_arp_server_arp_table_U0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_procdone_arp_server_arp_table_U0
    if (ap_rst == 1'b1) begin
        ap_reg_procdone_arp_server_arp_table_U0 <= ap_const_logic_0;
    end else begin
    end
end

/// arp_server_arp_table_U0_ap_start assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_arp_server_arp_table_U0_ap_start
    if (ap_rst == 1'b1) begin
        arp_server_arp_table_U0_ap_start <= ap_const_logic_0;
    end else begin
        arp_server_arp_table_U0_ap_start <= ap_const_logic_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    ap_CS <= ap_const_logic_0;
end

/// ap_sig_hs_done assign process. ///
always @ (ap_reg_procdone_arp_server_arp_pkg_sender_U0 or ap_reg_procdone_arp_server_arp_table_U0)
begin
    if (((ap_const_logic_1 == ap_reg_procdone_arp_server_arp_pkg_sender_U0) & (ap_const_logic_1 == ap_reg_procdone_arp_server_arp_table_U0))) begin
        ap_sig_hs_done = ap_const_logic_1;
    end else begin
        ap_sig_hs_done = ap_const_logic_0;
    end
end
assign ap_sig_hs_continue = ap_const_logic_0;
assign arpDataIn_V_data_V_read = arp_server_arp_pkg_receiver_U0_arpDataIn_V_data_V_read;
assign arpDataIn_V_keep_V_read = arp_server_arp_pkg_receiver_U0_arpDataIn_V_keep_V_read;
assign arpDataIn_V_last_V_read = arp_server_arp_pkg_receiver_U0_arpDataIn_V_last_V_read;
assign arpDataOut_V_data_V_din = arp_server_arp_pkg_sender_U0_arpDataOut_V_data_V_din;
assign arpDataOut_V_data_V_write = arp_server_arp_pkg_sender_U0_arpDataOut_V_data_V_write;
assign arpDataOut_V_keep_V_din = arp_server_arp_pkg_sender_U0_arpDataOut_V_keep_V_din;
assign arpDataOut_V_keep_V_write = arp_server_arp_pkg_sender_U0_arpDataOut_V_keep_V_write;
assign arpDataOut_V_last_V_din = arp_server_arp_pkg_sender_U0_arpDataOut_V_last_V_din;
assign arpDataOut_V_last_V_write = arp_server_arp_pkg_sender_U0_arpDataOut_V_last_V_write;
assign arpReplyMetaFifo_V_U_ap_dummy_ce = ap_const_logic_1;
assign arpReplyMetaFifo_V_din = arp_server_arp_pkg_receiver_U0_arpReplyMetaFifo_V_din;
assign arpReplyMetaFifo_V_read = arp_server_arp_pkg_sender_U0_arpReplyMetaFifo_V_read;
assign arpReplyMetaFifo_V_write = arp_server_arp_pkg_receiver_U0_arpReplyMetaFifo_V_write;
assign arpRequestMetaFifo_V_V_U_ap_dummy_ce = ap_const_logic_1;
assign arpRequestMetaFifo_V_V_din = arp_server_arp_table_U0_arpRequestMetaFifo_V_V_din;
assign arpRequestMetaFifo_V_V_read = arp_server_arp_pkg_sender_U0_arpRequestMetaFifo_V_V_read;
assign arpRequestMetaFifo_V_V_write = arp_server_arp_table_U0_arpRequestMetaFifo_V_V_write;
assign arpTableInsertFifo_V_U_ap_dummy_ce = ap_const_logic_1;
assign arpTableInsertFifo_V_din = arp_server_arp_pkg_receiver_U0_arpTableInsertFifo_V_din;
assign arpTableInsertFifo_V_read = arp_server_arp_table_U0_arpTableInsertFifo_V_read;
assign arpTableInsertFifo_V_write = arp_server_arp_pkg_receiver_U0_arpTableInsertFifo_V_write;
assign arp_server_arp_pkg_receiver_U0_ap_continue = ap_const_logic_1;
assign arp_server_arp_pkg_receiver_U0_ap_start = ap_const_logic_1;
assign arp_server_arp_pkg_receiver_U0_arpDataIn_V_data_V_dout = arpDataIn_V_data_V_dout;
assign arp_server_arp_pkg_receiver_U0_arpDataIn_V_data_V_empty_n = arpDataIn_V_data_V_empty_n;
assign arp_server_arp_pkg_receiver_U0_arpDataIn_V_keep_V_dout = arpDataIn_V_keep_V_dout;
assign arp_server_arp_pkg_receiver_U0_arpDataIn_V_keep_V_empty_n = arpDataIn_V_keep_V_empty_n;
assign arp_server_arp_pkg_receiver_U0_arpDataIn_V_last_V_dout = arpDataIn_V_last_V_dout;
assign arp_server_arp_pkg_receiver_U0_arpDataIn_V_last_V_empty_n = arpDataIn_V_last_V_empty_n;
assign arp_server_arp_pkg_receiver_U0_arpReplyMetaFifo_V_full_n = arpReplyMetaFifo_V_full_n;
assign arp_server_arp_pkg_receiver_U0_arpTableInsertFifo_V_full_n = arpTableInsertFifo_V_full_n;
assign arp_server_arp_pkg_receiver_U0_regIpAddress_V = regIpAddress_V;
assign arp_server_arp_pkg_sender_U0_ap_continue = ap_const_logic_1;
assign arp_server_arp_pkg_sender_U0_ap_start = ap_const_logic_1;
assign arp_server_arp_pkg_sender_U0_arpDataOut_V_data_V_full_n = arpDataOut_V_data_V_full_n;
assign arp_server_arp_pkg_sender_U0_arpDataOut_V_keep_V_full_n = arpDataOut_V_keep_V_full_n;
assign arp_server_arp_pkg_sender_U0_arpDataOut_V_last_V_full_n = arpDataOut_V_last_V_full_n;
assign arp_server_arp_pkg_sender_U0_arpReplyMetaFifo_V_dout = arpReplyMetaFifo_V_dout;
assign arp_server_arp_pkg_sender_U0_arpReplyMetaFifo_V_empty_n = arpReplyMetaFifo_V_empty_n;
assign arp_server_arp_pkg_sender_U0_arpRequestMetaFifo_V_V_dout = arpRequestMetaFifo_V_V_dout;
assign arp_server_arp_pkg_sender_U0_arpRequestMetaFifo_V_V_empty_n = arpRequestMetaFifo_V_V_empty_n;
assign arp_server_arp_pkg_sender_U0_myMacAddress_V = myMacAddress_V;
assign arp_server_arp_pkg_sender_U0_regIpAddress_V = regIpAddress_V;
assign arp_server_arp_table_U0_ap_continue = ap_const_logic_1;
assign arp_server_arp_table_U0_arpRequestMetaFifo_V_V_full_n = arpRequestMetaFifo_V_V_full_n;
assign arp_server_arp_table_U0_arpTableInsertFifo_V_dout = arpTableInsertFifo_V_dout;
assign arp_server_arp_table_U0_arpTableInsertFifo_V_empty_n = arpTableInsertFifo_V_empty_n;
assign arp_server_arp_table_U0_macIpEncode_req_V_V_dout = macIpEncode_req_V_V_dout;
assign arp_server_arp_table_U0_macIpEncode_req_V_V_empty_n = macIpEncode_req_V_V_empty_n;
assign arp_server_arp_table_U0_macIpEncode_rsp_V_full_n = macIpEncode_rsp_V_full_n;
assign arp_server_arp_table_U0_macLookup_req_V_full_n = macLookup_req_V_full_n;
assign arp_server_arp_table_U0_macLookup_resp_V_dout = macLookup_resp_V_dout;
assign arp_server_arp_table_U0_macLookup_resp_V_empty_n = macLookup_resp_V_empty_n;
assign arp_server_arp_table_U0_macUpdate_req_V_full_n = macUpdate_req_V_full_n;
assign arp_server_arp_table_U0_macUpdate_resp_V_dout = macUpdate_resp_V_dout;
assign arp_server_arp_table_U0_macUpdate_resp_V_empty_n = macUpdate_resp_V_empty_n;
assign macIpEncode_req_V_V_read = arp_server_arp_table_U0_macIpEncode_req_V_V_read;
assign macIpEncode_rsp_V_din = arp_server_arp_table_U0_macIpEncode_rsp_V_din;
assign macIpEncode_rsp_V_write = arp_server_arp_table_U0_macIpEncode_rsp_V_write;
assign macLookup_req_V_din = arp_server_arp_table_U0_macLookup_req_V_din;
assign macLookup_req_V_write = arp_server_arp_table_U0_macLookup_req_V_write;
assign macLookup_resp_V_read = arp_server_arp_table_U0_macLookup_resp_V_read;
assign macUpdate_req_V_din = arp_server_arp_table_U0_macUpdate_req_V_din;
assign macUpdate_req_V_write = arp_server_arp_table_U0_macUpdate_req_V_write;
assign macUpdate_resp_V_read = arp_server_arp_table_U0_macUpdate_resp_V_read;


endmodule //arp_server

