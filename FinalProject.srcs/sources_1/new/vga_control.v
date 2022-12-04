`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 08:49:02 PM
// Design Name: 
// Module Name: vga_control
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


////////////////////////////////////////////////
module vga_control(
    input wire clk,
    input wire [11:0] sw,
    input wire [1:0] push,
    output wire hsync, vsync,
    output wire [11:0] rgb
	);
	
	parameter WIDTH = 640;
	parameter HEIGHT = 480;
	
	// register for Basys 2 8-bit RGB DAC 
	reg [11:0] rgb_reg;
	reg reset = 0;
	wire [9:0] x, y;
	
	// video status output from vga_sync to tell when to route out rgb signal to DAC
	wire video_on;
	wire p_tick;

    // instantiate vga_sync
    vga_sync vga_sync_unit (
        .clk(clk), .reset(reset), 
        .hsync(hsync), .vsync(vsync), .video_on(video_on), .p_tick(p_tick), 
        .x(x), .y(y)
        );
endmodule
