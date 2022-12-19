// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="udpAppMux,hls_ip_2016_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcku115-flva1517-2-e,HLS_INPUT_CLOCK=3.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=2.080000,HLS_SYN_LAT=0,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=112,HLS_SYN_LUT=338}" *)

module udpAppMux (
        rxDataNetwork_V_data_V_dout,
        rxDataNetwork_V_data_V_empty_n,
        rxDataNetwork_V_data_V_read,
        rxDataNetwork_V_keep_V_dout,
        rxDataNetwork_V_keep_V_empty_n,
        rxDataNetwork_V_keep_V_read,
        rxDataNetwork_V_last_V_dout,
        rxDataNetwork_V_last_V_empty_n,
        rxDataNetwork_V_last_V_read,
        rxMetadataNetwork_V_dout,
        rxMetadataNetwork_V_empty_n,
        rxMetadataNetwork_V_read,
        txDataFAST_V_data_V_din,
        txDataFAST_V_data_V_full_n,
        txDataFAST_V_data_V_write,
        txDataFAST_V_keep_V_din,
        txDataFAST_V_keep_V_full_n,
        txDataFAST_V_keep_V_write,
        txDataFAST_V_last_V_din,
        txDataFAST_V_last_V_full_n,
        txDataFAST_V_last_V_write,
        txMetadataFAST_V_din,
        txMetadataFAST_V_full_n,
        txMetadataFAST_V_write,
        txTimeFAST_V_V_din,
        txTimeFAST_V_V_full_n,
        txTimeFAST_V_V_write,
        txRequestPortNetwork_V_V_din,
        txRequestPortNetwork_V_V_full_n,
        txRequestPortNetwork_V_V_write,
        rxReplyPortNetwork_V_dout,
        rxReplyPortNetwork_V_empty_n,
        rxReplyPortNetwork_V_read,
        rxRequestPortFAST_V_V_dout,
        rxRequestPortFAST_V_V_empty_n,
        rxRequestPortFAST_V_V_read,
        txReplyPortFAST_V_din,
        txReplyPortFAST_V_full_n,
        txReplyPortFAST_V_write,
        rxRequestPortMonitor_V_V_dout,
        rxRequestPortMonitor_V_V_empty_n,
        rxRequestPortMonitor_V_V_read,
        txReplyPortMonitor_V_din,
        txReplyPortMonitor_V_full_n,
        txReplyPortMonitor_V_write,
        rxDataMonitor_V_data_V_dout,
        rxDataMonitor_V_data_V_empty_n,
        rxDataMonitor_V_data_V_read,
        rxDataMonitor_V_keep_V_dout,
        rxDataMonitor_V_keep_V_empty_n,
        rxDataMonitor_V_keep_V_read,
        rxDataMonitor_V_last_V_dout,
        rxDataMonitor_V_last_V_empty_n,
        rxDataMonitor_V_last_V_read,
        rxMetadataMonitor_V_dout,
        rxMetadataMonitor_V_empty_n,
        rxMetadataMonitor_V_read,
        rxLengthMonitor_V_V_dout,
        rxLengthMonitor_V_V_empty_n,
        rxLengthMonitor_V_V_read,
        rxDataFAST_V_data_V_dout,
        rxDataFAST_V_data_V_empty_n,
        rxDataFAST_V_data_V_read,
        rxDataFAST_V_keep_V_dout,
        rxDataFAST_V_keep_V_empty_n,
        rxDataFAST_V_keep_V_read,
        rxDataFAST_V_last_V_dout,
        rxDataFAST_V_last_V_empty_n,
        rxDataFAST_V_last_V_read,
        rxMetadataFAST_V_dout,
        rxMetadataFAST_V_empty_n,
        rxMetadataFAST_V_read,
        rxLengthFAST_V_V_dout,
        rxLengthFAST_V_V_empty_n,
        rxLengthFAST_V_V_read,
        rxTimeFAST_V_V_dout,
        rxTimeFAST_V_V_empty_n,
        rxTimeFAST_V_V_read,
        txDataNetwork_V_data_V_din,
        txDataNetwork_V_data_V_full_n,
        txDataNetwork_V_data_V_write,
        txDataNetwork_V_keep_V_din,
        txDataNetwork_V_keep_V_full_n,
        txDataNetwork_V_keep_V_write,
        txDataNetwork_V_last_V_din,
        txDataNetwork_V_last_V_full_n,
        txDataNetwork_V_last_V_write,
        txMetadataNetwork_V_din,
        txMetadataNetwork_V_full_n,
        txMetadataNetwork_V_write,
        txLengthNetwork_V_V_din,
        txLengthNetwork_V_V_full_n,
        txLengthNetwork_V_V_write,
        time_1_V_V_dout,
        time_1_V_V_empty_n,
        time_1_V_V_read,
        time_2_V_V_dout,
        time_2_V_V_empty_n,
        time_2_V_V_read,
        ap_clk,
        ap_rst
);

parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv96_0 = 96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv16_0 = 16'b0000000000000000;

input  [63:0] rxDataNetwork_V_data_V_dout;
input   rxDataNetwork_V_data_V_empty_n;
output   rxDataNetwork_V_data_V_read;
input  [7:0] rxDataNetwork_V_keep_V_dout;
input   rxDataNetwork_V_keep_V_empty_n;
output   rxDataNetwork_V_keep_V_read;
input  [0:0] rxDataNetwork_V_last_V_dout;
input   rxDataNetwork_V_last_V_empty_n;
output   rxDataNetwork_V_last_V_read;
input  [95:0] rxMetadataNetwork_V_dout;
input   rxMetadataNetwork_V_empty_n;
output   rxMetadataNetwork_V_read;
output  [63:0] txDataFAST_V_data_V_din;
input   txDataFAST_V_data_V_full_n;
output   txDataFAST_V_data_V_write;
output  [7:0] txDataFAST_V_keep_V_din;
input   txDataFAST_V_keep_V_full_n;
output   txDataFAST_V_keep_V_write;
output  [0:0] txDataFAST_V_last_V_din;
input   txDataFAST_V_last_V_full_n;
output   txDataFAST_V_last_V_write;
output  [95:0] txMetadataFAST_V_din;
input   txMetadataFAST_V_full_n;
output   txMetadataFAST_V_write;
output  [63:0] txTimeFAST_V_V_din;
input   txTimeFAST_V_V_full_n;
output   txTimeFAST_V_V_write;
output  [15:0] txRequestPortNetwork_V_V_din;
input   txRequestPortNetwork_V_V_full_n;
output   txRequestPortNetwork_V_V_write;
input   rxReplyPortNetwork_V_dout;
input   rxReplyPortNetwork_V_empty_n;
output   rxReplyPortNetwork_V_read;
input  [15:0] rxRequestPortFAST_V_V_dout;
input   rxRequestPortFAST_V_V_empty_n;
output   rxRequestPortFAST_V_V_read;
output   txReplyPortFAST_V_din;
input   txReplyPortFAST_V_full_n;
output   txReplyPortFAST_V_write;
input  [15:0] rxRequestPortMonitor_V_V_dout;
input   rxRequestPortMonitor_V_V_empty_n;
output   rxRequestPortMonitor_V_V_read;
output   txReplyPortMonitor_V_din;
input   txReplyPortMonitor_V_full_n;
output   txReplyPortMonitor_V_write;
input  [63:0] rxDataMonitor_V_data_V_dout;
input   rxDataMonitor_V_data_V_empty_n;
output   rxDataMonitor_V_data_V_read;
input  [7:0] rxDataMonitor_V_keep_V_dout;
input   rxDataMonitor_V_keep_V_empty_n;
output   rxDataMonitor_V_keep_V_read;
input  [0:0] rxDataMonitor_V_last_V_dout;
input   rxDataMonitor_V_last_V_empty_n;
output   rxDataMonitor_V_last_V_read;
input  [95:0] rxMetadataMonitor_V_dout;
input   rxMetadataMonitor_V_empty_n;
output   rxMetadataMonitor_V_read;
input  [15:0] rxLengthMonitor_V_V_dout;
input   rxLengthMonitor_V_V_empty_n;
output   rxLengthMonitor_V_V_read;
input  [63:0] rxDataFAST_V_data_V_dout;
input   rxDataFAST_V_data_V_empty_n;
output   rxDataFAST_V_data_V_read;
input  [7:0] rxDataFAST_V_keep_V_dout;
input   rxDataFAST_V_keep_V_empty_n;
output   rxDataFAST_V_keep_V_read;
input  [0:0] rxDataFAST_V_last_V_dout;
input   rxDataFAST_V_last_V_empty_n;
output   rxDataFAST_V_last_V_read;
input  [95:0] rxMetadataFAST_V_dout;
input   rxMetadataFAST_V_empty_n;
output   rxMetadataFAST_V_read;
input  [15:0] rxLengthFAST_V_V_dout;
input   rxLengthFAST_V_V_empty_n;
output   rxLengthFAST_V_V_read;
input  [63:0] rxTimeFAST_V_V_dout;
input   rxTimeFAST_V_V_empty_n;
output   rxTimeFAST_V_V_read;
output  [63:0] txDataNetwork_V_data_V_din;
input   txDataNetwork_V_data_V_full_n;
output   txDataNetwork_V_data_V_write;
output  [7:0] txDataNetwork_V_keep_V_din;
input   txDataNetwork_V_keep_V_full_n;
output   txDataNetwork_V_keep_V_write;
output  [0:0] txDataNetwork_V_last_V_din;
input   txDataNetwork_V_last_V_full_n;
output   txDataNetwork_V_last_V_write;
output  [95:0] txMetadataNetwork_V_din;
input   txMetadataNetwork_V_full_n;
output   txMetadataNetwork_V_write;
output  [15:0] txLengthNetwork_V_V_din;
input   txLengthNetwork_V_V_full_n;
output   txLengthNetwork_V_V_write;
input  [63:0] time_1_V_V_dout;
input   time_1_V_V_empty_n;
output   time_1_V_V_read;
input  [63:0] time_2_V_V_dout;
input   time_2_V_V_empty_n;
output   time_2_V_V_read;
input   ap_clk;
input   ap_rst;

reg    appMuxRxPath_U0_ap_start;
wire    appMuxRxPath_U0_ap_done;
wire    appMuxRxPath_U0_ap_continue;
wire    appMuxRxPath_U0_ap_idle;
wire    appMuxRxPath_U0_ap_ready;
wire    appMuxRxPath_U0_rxDataNetwork_V_data_read;
wire    appMuxRxPath_U0_rxDataNetwork_V_keep_read;
wire    appMuxRxPath_U0_rxDataNetwork_V_last_read;
wire    appMuxRxPath_U0_rxMetadataNetwork_V_read;
wire   [63:0] appMuxRxPath_U0_txDataFAST_V_data_V_din;
wire    appMuxRxPath_U0_txDataFAST_V_data_V_write;
wire   [7:0] appMuxRxPath_U0_txDataFAST_V_keep_V_din;
wire    appMuxRxPath_U0_txDataFAST_V_keep_V_write;
wire   [0:0] appMuxRxPath_U0_txDataFAST_V_last_V_din;
wire    appMuxRxPath_U0_txDataFAST_V_last_V_write;
wire   [95:0] appMuxRxPath_U0_txMetadataFAST_V_din;
wire    appMuxRxPath_U0_txMetadataFAST_V_write;
wire   [63:0] appMuxRxPath_U0_txTimeFAST_V_V_din;
wire    appMuxRxPath_U0_txTimeFAST_V_V_write;
wire    appMuxRxPath_U0_CurrTime_V_V_read;
wire    ap_hs_continue;
reg    appMuxPortPath_U0_ap_start;
wire    appMuxPortPath_U0_ap_done;
wire    appMuxPortPath_U0_ap_continue;
wire    appMuxPortPath_U0_ap_idle;
wire    appMuxPortPath_U0_ap_ready;
wire   [15:0] appMuxPortPath_U0_txRequestPortNetwork_din;
wire    appMuxPortPath_U0_txRequestPortNetwork_write;
wire    appMuxPortPath_U0_rxReplyPortNetwork_V_read;
wire    appMuxPortPath_U0_rxRequestPortFAST_V_s_read;
wire    appMuxPortPath_U0_txReplyPortFAST_V_din;
wire    appMuxPortPath_U0_txReplyPortFAST_V_write;
wire    appMuxPortPath_U0_rxRequestPortMonitor_read;
wire    appMuxPortPath_U0_txReplyPortMonitor_V_din;
wire    appMuxPortPath_U0_txReplyPortMonitor_V_write;
reg    appMuxTxPath_U0_ap_start;
wire    appMuxTxPath_U0_ap_done;
wire    appMuxTxPath_U0_ap_continue;
wire    appMuxTxPath_U0_ap_idle;
wire    appMuxTxPath_U0_ap_ready;
wire    appMuxTxPath_U0_rxDataFAST_V_data_V_read;
wire    appMuxTxPath_U0_rxDataFAST_V_keep_V_read;
wire    appMuxTxPath_U0_rxDataFAST_V_last_V_read;
wire    appMuxTxPath_U0_rxMetadataFAST_V_read;
wire    appMuxTxPath_U0_rxLengthFAST_V_V_read;
wire    appMuxTxPath_U0_rxTimeFAST_V_V_read;
wire    appMuxTxPath_U0_rxDataMonitor_V_data_read;
wire    appMuxTxPath_U0_rxDataMonitor_V_keep_read;
wire    appMuxTxPath_U0_rxDataMonitor_V_last_read;
wire    appMuxTxPath_U0_rxMetadataMonitor_V_read;
wire    appMuxTxPath_U0_rxLengthMonitor_V_V_read;
wire   [63:0] appMuxTxPath_U0_txDataNetwork_V_data_din;
wire    appMuxTxPath_U0_txDataNetwork_V_data_write;
wire   [7:0] appMuxTxPath_U0_txDataNetwork_V_keep_din;
wire    appMuxTxPath_U0_txDataNetwork_V_keep_write;
wire   [0:0] appMuxTxPath_U0_txDataNetwork_V_last_din;
wire    appMuxTxPath_U0_txDataNetwork_V_last_write;
wire   [95:0] appMuxTxPath_U0_txMetadataNetwork_V_din;
wire    appMuxTxPath_U0_txMetadataNetwork_V_write;
wire   [15:0] appMuxTxPath_U0_txLengthNetwork_V_V_din;
wire    appMuxTxPath_U0_txLengthNetwork_V_V_write;
wire    appMuxTxPath_U0_CurrTime_V_V_read;

// power-on initialization
initial begin
#0 appMuxRxPath_U0_ap_start = 1'b0;
#0 appMuxPortPath_U0_ap_start = 1'b0;
#0 appMuxTxPath_U0_ap_start = 1'b0;
end

appMuxRxPath appMuxRxPath_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(appMuxRxPath_U0_ap_start),
    .ap_done(appMuxRxPath_U0_ap_done),
    .ap_continue(appMuxRxPath_U0_ap_continue),
    .ap_idle(appMuxRxPath_U0_ap_idle),
    .ap_ready(appMuxRxPath_U0_ap_ready),
    .rxDataNetwork_V_data_dout(rxDataNetwork_V_data_V_dout),
    .rxDataNetwork_V_data_empty_n(rxDataNetwork_V_data_V_empty_n),
    .rxDataNetwork_V_data_read(appMuxRxPath_U0_rxDataNetwork_V_data_read),
    .rxDataNetwork_V_keep_dout(rxDataNetwork_V_keep_V_dout),
    .rxDataNetwork_V_keep_empty_n(rxDataNetwork_V_keep_V_empty_n),
    .rxDataNetwork_V_keep_read(appMuxRxPath_U0_rxDataNetwork_V_keep_read),
    .rxDataNetwork_V_last_dout(rxDataNetwork_V_last_V_dout),
    .rxDataNetwork_V_last_empty_n(rxDataNetwork_V_last_V_empty_n),
    .rxDataNetwork_V_last_read(appMuxRxPath_U0_rxDataNetwork_V_last_read),
    .rxMetadataNetwork_V_dout(rxMetadataNetwork_V_dout),
    .rxMetadataNetwork_V_empty_n(rxMetadataNetwork_V_empty_n),
    .rxMetadataNetwork_V_read(appMuxRxPath_U0_rxMetadataNetwork_V_read),
    .txDataFAST_V_data_V_din(appMuxRxPath_U0_txDataFAST_V_data_V_din),
    .txDataFAST_V_data_V_full_n(txDataFAST_V_data_V_full_n),
    .txDataFAST_V_data_V_write(appMuxRxPath_U0_txDataFAST_V_data_V_write),
    .txDataFAST_V_keep_V_din(appMuxRxPath_U0_txDataFAST_V_keep_V_din),
    .txDataFAST_V_keep_V_full_n(txDataFAST_V_keep_V_full_n),
    .txDataFAST_V_keep_V_write(appMuxRxPath_U0_txDataFAST_V_keep_V_write),
    .txDataFAST_V_last_V_din(appMuxRxPath_U0_txDataFAST_V_last_V_din),
    .txDataFAST_V_last_V_full_n(txDataFAST_V_last_V_full_n),
    .txDataFAST_V_last_V_write(appMuxRxPath_U0_txDataFAST_V_last_V_write),
    .txMetadataFAST_V_din(appMuxRxPath_U0_txMetadataFAST_V_din),
    .txMetadataFAST_V_full_n(txMetadataFAST_V_full_n),
    .txMetadataFAST_V_write(appMuxRxPath_U0_txMetadataFAST_V_write),
    .txTimeFAST_V_V_din(appMuxRxPath_U0_txTimeFAST_V_V_din),
    .txTimeFAST_V_V_full_n(txTimeFAST_V_V_full_n),
    .txTimeFAST_V_V_write(appMuxRxPath_U0_txTimeFAST_V_V_write),
    .CurrTime_V_V_dout(time_1_V_V_dout),
    .CurrTime_V_V_empty_n(time_1_V_V_empty_n),
    .CurrTime_V_V_read(appMuxRxPath_U0_CurrTime_V_V_read)
);

appMuxPortPath appMuxPortPath_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(appMuxPortPath_U0_ap_start),
    .ap_done(appMuxPortPath_U0_ap_done),
    .ap_continue(appMuxPortPath_U0_ap_continue),
    .ap_idle(appMuxPortPath_U0_ap_idle),
    .ap_ready(appMuxPortPath_U0_ap_ready),
    .txRequestPortNetwork_din(appMuxPortPath_U0_txRequestPortNetwork_din),
    .txRequestPortNetwork_full_n(txRequestPortNetwork_V_V_full_n),
    .txRequestPortNetwork_write(appMuxPortPath_U0_txRequestPortNetwork_write),
    .rxReplyPortNetwork_V_dout(rxReplyPortNetwork_V_dout),
    .rxReplyPortNetwork_V_empty_n(rxReplyPortNetwork_V_empty_n),
    .rxReplyPortNetwork_V_read(appMuxPortPath_U0_rxReplyPortNetwork_V_read),
    .rxRequestPortFAST_V_s_dout(rxRequestPortFAST_V_V_dout),
    .rxRequestPortFAST_V_s_empty_n(rxRequestPortFAST_V_V_empty_n),
    .rxRequestPortFAST_V_s_read(appMuxPortPath_U0_rxRequestPortFAST_V_s_read),
    .txReplyPortFAST_V_din(appMuxPortPath_U0_txReplyPortFAST_V_din),
    .txReplyPortFAST_V_full_n(txReplyPortFAST_V_full_n),
    .txReplyPortFAST_V_write(appMuxPortPath_U0_txReplyPortFAST_V_write),
    .rxRequestPortMonitor_dout(rxRequestPortMonitor_V_V_dout),
    .rxRequestPortMonitor_empty_n(rxRequestPortMonitor_V_V_empty_n),
    .rxRequestPortMonitor_read(appMuxPortPath_U0_rxRequestPortMonitor_read),
    .txReplyPortMonitor_V_din(appMuxPortPath_U0_txReplyPortMonitor_V_din),
    .txReplyPortMonitor_V_full_n(txReplyPortMonitor_V_full_n),
    .txReplyPortMonitor_V_write(appMuxPortPath_U0_txReplyPortMonitor_V_write)
);

appMuxTxPath appMuxTxPath_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(appMuxTxPath_U0_ap_start),
    .ap_done(appMuxTxPath_U0_ap_done),
    .ap_continue(appMuxTxPath_U0_ap_continue),
    .ap_idle(appMuxTxPath_U0_ap_idle),
    .ap_ready(appMuxTxPath_U0_ap_ready),
    .rxDataFAST_V_data_V_dout(rxDataFAST_V_data_V_dout),
    .rxDataFAST_V_data_V_empty_n(rxDataFAST_V_data_V_empty_n),
    .rxDataFAST_V_data_V_read(appMuxTxPath_U0_rxDataFAST_V_data_V_read),
    .rxDataFAST_V_keep_V_dout(rxDataFAST_V_keep_V_dout),
    .rxDataFAST_V_keep_V_empty_n(rxDataFAST_V_keep_V_empty_n),
    .rxDataFAST_V_keep_V_read(appMuxTxPath_U0_rxDataFAST_V_keep_V_read),
    .rxDataFAST_V_last_V_dout(rxDataFAST_V_last_V_dout),
    .rxDataFAST_V_last_V_empty_n(rxDataFAST_V_last_V_empty_n),
    .rxDataFAST_V_last_V_read(appMuxTxPath_U0_rxDataFAST_V_last_V_read),
    .rxMetadataFAST_V_dout(rxMetadataFAST_V_dout),
    .rxMetadataFAST_V_empty_n(rxMetadataFAST_V_empty_n),
    .rxMetadataFAST_V_read(appMuxTxPath_U0_rxMetadataFAST_V_read),
    .rxLengthFAST_V_V_dout(rxLengthFAST_V_V_dout),
    .rxLengthFAST_V_V_empty_n(rxLengthFAST_V_V_empty_n),
    .rxLengthFAST_V_V_read(appMuxTxPath_U0_rxLengthFAST_V_V_read),
    .rxTimeFAST_V_V_dout(rxTimeFAST_V_V_dout),
    .rxTimeFAST_V_V_empty_n(rxTimeFAST_V_V_empty_n),
    .rxTimeFAST_V_V_read(appMuxTxPath_U0_rxTimeFAST_V_V_read),
    .rxDataMonitor_V_data_dout(rxDataMonitor_V_data_V_dout),
    .rxDataMonitor_V_data_empty_n(rxDataMonitor_V_data_V_empty_n),
    .rxDataMonitor_V_data_read(appMuxTxPath_U0_rxDataMonitor_V_data_read),
    .rxDataMonitor_V_keep_dout(rxDataMonitor_V_keep_V_dout),
    .rxDataMonitor_V_keep_empty_n(rxDataMonitor_V_keep_V_empty_n),
    .rxDataMonitor_V_keep_read(appMuxTxPath_U0_rxDataMonitor_V_keep_read),
    .rxDataMonitor_V_last_dout(rxDataMonitor_V_last_V_dout),
    .rxDataMonitor_V_last_empty_n(rxDataMonitor_V_last_V_empty_n),
    .rxDataMonitor_V_last_read(appMuxTxPath_U0_rxDataMonitor_V_last_read),
    .rxMetadataMonitor_V_dout(rxMetadataMonitor_V_dout),
    .rxMetadataMonitor_V_empty_n(rxMetadataMonitor_V_empty_n),
    .rxMetadataMonitor_V_read(appMuxTxPath_U0_rxMetadataMonitor_V_read),
    .rxLengthMonitor_V_V_dout(rxLengthMonitor_V_V_dout),
    .rxLengthMonitor_V_V_empty_n(rxLengthMonitor_V_V_empty_n),
    .rxLengthMonitor_V_V_read(appMuxTxPath_U0_rxLengthMonitor_V_V_read),
    .txDataNetwork_V_data_din(appMuxTxPath_U0_txDataNetwork_V_data_din),
    .txDataNetwork_V_data_full_n(txDataNetwork_V_data_V_full_n),
    .txDataNetwork_V_data_write(appMuxTxPath_U0_txDataNetwork_V_data_write),
    .txDataNetwork_V_keep_din(appMuxTxPath_U0_txDataNetwork_V_keep_din),
    .txDataNetwork_V_keep_full_n(txDataNetwork_V_keep_V_full_n),
    .txDataNetwork_V_keep_write(appMuxTxPath_U0_txDataNetwork_V_keep_write),
    .txDataNetwork_V_last_din(appMuxTxPath_U0_txDataNetwork_V_last_din),
    .txDataNetwork_V_last_full_n(txDataNetwork_V_last_V_full_n),
    .txDataNetwork_V_last_write(appMuxTxPath_U0_txDataNetwork_V_last_write),
    .txMetadataNetwork_V_din(appMuxTxPath_U0_txMetadataNetwork_V_din),
    .txMetadataNetwork_V_full_n(txMetadataNetwork_V_full_n),
    .txMetadataNetwork_V_write(appMuxTxPath_U0_txMetadataNetwork_V_write),
    .txLengthNetwork_V_V_din(appMuxTxPath_U0_txLengthNetwork_V_V_din),
    .txLengthNetwork_V_V_full_n(txLengthNetwork_V_V_full_n),
    .txLengthNetwork_V_V_write(appMuxTxPath_U0_txLengthNetwork_V_V_write),
    .CurrTime_V_V_dout(time_2_V_V_dout),
    .CurrTime_V_V_empty_n(time_2_V_V_empty_n),
    .CurrTime_V_V_read(appMuxTxPath_U0_CurrTime_V_V_read)
);

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        appMuxPortPath_U0_ap_start <= 1'b0;
    end else begin
        appMuxPortPath_U0_ap_start <= 1'b1;
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        appMuxRxPath_U0_ap_start <= 1'b0;
    end else begin
        appMuxRxPath_U0_ap_start <= 1'b1;
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        appMuxTxPath_U0_ap_start <= 1'b0;
    end else begin
        appMuxTxPath_U0_ap_start <= 1'b1;
    end
end

assign ap_hs_continue = 1'b0;

assign appMuxPortPath_U0_ap_continue = 1'b1;

assign appMuxRxPath_U0_ap_continue = 1'b1;

assign appMuxTxPath_U0_ap_continue = 1'b1;

assign rxDataFAST_V_data_V_read = appMuxTxPath_U0_rxDataFAST_V_data_V_read;

assign rxDataFAST_V_keep_V_read = appMuxTxPath_U0_rxDataFAST_V_keep_V_read;

assign rxDataFAST_V_last_V_read = appMuxTxPath_U0_rxDataFAST_V_last_V_read;

assign rxDataMonitor_V_data_V_read = appMuxTxPath_U0_rxDataMonitor_V_data_read;

assign rxDataMonitor_V_keep_V_read = appMuxTxPath_U0_rxDataMonitor_V_keep_read;

assign rxDataMonitor_V_last_V_read = appMuxTxPath_U0_rxDataMonitor_V_last_read;

assign rxDataNetwork_V_data_V_read = appMuxRxPath_U0_rxDataNetwork_V_data_read;

assign rxDataNetwork_V_keep_V_read = appMuxRxPath_U0_rxDataNetwork_V_keep_read;

assign rxDataNetwork_V_last_V_read = appMuxRxPath_U0_rxDataNetwork_V_last_read;

assign rxLengthFAST_V_V_read = appMuxTxPath_U0_rxLengthFAST_V_V_read;

assign rxLengthMonitor_V_V_read = appMuxTxPath_U0_rxLengthMonitor_V_V_read;

assign rxMetadataFAST_V_read = appMuxTxPath_U0_rxMetadataFAST_V_read;

assign rxMetadataMonitor_V_read = appMuxTxPath_U0_rxMetadataMonitor_V_read;

assign rxMetadataNetwork_V_read = appMuxRxPath_U0_rxMetadataNetwork_V_read;

assign rxReplyPortNetwork_V_read = appMuxPortPath_U0_rxReplyPortNetwork_V_read;

assign rxRequestPortFAST_V_V_read = appMuxPortPath_U0_rxRequestPortFAST_V_s_read;

assign rxRequestPortMonitor_V_V_read = appMuxPortPath_U0_rxRequestPortMonitor_read;

assign rxTimeFAST_V_V_read = appMuxTxPath_U0_rxTimeFAST_V_V_read;

assign time_1_V_V_read = appMuxRxPath_U0_CurrTime_V_V_read;

assign time_2_V_V_read = appMuxTxPath_U0_CurrTime_V_V_read;

assign txDataFAST_V_data_V_din = appMuxRxPath_U0_txDataFAST_V_data_V_din;

assign txDataFAST_V_data_V_write = appMuxRxPath_U0_txDataFAST_V_data_V_write;

assign txDataFAST_V_keep_V_din = appMuxRxPath_U0_txDataFAST_V_keep_V_din;

assign txDataFAST_V_keep_V_write = appMuxRxPath_U0_txDataFAST_V_keep_V_write;

assign txDataFAST_V_last_V_din = appMuxRxPath_U0_txDataFAST_V_last_V_din;

assign txDataFAST_V_last_V_write = appMuxRxPath_U0_txDataFAST_V_last_V_write;

assign txDataNetwork_V_data_V_din = appMuxTxPath_U0_txDataNetwork_V_data_din;

assign txDataNetwork_V_data_V_write = appMuxTxPath_U0_txDataNetwork_V_data_write;

assign txDataNetwork_V_keep_V_din = appMuxTxPath_U0_txDataNetwork_V_keep_din;

assign txDataNetwork_V_keep_V_write = appMuxTxPath_U0_txDataNetwork_V_keep_write;

assign txDataNetwork_V_last_V_din = appMuxTxPath_U0_txDataNetwork_V_last_din;

assign txDataNetwork_V_last_V_write = appMuxTxPath_U0_txDataNetwork_V_last_write;

assign txLengthNetwork_V_V_din = appMuxTxPath_U0_txLengthNetwork_V_V_din;

assign txLengthNetwork_V_V_write = appMuxTxPath_U0_txLengthNetwork_V_V_write;

assign txMetadataFAST_V_din = appMuxRxPath_U0_txMetadataFAST_V_din;

assign txMetadataFAST_V_write = appMuxRxPath_U0_txMetadataFAST_V_write;

assign txMetadataNetwork_V_din = appMuxTxPath_U0_txMetadataNetwork_V_din;

assign txMetadataNetwork_V_write = appMuxTxPath_U0_txMetadataNetwork_V_write;

assign txReplyPortFAST_V_din = appMuxPortPath_U0_txReplyPortFAST_V_din;

assign txReplyPortFAST_V_write = appMuxPortPath_U0_txReplyPortFAST_V_write;

assign txReplyPortMonitor_V_din = appMuxPortPath_U0_txReplyPortMonitor_V_din;

assign txReplyPortMonitor_V_write = appMuxPortPath_U0_txReplyPortMonitor_V_write;

assign txRequestPortNetwork_V_V_din = appMuxPortPath_U0_txRequestPortNetwork_din;

assign txRequestPortNetwork_V_V_write = appMuxPortPath_U0_txRequestPortNetwork_write;

assign txTimeFAST_V_V_din = appMuxRxPath_U0_txTimeFAST_V_V_din;

assign txTimeFAST_V_V_write = appMuxRxPath_U0_txTimeFAST_V_V_write;

endmodule //udpAppMux