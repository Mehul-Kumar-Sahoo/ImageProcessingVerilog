`timescale 1ps / 0.1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2022 16:52:28
// Design Name: 
// Module Name: Pixel_controller_tb
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


module Pixel_controller_tb;
    reg [0:7] inbyte,threshold,value;
    reg [0:1] select;
    reg clk;
    wire [0:7] outbyte;

    integer i = 0;
    integer pi; // pixel intensities
    // data input
    reg [0:7] data_in[0:98303];
    // data output
    reg [0:7] data_out[0:98303];

    always begin
        #5 clk = ~clk;
    end

    // instantiating design module
    Pixel_controller px1(outbyte,inbyte,threshold,value,select,clk);

    initial begin
        // Opening output file
        pi = $fopen("C:/Users/sahoo/OneDrive/Documents/COLLEGE/ICHIP_22/PS_1/Output.txt","w");
        // Initialising the clock value to be 0;
        clk = 0;
        // Opening input file
        $readmemb("C:/Users/sahoo/OneDrive/Documents/COLLEGE/ICHIP_22/PS_1/Ichip_22_input.txt",data_in);
    end

    initial begin
        // Setting the values given in the ps
        value = 60;
        threshold = 160;
        select = 0;
        for(i=0;i<98304;i=i+1) begin
            #5 inbyte = data_in[i];
            #5 data_out[i] = outbyte;
            $display("input : %b  output : %b ",data_in[i],data_out[i]);
        end

        for(i=0;i<98304;i=i+1) begin
            $fwriteh(pi,data_out[i]);
            $fwriteh(pi,"\n");
        end
        $finish;
    end

endmodule