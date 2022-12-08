`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2022 10:49:50 PM
// Design Name: 
// Module Name: inputControl
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


module inputControl(
    input [7:0] data,
    input received,reset,clk,
    output [15:0] A,B,
    output [1:0] opcode,
    output [1:0] st
    );
    
    reg [1:0]state=0;
    reg [2:0] rcd;  
    reg [2:0] rsd;
    reg [15:0]A_reg,B_reg=0;
    reg [1:0]opcode_reg=0;
    
    always @(posedge clk) begin
    rcd <= {rcd[1:0], received};
    rsd <= {rsd[1:0], reset};
    end
    
    always@(posedge clk)begin
        if(rsd[1] & ~rsd[2]) begin//Rise edge of reset
        state<=0;
        A_reg<=0;
        B_reg<=0;
        opcode_reg<=0;
        end
        
        if(rcd[1] & ~rcd[2]) begin //Rise edge of received
        case(data)
//              8'h30: begin A_reg<=0;B_reg<=90;  executed=0; end
//              8'h31: begin A_reg<=10;B_reg<=80;  executed=0; end
//              8'h32: begin A_reg<=200;B_reg<=70;  executed=0; end
//              8'h33: begin A_reg<=300;B_reg<=60;  executed=0; end
//              8'h34: begin A_reg<=4000;B_reg<=50;  executed=0; end
//              8'h35: begin A_reg<=5000;B_reg<=40;  executed=0; end
//              8'h36: begin A_reg<=6000;B_reg<=30;  executed=0; end
//              8'h37: begin A_reg<=7000;B_reg<=20;  executed=0; end
//              8'h38: begin A_reg<=8000;B_reg<=10;  executed=0; end
//              8'h39: begin A_reg<=9000;B_reg<=0;  executed=0; end

            //1
            8'h31: 
            if(state==2'b00&&A_reg+1<=9999) A_reg<=A_reg+1;
            else if (state==2'b10&&B_reg+1<=9999) B_reg<=B_reg+1;
            
            //2
            8'h32: 
            if(state==2'b00&&A_reg+10<=9999) A_reg<=A_reg+10;
            else if (state==2'b10&&B_reg+10<=9999) B_reg<=B_reg+10;
            
            //3
            8'h33:
            if(state==2'b00&&A_reg+100<=9999) A_reg<=A_reg+100;
            else if (state==2'b10&&B_reg+100<=9999) B_reg<=B_reg+100;
            
            //4
            8'h34:
            if(state==2'b00&&A_reg+1000<=9999) A_reg<=A_reg+1000;
            else if (state==2'b10&&B_reg+1000<=9999) B_reg<=B_reg+1000;
            
            //SPACE
            8'h20:
            if(state!=2'b11) state<=state+1;
            
            
            //+
            8'h2b: if(state==2'b01) opcode_reg<=2'b00;
            
            //-
            8'h2d: if(state==2'b01) opcode_reg<=2'b01; 
            
            //*
            8'h2a: if(state==2'b01) opcode_reg<=2'b10;
            
            //"/"
            8'h2f: if(state==2'b01) opcode_reg<=2'b11;
            
            //n
            8'h6e:
            if(state==2'b00)
            A_reg<=A_reg*-1;
            else if(state==2'b10)
            B_reg<=B_reg*-1;
            
            endcase
            end
    end
    
    assign A = A_reg;
    assign B = B_reg;
    assign opcode = opcode_reg;
    assign st = state;
    
endmodule
