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
    output received,
    output RsTx
    );
    
    
    reg en, last_rec;
    reg [7:0] data_in;
    wire [7:0] data_out_w;
    wire sent, received_w, baud;
    
    baudrate_gen baudrate_gen(clk, baud);
    uart_rx receiver(baud, RsRx, received_w, data_out_w);
    uart_tx transmitter(baud, data_in, en, sent, RsTx);
    
    always @(posedge baud) begin
        if (en) en = 0;
        if (~last_rec & received_w) begin
            data_in = data_out_w;
            en = 1;
        end
        last_rec = received_w;
    end
    
    assign data_out = data_in;
    assign received = sent;
    
endmodule