`timescale 1ps / 0.1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2022 16:44:20
// Design Name: 
// Module Name: Pixel_controller
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


module Pixel_controller(outbyte,inbyte,threshold,value,select,clk);
    input [0:7] inbyte,threshold,value;
    input [0:1] select;
    input clk;
    output reg [0:7] outbyte;

    always @(posedge clk) begin
        case(select)
            2'b00: outbyte = (inbyte > (8'b1111_1111 - value)) ? 8'b1111_1111 : inbyte + value;
            2'b01: outbyte = (inbyte < value) ? 8'b0000_0000 : inbyte - value;
            2'b10: outbyte = (inbyte > threshold) ? 8'b1111_1111 : 8'b0000_0000;
            2'b11: outbyte = 8'b1111_1111 - inbyte;
        endcase
    end
endmodule