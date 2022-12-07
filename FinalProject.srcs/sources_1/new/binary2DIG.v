`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2022 10:16:39 PM
// Design Name: 
// Module Name: binary2DIG
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


module binary2DIG(
    input signed [15:0] A,B,data_in,
    input [1:0]state,
    input clk,div0,
    output [3:0]D3,D2,D1,D0,
    output NEG,
    output isNan
    );
    
    reg signed [15:0]data;
    reg Nan;
    always@(A|B|state)begin
    case(state)
        2'b00: data<=A;
        2'b01: data<=16'd8888;
        2'b10: data<=B;
        2'b11: data<=data_in;
    endcase
    end
    
    numberCounter numberCounter(clk,data,D3,D2,D1,D0);
    
    assign NEG = (A[15]==1&&state==2'b00)||
    (B[15]==1&&state==2'b10)||
    (data_in[15]==1&&state==2'b11);
    
    assign isNan = (A > 16'sd9999 && state==2'b00)||(A < -16'sd9999 && state==2'b00)||
    (B > 16'sd9999 && state==2'b10)||(B < -16'sd9999 && state==2'b10)||
    (data_in > 16'sd9999 && state==2'b11)||(data_in < -16'sd9999 && state==2'b11)||
    (div0&&state==2'b11);
endmodule
