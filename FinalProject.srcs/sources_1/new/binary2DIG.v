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
    input [15:0] A,B,data_in,
    input [1:0]state,
    input carry,
    output [3:0]D3,D2,D1,D0,
    output NEG,
    output isNan
    );
    
    reg [15:0]data;
    
    always@(state)begin
    case(state)
        2'b00: data<=A;
        2'b01: data<=16'h8888;
        2'b10: data<=B;
        2'b11: data<=data_in;
    endcase
    end
    
    assign D3 = data / 1000;
    assign D2 = (data / 100) - (data / 1000);
    assign D1 = (data / 10) - (data / 100) - (data / 1000);
    assign D0 = data - (data / 10) - (data / 100) - (data / 1000);
    assign NEG = data < 0;
    assign isNan = carry&&state[1]&&state[0];
    
endmodule
