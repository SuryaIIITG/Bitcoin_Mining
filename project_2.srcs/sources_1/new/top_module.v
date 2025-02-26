`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2025 17:44:52
// Design Name: 
// Module Name: top_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_module (
    input clk,
    input rst,
    input wr_fifo_empty,
    input [47:0] wr_fifo_read_data,
    output wr_fifo_read_en,
    output input_valid,
    output [511:0] block_header,
    output pp_rd_fifo_en,
    output [47:0] pp_rd_fifo_data,
    output output_valid,
    output [255:0] hash1_out,
    output [255:0] hash_result
);

    // Internal wires for interconnecting modules
    wire miner_input_valid;
    wire [511:0] miner_block_header;
    wire [255:0] miner_hash1_out;
    wire [255:0] miner_hash_result;
    wire miner_output_valid;
    
    // Instantiate rah_sha_bridge module
    rah_sha_bridge u_rah_sha_bridge (
        .clk(clk),
        .rst(rst),
        .wr_fifo_empty(wr_fifo_empty),
        .wr_fifo_read_data(wr_fifo_read_data),
        .wr_fifo_read_en(wr_fifo_read_en),
        .input_valid(miner_input_valid),
        .sha_input_data(miner_block_header),
        .sha_en(),
        .sha_done(output_valid),
        .sha_output_fifo_re(pp_rd_fifo_en),
        .sha_fifo_empty(),
        .fifo_out_data(pp_rd_fifo_data),
        .wrdata(),
        .send_data()
    );

    // Instantiate miner module
    miner u_miner (
        .clk(clk),
        .rst(rst),
        .input_valid(miner_input_valid),
        .block_header(miner_block_header),
        .hash1_out(hash1_out),
        .hash_result(hash_result),
        .output_valid(output_valid)
    );
    
endmodule
