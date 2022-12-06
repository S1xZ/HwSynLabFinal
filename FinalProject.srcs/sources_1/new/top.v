`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2021 12:18:07 AM
// Design Name: 
// Module Name: system
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


module top(
    output [6:0] seg,
    output dp,
    output [3:0] an,
    output [1:0] led,
    input clk,
    input RsRx,
    input btnC
    );
    
    wire [3:0] num3,num2,num1,num0; // left to right
    
    wire [1:0]opcode;
    
    wire an0,an1,an2,an3,received,en,CarryOut;
    assign an={an3,an2,an1,an0};
    
    wire [7:0]data_out;
    
    wire [15:0] A,B,ALU_Out;
    ////////////////////////////////////////
    // Clock
    wire targetClk;
    
    clockGenerator(clk,targetClk);
    
    ////////////////////////////////////////
    // Display
    quadSevenSeg q7seg(seg,dp,an0,an1,an2,an3,num0,num1,num2,num3,targetClk);
    
    ////////////////////////////////////////
    // UART
    uart uart(clk,RsRx,data_out,received);
    
    ////////////////////////////////////////
    // Single Pulser
    singlePulser singlePulser(reset,btnC,clk);
    
    ////////////////////////////////////////
    // Input Control
    inputControl inputControl(data_out,received,reset,A,B,opcode,en);
    
    ////////////////////////////////////////
    // ALU
    ALU ALU(A,B,opcode,en,ALU_Out,CarryOut);
    
    ////////////////////////////////////////
    // binary2DIG
    binary2DIG binary2DIG(ALU_Out,CarryOut,num3,num2,num1,num0,led[0],led[1]);

endmodule