`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2021 09:59:35 PM
// Design Name: 
// Module Name: uart
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

module uart(
    input clk,
    input RsRx,
    output [7:0]data_out,
    output received
    );
    
//    reg [7:0] data_out_buffer;
//    wire [7:0] data_out_w;
//    wire received_w;
    wire baud;
    
    
    baudrate_gen baudrate_gen(clk, baud);
    uart_rx receiver(baud, RsRx, received, data_out);
    
//    always@(posedge received_w)
//    begin
//    data_out_buffer<=data_out_w;
//    end
    
//    assign data_out = data_out_buffer;
//    assign received = received_w;
    
endmodule