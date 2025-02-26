`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 18:29:42
// Design Name: 
// Module Name: bitcoin_miner
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


module bitcoin_miner (
    input clk,                        // Clock signal
    input rst,                        // Reset signal
    input [31:0] block_number,        // Block index
    input [255:0] prev_hash,          // Previous block hash
    input [127:0] transactions,       // Simplified transaction data
    input [3:0] difficulty,           // Number of leading zeros required (max 15)
    output reg [255:0] mined_hash,    // Valid mined hash
    output reg [31:0] nonce_out,      // Valid nonce
    output reg valid                  // High when a valid hash is found
);

    reg [31:0] nonce;
    wire [511:0] M_in [0:39];
    wire [255:0] H_out [0:39];
    wire output_valid [0:39];
    reg input_valid;
    reg rst_flag;

    // Prepare 512-bit message: Block data + Nonce
    generate
        genvar i;
        for (i = 0; i < 40; i = i + 1) begin : sha_blocks
            assign M_in[i] = {block_number, transactions, prev_hash, nonce + i};
        end
    endgenerate

    // Instantiate 40 SHA-256 blocks for parallel hashing
    generate
        for (i = 0; i < 40; i = i + 1) begin: sha256_pipeline
            sha256_block sha256_inst (
                .clk(clk),
                .rst(rst),
                .H_in(256'h6a09e667bb67ae8563c1059a3c6ef372a54ff53a510e527fa9b05688c2b3e6c1),
                .M_in(M_in[i]),
                .input_valid(input_valid),
                .H_out(H_out[i]),
                .output_valid(output_valid[i])
            );
        end
    endgenerate

    // Function to check if the hash meets the difficulty target
    function is_valid_hash;
        input [255:0] hash;
        input [3:0] diff;
        integer j;
        begin
            is_valid_hash = 1'b1;
            for (j = 0; j < diff; j = j + 1) begin
                if (hash[255 - j] != 1'b0) begin
                    is_valid_hash = 1'b0;
                end
            end
        end
    endfunction

    // Mining process
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            nonce <= 0;
            valid <= 0;
            input_valid <= 1;
            rst_flag <= 1;
        end else begin
            if (rst_flag) begin
                input_valid <= 0;
                rst_flag <= 0;
            end
            if (!valid) begin
                if (output_valid[39]) begin
                    if (is_valid_hash(H_out[39], difficulty)) begin
                        mined_hash <= H_out[39];
                        nonce_out <= nonce;
                        valid <= 1;
                    end else begin
                        nonce <= nonce + 40;
                        input_valid <= 1;
                    end
                end else begin
                    input_valid <= 0;
                end
            end
        end
    end

endmodule
