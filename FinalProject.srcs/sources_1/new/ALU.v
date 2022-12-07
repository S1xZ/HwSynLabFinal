`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2022 10:13:40 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
           input [15:0] A,B,  // ALU 16-bit Inputs                 
           input [1:0] ALU_Sel,// ALU Selection
           input clk,
           output [15:0] ALU_Out, // ALU 16-bit Output
           output div0
    );
    
    reg [15:0] ALU_Result=0;
    wire [16:0] tmp;
    assign ALU_Out = ALU_Result; // ALU out
    assign div0=(B==0&&ALU_Sel==2'b11);
    always @(posedge clk)
    begin
        case(ALU_Sel)
        2'b00: // Addition
           ALU_Result <= A + B ; 
        2'b01: // Subtraction
           ALU_Result <= A - B ;
        2'b10: // Multiplication
           ALU_Result <= A * B;
        2'b11: // Division
           ALU_Result <= A/B;
          default: ALU_Result = A + B ; 
        endcase
    end

endmodule
