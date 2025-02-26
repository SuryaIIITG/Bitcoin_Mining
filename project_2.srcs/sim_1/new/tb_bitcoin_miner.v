`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 18:33:38
// Design Name: 
// Module Name: tb_bitcoin_miner
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


module tb_bitcoin_miner;

    // Testbench signals
    reg clk;
    reg rst;
    reg [31:0] block_number;
    reg [255:0] prev_hash;
    reg [127:0] transactions;
    reg [3:0] difficulty;
    wire [255:0] mined_hash;
    wire [31:0] nonce_out;
    wire valid;

    // Instantiate the mining module
    bitcoin_miner uut (
        .clk(clk),
        .rst(rst),
        .block_number(block_number),
        .prev_hash(prev_hash),
        .transactions(transactions),
        .difficulty(difficulty),
        .mined_hash(mined_hash),
        .nonce_out(nonce_out),
        .valid(valid)
    );

    // Clock generation
    always #5 clk = ~clk; // 100MHz Clock (10ns period)

    // Test scenario
    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        block_number = 32'h00000005; // Block #5
        prev_hash = 256'h0000000a036944e29568d0cff17edbe038f81208fecf9a66be9a2b8321c6ec7;
        transactions = 128'h44486176616c2d3e42686176696e2d3e323020425443; // "Dhaval->Bhavin->20 BTC"
        difficulty = 8; // Target: 4 leading zeroes
        #20;
        
        // Release reset
        rst = 0;
        
        // Wait until a valid hash is found
        wait (valid);
        
        // Display results
        $display("\n✅ Block Mined Successfully!");
        $display("🔢 Nonce: %d", nonce_out);
        $display("🔑 Mined Hash: %h", mined_hash);
        $display("🎯 Difficulty: %d", difficulty);
        
        // End simulation
        #10;
        $finish;
    end

endmodule