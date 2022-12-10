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
    output wire Hsync, Vsync, //vga
    output wire [3:0] vgaRed, vgaGreen, vgaBlue, //vga
    input clk,
    input wire RsRx,
    input btnC
    );
    
    wire [3:0] num3,num2,num1,num0; // left to right
    
    wire [1:0]opcode;
    wire [1:0]state;
    
    wire an0,an1,an2,an3,received,div0;
    assign an={an3,an2,an1,an0};
    
    wire [7:0]data_out;
    
    wire [15:0] A,B,ALU_Out;
    
    wire reset;
    ////////////////////////////////////////
    // Clock
    wire targetClk;
    
    clockGenerator clockGenerator(clk,targetClk);
    
    ////////////////////////////////////////
    // Display
    quadSevenSeg q7seg(seg,dp,an0,an1,an2,an3,num0,num1,num2,num3,targetClk);
    
    ////////////////////////////////////////
    // UART
    uart uart(clk,RsRx,data_out,received);
    
    ////////////////////////////////////////
    // Single Pulser
    singlePulser singlePulser(reset,btnC,targetClk);
    
    ////////////////////////////////////////
    // Input Control
    inputControl inputControl(data_out,received,reset,clk,A,B,opcode,state);
    
    ////////////////////////////////////////
    // ALU
    ALU ALU(A,B,opcode,clk,ALU_Out,div0);
    
    ////////////////////////////////////////
    // binary2DIG
    binary2DIG binary2DIG(A,B,ALU_Out,state,clk,div0,num3,num2,num1,num0,led[0],led[1]);
    
    ////////////////////////////////////////
    // vga
    vga_control vga_control(clk,video_on,x, y,
                num3,num2,num1,num0,
                led[0],led[1],
                {vgaRed, vgaGreen, vgaBlue}
    );
    
    wire video_on,p_tick;
    wire [9:0] x, y;
    
    vga_sync vga_sync(clk, reset,Hsync, Vsync, video_on, p_tick,x, y);

endmodule