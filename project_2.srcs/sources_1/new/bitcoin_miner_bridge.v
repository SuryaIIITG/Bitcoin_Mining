`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 10:17:31
// Design Name: 
// Module Name: bitcoin_miner_bridge
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


module bitcoin_miner_bridge (
    input clk,
    input rst,
    input [419:0] data_in, // 420-bit input containing all required fields
    output [31:0] block_number,
    output [255:0] prev_hash,
    output [127:0] transactions,
    output [3:0] difficulty
);

    // Assigning data_in to respective signals
    assign block_number = data_in[419:388];
    assign prev_hash = data_in[387:132];
    assign transactions = data_in[131:4];
    assign difficulty = data_in[3:0];

    // Instantiating bitcoin_miner module
    bitcoin_miner miner_inst (
        .clk(clk),
        .rst(rst),
        .block_number(block_number),
        .prev_hash(prev_hash),
        .transactions(transactions),
        .difficulty(difficulty),
        .mined_hash(),
        .nonce_out(),
        .valid()
    );

endmodule
