`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2025 11:29:19
// Design Name: 
// Module Name: rah_sha_bridge
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


module rah_sha_bridge (
    input wire clk,
    input wire wr_fifo_empty,
    input wire [47:0] wr_fifo_read_data,
    output reg wr_fifo_read_en,
    
    input wire output_valid,
    input wire [255:0] hash1_out,
    
    output reg input_valid,
    output reg [511:0] sha_input_data,
    output reg sha_en,
    input wire sha_done,
    
    output reg sha_output_fifo_re,
    input wire sha_fifo_empty,
    input wire [255:0] fifo_out_data,
    output reg [47:0] wrdata,
    output reg send_data,
    
    output reg rst // Reset depends on wr_fifo_empty
);

// Parameters
parameter SHA_INPUT_WIDTH = 512;
parameter SHA_OUTPUT_WIDTH = 256;
parameter RAH_PACKET_WIDTH = 48;
parameter EMPTY_CYCLES = 16;
parameter REM_INPUT_BITS = SHA_INPUT_WIDTH % RAH_PACKET_WIDTH;
parameter REM_OUTPUT_BITS = SHA_OUTPUT_WIDTH % RAH_PACKET_WIDTH;

// Registers
reg [2:0] rd_state = 0, wr_state = 0;
reg [8:0] rd_bit_count = 0, wr_bit_count = 0;
reg [3:0] empty_counter = 0;
reg [7:0] rd_counter = 0, wr_counter = 0;
reg data_request = 0;
reg input_valid_pulse = 0; 


// Reset debounce mechanism
always @(posedge clk) begin
    if (wr_fifo_empty)
         begin
            rst <= 0 ;
        end
        else begin
        rst <= 1;
    end
end



// Convert Rah data to 512-bit SHA input data
always @(posedge clk) begin
    case (rd_state)
        0: begin
            rd_counter <= 0;
            if (!wr_fifo_empty) begin
                data_request <= 1;
                wr_fifo_read_en <= 1;
                rd_state <= 1;
                input_valid <= 0;
            end
        end
        
        1: begin
            data_request <= 0;
            wr_fifo_read_en <= 0;
            rd_state <= 2;
            input_valid <= 0;
        end
        
        2: begin
            if (rd_bit_count + RAH_PACKET_WIDTH < SHA_INPUT_WIDTH) begin
                sha_input_data[(SHA_INPUT_WIDTH - rd_bit_count) - 1 -: RAH_PACKET_WIDTH] <= wr_fifo_read_data;
                rd_bit_count <= rd_bit_count + RAH_PACKET_WIDTH;
                if (!wr_fifo_empty) begin
                    wr_fifo_read_en <= 1;
                    rd_state <= 1;
                    rd_counter <= rd_counter + 1;
                end
            end else begin
                sha_input_data[REM_INPUT_BITS-1:0] <= wr_fifo_read_data[RAH_PACKET_WIDTH-1 -: REM_INPUT_BITS];
                rd_state <= 3;
                sha_en = 1;
            end
        end
        
        3: begin
            sha_en <= 0;
            input_valid <= 1;
             rd_state <= 4;
        end
        4: begin
            input_valid <= input_valid_pulse; // Set input_valid for 1 cycle
            input_valid_pulse <= 0;  // Reset the pulse flag after 1 cycle
            if (sha_done) begin
                rd_state <= 0;
                rd_bit_count <= 0;
            end
        end
    endcase
end

// Convert 256-bit SHA output data to Rah data
always @(posedge clk) begin
    case (wr_state)
        0: begin
            wr_counter <= 0;
            send_data <= 0;
            if (!sha_fifo_empty) begin
                sha_output_fifo_re <= 1;
                wr_state <= 1;
            end
        end
        
        1: begin
            sha_output_fifo_re <= 0;
            wr_state <= 2;
        end
        
        2: begin
            wr_counter <= wr_counter + 1;
            send_data <= 1;
            if (wr_bit_count + RAH_PACKET_WIDTH < SHA_OUTPUT_WIDTH) begin
                wrdata <= fifo_out_data[(SHA_OUTPUT_WIDTH - wr_bit_count) - 1 -: RAH_PACKET_WIDTH];
                wr_bit_count <= wr_bit_count + RAH_PACKET_WIDTH;
            end else begin
                wr_state <= 0;
                wrdata <= (REM_OUTPUT_BITS == RAH_PACKET_WIDTH) ? fifo_out_data[RAH_PACKET_WIDTH-1:0] : (fifo_out_data[REM_OUTPUT_BITS-1:0] << (RAH_PACKET_WIDTH - REM_OUTPUT_BITS));
                wr_bit_count <= 0;
            end
        end
    endcase
end

endmodule