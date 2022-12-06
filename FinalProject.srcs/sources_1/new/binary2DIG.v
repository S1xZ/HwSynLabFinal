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
    input [15:0] data,
    input carry,
    output [3:0]D3,D2,D1,D0,
    output NEG,
    output isNan
    );
    
    assign D3 = data % 1000;
    assign D2 = data % 100 - data % 1000;
    assign D1 = data % 10 - data % 100 - data % 1000;
    assign D0 = data - data % 10 - data % 100 - data % 1000;
    assign NEG = data < 0;
    assign isNan = carry;
    
endmodule
