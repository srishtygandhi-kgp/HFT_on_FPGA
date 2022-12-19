// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module udplowercase_top (
lbPortOpenReplyIn_TVALID,
lbPortOpenReplyIn_TREADY,
lbPortOpenReplyIn_TDATA,
lbRequestPortOpenOut_TVALID,
lbRequestPortOpenOut_TREADY,
lbRequestPortOpenOut_TDATA,
lbRxDataIn_TVALID,
lbRxDataIn_TREADY,
lbRxDataIn_TDATA,
lbRxDataIn_TKEEP,
lbRxDataIn_TLAST,
lbRxMetadataIn_TVALID,
lbRxMetadataIn_TREADY,
lbRxMetadataIn_TDATA,
lbTxDataOut_TVALID,
lbTxDataOut_TREADY,
lbTxDataOut_TDATA,
lbTxDataOut_TKEEP,
lbTxDataOut_TLAST,
lbTxLengthOut_TVALID,
lbTxLengthOut_TREADY,
lbTxLengthOut_TDATA,
lbTxMetadataOut_TVALID,
lbTxMetadataOut_TREADY,
lbTxMetadataOut_TDATA,
aresetn,
aclk,
lbRxPort_V
);

parameter RESET_ACTIVE_LOW = 1;

input lbPortOpenReplyIn_TVALID ;
output lbPortOpenReplyIn_TREADY ;
input [8 - 1:0] lbPortOpenReplyIn_TDATA ;


output lbRequestPortOpenOut_TVALID ;
input lbRequestPortOpenOut_TREADY ;
output [16 - 1:0] lbRequestPortOpenOut_TDATA ;


input lbRxDataIn_TVALID ;
output lbRxDataIn_TREADY ;
input [64 - 1:0] lbRxDataIn_TDATA ;
input [8 - 1:0] lbRxDataIn_TKEEP ;
input [1 - 1:0] lbRxDataIn_TLAST ;


input lbRxMetadataIn_TVALID ;
output lbRxMetadataIn_TREADY ;
input [96 - 1:0] lbRxMetadataIn_TDATA ;


output lbTxDataOut_TVALID ;
input lbTxDataOut_TREADY ;
output [64 - 1:0] lbTxDataOut_TDATA ;
output [8 - 1:0] lbTxDataOut_TKEEP ;
output [1 - 1:0] lbTxDataOut_TLAST ;


output lbTxLengthOut_TVALID ;
input lbTxLengthOut_TREADY ;
output [16 - 1:0] lbTxLengthOut_TDATA ;


output lbTxMetadataOut_TVALID ;
input lbTxMetadataOut_TREADY ;
output [96 - 1:0] lbTxMetadataOut_TDATA ;

input aresetn ;

input aclk ;

output [16 - 1:0] lbRxPort_V ;


wire lbPortOpenReplyIn_TVALID;
wire lbPortOpenReplyIn_TREADY;
wire [8 - 1:0] lbPortOpenReplyIn_TDATA;


wire lbRequestPortOpenOut_TVALID;
wire lbRequestPortOpenOut_TREADY;
wire [16 - 1:0] lbRequestPortOpenOut_TDATA;


wire lbRxDataIn_TVALID;
wire lbRxDataIn_TREADY;
wire [64 - 1:0] lbRxDataIn_TDATA;
wire [8 - 1:0] lbRxDataIn_TKEEP;
wire [1 - 1:0] lbRxDataIn_TLAST;


wire lbRxMetadataIn_TVALID;
wire lbRxMetadataIn_TREADY;
wire [96 - 1:0] lbRxMetadataIn_TDATA;


wire lbTxDataOut_TVALID;
wire lbTxDataOut_TREADY;
wire [64 - 1:0] lbTxDataOut_TDATA;
wire [8 - 1:0] lbTxDataOut_TKEEP;
wire [1 - 1:0] lbTxDataOut_TLAST;


wire lbTxLengthOut_TVALID;
wire lbTxLengthOut_TREADY;
wire [16 - 1:0] lbTxLengthOut_TDATA;


wire lbTxMetadataOut_TVALID;
wire lbTxMetadataOut_TREADY;
wire [96 - 1:0] lbTxMetadataOut_TDATA;

wire aresetn;


wire [1 - 1:0] sig_udpLowercase_lbPortOpenReplyIn_V_dout;
wire sig_udpLowercase_lbPortOpenReplyIn_V_empty_n;
wire sig_udpLowercase_lbPortOpenReplyIn_V_read;

wire [16 - 1:0] sig_udpLowercase_lbRequestPortOpenOut_V_V_din;
wire sig_udpLowercase_lbRequestPortOpenOut_V_V_full_n;
wire sig_udpLowercase_lbRequestPortOpenOut_V_V_write;

wire [64 - 1:0] sig_udpLowercase_lbRxDataIn_V_data_V_dout;
wire sig_udpLowercase_lbRxDataIn_V_data_V_empty_n;
wire sig_udpLowercase_lbRxDataIn_V_data_V_read;
wire [8 - 1:0] sig_udpLowercase_lbRxDataIn_V_keep_V_dout;
wire sig_udpLowercase_lbRxDataIn_V_keep_V_empty_n;
wire sig_udpLowercase_lbRxDataIn_V_keep_V_read;
wire [1 - 1:0] sig_udpLowercase_lbRxDataIn_V_last_V_dout;
wire sig_udpLowercase_lbRxDataIn_V_last_V_empty_n;
wire sig_udpLowercase_lbRxDataIn_V_last_V_read;

wire [96 - 1:0] sig_udpLowercase_lbRxMetadataIn_V_dout;
wire sig_udpLowercase_lbRxMetadataIn_V_empty_n;
wire sig_udpLowercase_lbRxMetadataIn_V_read;

wire [64 - 1:0] sig_udpLowercase_lbTxDataOut_V_data_V_din;
wire sig_udpLowercase_lbTxDataOut_V_data_V_full_n;
wire sig_udpLowercase_lbTxDataOut_V_data_V_write;
wire [8 - 1:0] sig_udpLowercase_lbTxDataOut_V_keep_V_din;
wire sig_udpLowercase_lbTxDataOut_V_keep_V_full_n;
wire sig_udpLowercase_lbTxDataOut_V_keep_V_write;
wire [1 - 1:0] sig_udpLowercase_lbTxDataOut_V_last_V_din;
wire sig_udpLowercase_lbTxDataOut_V_last_V_full_n;
wire sig_udpLowercase_lbTxDataOut_V_last_V_write;

wire [16 - 1:0] sig_udpLowercase_lbTxLengthOut_V_V_din;
wire sig_udpLowercase_lbTxLengthOut_V_V_full_n;
wire sig_udpLowercase_lbTxLengthOut_V_V_write;

wire [96 - 1:0] sig_udpLowercase_lbTxMetadataOut_V_din;
wire sig_udpLowercase_lbTxMetadataOut_V_full_n;
wire sig_udpLowercase_lbTxMetadataOut_V_write;

wire sig_udpLowercase_ap_rst;



udpLowercase udpLowercase_U(
    .lbPortOpenReplyIn_V_dout(sig_udpLowercase_lbPortOpenReplyIn_V_dout),
    .lbPortOpenReplyIn_V_empty_n(sig_udpLowercase_lbPortOpenReplyIn_V_empty_n),
    .lbPortOpenReplyIn_V_read(sig_udpLowercase_lbPortOpenReplyIn_V_read),
    .lbRequestPortOpenOut_V_V_din(sig_udpLowercase_lbRequestPortOpenOut_V_V_din),
    .lbRequestPortOpenOut_V_V_full_n(sig_udpLowercase_lbRequestPortOpenOut_V_V_full_n),
    .lbRequestPortOpenOut_V_V_write(sig_udpLowercase_lbRequestPortOpenOut_V_V_write),
    .lbRxDataIn_V_data_V_dout(sig_udpLowercase_lbRxDataIn_V_data_V_dout),
    .lbRxDataIn_V_data_V_empty_n(sig_udpLowercase_lbRxDataIn_V_data_V_empty_n),
    .lbRxDataIn_V_data_V_read(sig_udpLowercase_lbRxDataIn_V_data_V_read),
    .lbRxDataIn_V_keep_V_dout(sig_udpLowercase_lbRxDataIn_V_keep_V_dout),
    .lbRxDataIn_V_keep_V_empty_n(sig_udpLowercase_lbRxDataIn_V_keep_V_empty_n),
    .lbRxDataIn_V_keep_V_read(sig_udpLowercase_lbRxDataIn_V_keep_V_read),
    .lbRxDataIn_V_last_V_dout(sig_udpLowercase_lbRxDataIn_V_last_V_dout),
    .lbRxDataIn_V_last_V_empty_n(sig_udpLowercase_lbRxDataIn_V_last_V_empty_n),
    .lbRxDataIn_V_last_V_read(sig_udpLowercase_lbRxDataIn_V_last_V_read),
    .lbRxMetadataIn_V_dout(sig_udpLowercase_lbRxMetadataIn_V_dout),
    .lbRxMetadataIn_V_empty_n(sig_udpLowercase_lbRxMetadataIn_V_empty_n),
    .lbRxMetadataIn_V_read(sig_udpLowercase_lbRxMetadataIn_V_read),
    .lbTxDataOut_V_data_V_din(sig_udpLowercase_lbTxDataOut_V_data_V_din),
    .lbTxDataOut_V_data_V_full_n(sig_udpLowercase_lbTxDataOut_V_data_V_full_n),
    .lbTxDataOut_V_data_V_write(sig_udpLowercase_lbTxDataOut_V_data_V_write),
    .lbTxDataOut_V_keep_V_din(sig_udpLowercase_lbTxDataOut_V_keep_V_din),
    .lbTxDataOut_V_keep_V_full_n(sig_udpLowercase_lbTxDataOut_V_keep_V_full_n),
    .lbTxDataOut_V_keep_V_write(sig_udpLowercase_lbTxDataOut_V_keep_V_write),
    .lbTxDataOut_V_last_V_din(sig_udpLowercase_lbTxDataOut_V_last_V_din),
    .lbTxDataOut_V_last_V_full_n(sig_udpLowercase_lbTxDataOut_V_last_V_full_n),
    .lbTxDataOut_V_last_V_write(sig_udpLowercase_lbTxDataOut_V_last_V_write),
    .lbTxLengthOut_V_V_din(sig_udpLowercase_lbTxLengthOut_V_V_din),
    .lbTxLengthOut_V_V_full_n(sig_udpLowercase_lbTxLengthOut_V_V_full_n),
    .lbTxLengthOut_V_V_write(sig_udpLowercase_lbTxLengthOut_V_V_write),
    .lbTxMetadataOut_V_din(sig_udpLowercase_lbTxMetadataOut_V_din),
    .lbTxMetadataOut_V_full_n(sig_udpLowercase_lbTxMetadataOut_V_full_n),
    .lbTxMetadataOut_V_write(sig_udpLowercase_lbTxMetadataOut_V_write),
    .ap_rst(sig_udpLowercase_ap_rst),
    .ap_clk(aclk),
    .lbRxPort_V(lbRxPort_V)
);

udpLowercase_lbPortOpenReplyIn_if udpLowercase_lbPortOpenReplyIn_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .lbPortOpenReplyIn_V_dout(sig_udpLowercase_lbPortOpenReplyIn_V_dout),
    .lbPortOpenReplyIn_V_empty_n(sig_udpLowercase_lbPortOpenReplyIn_V_empty_n),
    .lbPortOpenReplyIn_V_read(sig_udpLowercase_lbPortOpenReplyIn_V_read),
    .TVALID(lbPortOpenReplyIn_TVALID),
    .TREADY(lbPortOpenReplyIn_TREADY),
    .TDATA(lbPortOpenReplyIn_TDATA));

udpLowercase_lbRequestPortOpenOut_if udpLowercase_lbRequestPortOpenOut_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .lbRequestPortOpenOut_V_V_din(sig_udpLowercase_lbRequestPortOpenOut_V_V_din),
    .lbRequestPortOpenOut_V_V_full_n(sig_udpLowercase_lbRequestPortOpenOut_V_V_full_n),
    .lbRequestPortOpenOut_V_V_write(sig_udpLowercase_lbRequestPortOpenOut_V_V_write),
    .TVALID(lbRequestPortOpenOut_TVALID),
    .TREADY(lbRequestPortOpenOut_TREADY),
    .TDATA(lbRequestPortOpenOut_TDATA));

udpLowercase_lbRxDataIn_if udpLowercase_lbRxDataIn_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .lbRxDataIn_V_data_V_dout(sig_udpLowercase_lbRxDataIn_V_data_V_dout),
    .lbRxDataIn_V_data_V_empty_n(sig_udpLowercase_lbRxDataIn_V_data_V_empty_n),
    .lbRxDataIn_V_data_V_read(sig_udpLowercase_lbRxDataIn_V_data_V_read),
    .lbRxDataIn_V_keep_V_dout(sig_udpLowercase_lbRxDataIn_V_keep_V_dout),
    .lbRxDataIn_V_keep_V_empty_n(sig_udpLowercase_lbRxDataIn_V_keep_V_empty_n),
    .lbRxDataIn_V_keep_V_read(sig_udpLowercase_lbRxDataIn_V_keep_V_read),
    .lbRxDataIn_V_last_V_dout(sig_udpLowercase_lbRxDataIn_V_last_V_dout),
    .lbRxDataIn_V_last_V_empty_n(sig_udpLowercase_lbRxDataIn_V_last_V_empty_n),
    .lbRxDataIn_V_last_V_read(sig_udpLowercase_lbRxDataIn_V_last_V_read),
    .TVALID(lbRxDataIn_TVALID),
    .TREADY(lbRxDataIn_TREADY),
    .TDATA(lbRxDataIn_TDATA),
    .TKEEP(lbRxDataIn_TKEEP),
    .TLAST(lbRxDataIn_TLAST));

udpLowercase_lbRxMetadataIn_if udpLowercase_lbRxMetadataIn_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .lbRxMetadataIn_V_dout(sig_udpLowercase_lbRxMetadataIn_V_dout),
    .lbRxMetadataIn_V_empty_n(sig_udpLowercase_lbRxMetadataIn_V_empty_n),
    .lbRxMetadataIn_V_read(sig_udpLowercase_lbRxMetadataIn_V_read),
    .TVALID(lbRxMetadataIn_TVALID),
    .TREADY(lbRxMetadataIn_TREADY),
    .TDATA(lbRxMetadataIn_TDATA));

udpLowercase_lbTxDataOut_if udpLowercase_lbTxDataOut_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .lbTxDataOut_V_data_V_din(sig_udpLowercase_lbTxDataOut_V_data_V_din),
    .lbTxDataOut_V_data_V_full_n(sig_udpLowercase_lbTxDataOut_V_data_V_full_n),
    .lbTxDataOut_V_data_V_write(sig_udpLowercase_lbTxDataOut_V_data_V_write),
    .lbTxDataOut_V_keep_V_din(sig_udpLowercase_lbTxDataOut_V_keep_V_din),
    .lbTxDataOut_V_keep_V_full_n(sig_udpLowercase_lbTxDataOut_V_keep_V_full_n),
    .lbTxDataOut_V_keep_V_write(sig_udpLowercase_lbTxDataOut_V_keep_V_write),
    .lbTxDataOut_V_last_V_din(sig_udpLowercase_lbTxDataOut_V_last_V_din),
    .lbTxDataOut_V_last_V_full_n(sig_udpLowercase_lbTxDataOut_V_last_V_full_n),
    .lbTxDataOut_V_last_V_write(sig_udpLowercase_lbTxDataOut_V_last_V_write),
    .TVALID(lbTxDataOut_TVALID),
    .TREADY(lbTxDataOut_TREADY),
    .TDATA(lbTxDataOut_TDATA),
    .TKEEP(lbTxDataOut_TKEEP),
    .TLAST(lbTxDataOut_TLAST));

udpLowercase_lbTxLengthOut_if udpLowercase_lbTxLengthOut_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .lbTxLengthOut_V_V_din(sig_udpLowercase_lbTxLengthOut_V_V_din),
    .lbTxLengthOut_V_V_full_n(sig_udpLowercase_lbTxLengthOut_V_V_full_n),
    .lbTxLengthOut_V_V_write(sig_udpLowercase_lbTxLengthOut_V_V_write),
    .TVALID(lbTxLengthOut_TVALID),
    .TREADY(lbTxLengthOut_TREADY),
    .TDATA(lbTxLengthOut_TDATA));

udpLowercase_lbTxMetadataOut_if udpLowercase_lbTxMetadataOut_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .lbTxMetadataOut_V_din(sig_udpLowercase_lbTxMetadataOut_V_din),
    .lbTxMetadataOut_V_full_n(sig_udpLowercase_lbTxMetadataOut_V_full_n),
    .lbTxMetadataOut_V_write(sig_udpLowercase_lbTxMetadataOut_V_write),
    .TVALID(lbTxMetadataOut_TVALID),
    .TREADY(lbTxMetadataOut_TREADY),
    .TDATA(lbTxMetadataOut_TDATA));

udpLowercase_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_udpLowercase_ap_rst),
    .din(aresetn));

endmodule
