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
    reg [2:0] pos=0;
    reg [3:0] A0,A1,A2,A3,B0,B1,B2,B3;
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
        pos<=0;
        A0<=0;
        A1<=0;
        A2<=0;
        A3<=0;
        
        B0<=0;
        B1<=0;
        B2<=0;
        B3<=0;
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
            //0
            8'h30: 
            if(state==2'b00&&pos==0)begin A0<=0; pos<=pos+1; end
            else if (state==2'b00&&pos==1) begin A1<=0; pos<=pos+1; end
            else if (state==2'b00&&pos==2) begin A2<=0; pos<=pos+1; end
            else if (state==2'b00&&pos==3) begin A3<=0; pos<=0; end
            
            else if(state==2'b10&&pos==0) begin B0<=0; pos<=pos+1; end
            else if (state==2'b10&&pos==1) begin B1<=0; pos<=pos+1; end
            else if (state==2'b10&&pos==2) begin B2<=0; pos<=pos+1; end
            else if (state==2'b10&&pos==3) begin B3<=0; pos<=0; end
            
            //1
            8'h31:
            if(state==2'b00&&pos==0)begin A0<=1; pos<=pos+1; end
            else if (state==2'b00&&pos==1) begin A1<=1; pos<=pos+1; end
            else if (state==2'b00&&pos==2) begin A2<=1; pos<=pos+1; end
            else if (state==2'b00&&pos==3) begin A3<=1; pos<=0; end
            
            else if(state==2'b10&&pos==0) begin B0<=1; pos<=pos+1; end
            else if (state==2'b10&&pos==1) begin B1<=1; pos<=pos+1; end
            else if (state==2'b10&&pos==2) begin B2<=1; pos<=pos+1; end
            else if (state==2'b10&&pos==3) begin B3<=1; pos<=0; end
            
            //2
            8'h32:
            if(state==2'b00&&pos==0)begin A0<=2; pos<=pos+1; end
            else if (state==2'b00&&pos==1) begin A1<=2; pos<=pos+1; end
            else if (state==2'b00&&pos==2) begin A2<=2; pos<=pos+1; end
            else if (state==2'b00&&pos==3) begin A3<=2; pos<=0; end
            
            else if(state==2'b10&&pos==0) begin B0<=2; pos<=pos+1; end
            else if (state==2'b10&&pos==1) begin B1<=2; pos<=pos+1; end
            else if (state==2'b10&&pos==2) begin B2<=2; pos<=pos+1; end
            else if (state==2'b10&&pos==3) begin B3<=2; pos<=0; end
            
//          //3
            8'h33:
            if(state==2'b00&&pos==0)begin A0<=3; pos<=pos+1; end
            else if (state==2'b00&&pos==1) begin A1<=3; pos<=pos+1; end
            else if (state==2'b00&&pos==2) begin A2<=3; pos<=pos+1; end
            else if (state==2'b00&&pos==3) begin A3<=3; pos<=0; end
            
            else if(state==2'b10&&pos==0) begin B0<=3; pos<=pos+1; end
            else if (state==2'b10&&pos==1) begin B1<=3; pos<=pos+1; end
            else if (state==2'b10&&pos==2) begin B2<=3; pos<=pos+1; end
            else if (state==2'b10&&pos==3) begin B3<=3; pos<=0; end
            
            //4
            8'h34:
            if(state==2'b00&&pos==0)begin A0<=4; pos<=pos+1; end
            else if (state==2'b00&&pos==1) begin A1<=4; pos<=pos+1; end
            else if (state==2'b00&&pos==2) begin A2<=4; pos<=pos+1; end
            else if (state==2'b00&&pos==3) begin A3<=4; pos<=0; end
            
            else if(state==2'b10&&pos==0) begin B0<=4; pos<=pos+1; end
            else if (state==2'b10&&pos==1) begin B1<=4; pos<=pos+1; end
            else if (state==2'b10&&pos==2) begin B2<=4; pos<=pos+1; end
            else if (state==2'b10&&pos==3) begin B3<=4; pos<=0; end
            
            //5
            8'h35:
            if(state==2'b00&&pos==0)begin A0<=5; pos<=pos+1; end
            else if (state==2'b00&&pos==1) begin A1<=5; pos<=pos+1; end
            else if (state==2'b00&&pos==2) begin A2<=5; pos<=pos+1; end
            else if (state==2'b00&&pos==3) begin A3<=5; pos<=0; end
            
            else if(state==2'b10&&pos==0) begin B0<=5; pos<=pos+1; end
            else if (state==2'b10&&pos==1) begin B1<=5; pos<=pos+1; end
            else if (state==2'b10&&pos==2) begin B2<=5; pos<=pos+1; end
            else if (state==2'b10&&pos==3) begin B3<=5; pos<=0; end
            
            //6
            8'h36:
            if(state==2'b00&&pos==0)begin A0<=6; pos<=pos+1; end
            else if (state==2'b00&&pos==1) begin A1<=6; pos<=pos+1; end
            else if (state==2'b00&&pos==2) begin A2<=6; pos<=pos+1; end
            else if (state==2'b00&&pos==3) begin A3<=6; pos<=0; end
            
            else if(state==2'b10&&pos==0) begin B0<=6; pos<=pos+1; end
            else if (state==2'b10&&pos==1) begin B1<=6; pos<=pos+1; end
            else if (state==2'b10&&pos==2) begin B2<=6; pos<=pos+1; end
            else if (state==2'b10&&pos==3) begin B3<=6; pos<=0; end
            
            //7
            8'h37:
            if(state==2'b00&&pos==0)begin A0<=7; pos<=pos+1; end
            else if (state==2'b00&&pos==1) begin A1<=7; pos<=pos+1; end
            else if (state==2'b00&&pos==2) begin A2<=7; pos<=pos+1; end
            else if (state==2'b00&&pos==3) begin A3<=7; pos<=0; end
            
            else if(state==2'b10&&pos==0) begin B0<=7; pos<=pos+1; end
            else if (state==2'b10&&pos==1) begin B1<=7; pos<=pos+1; end
            else if (state==2'b10&&pos==2) begin B2<=7; pos<=pos+1; end
            else if (state==2'b10&&pos==3) begin B3<=7; pos<=0; end
            
            //8
            8'h38:
            if(state==2'b00&&pos==0)begin A0<=8; pos<=pos+1; end
            else if (state==2'b00&&pos==1) begin A1<=8; pos<=pos+1; end
            else if (state==2'b00&&pos==2) begin A2<=8; pos<=pos+1; end
            else if (state==2'b00&&pos==3) begin A3<=8; pos<=0; end
            
            else if(state==2'b10&&pos==0) begin B0<=8; pos<=pos+1; end
            else if (state==2'b10&&pos==1) begin B1<=8; pos<=pos+1; end
            else if (state==2'b10&&pos==2) begin B2<=8; pos<=pos+1; end
            else if (state==2'b10&&pos==3) begin B3<=8; pos<=0; end
            
            //9
            8'h39:
            if(state==2'b00&&pos==0)begin A0<=9; pos<=pos+1; end
            else if (state==2'b00&&pos==1) begin A1<=9; pos<=pos+1; end
            else if (state==2'b00&&pos==2) begin A2<=9; pos<=pos+1; end
            else if (state==2'b00&&pos==3) begin A3<=9; pos<=0; end
            
            else if(state==2'b10&&pos==0) begin B0<=9; pos<=pos+1; end
            else if (state==2'b10&&pos==1) begin B1<=9; pos<=pos+1; end
            else if (state==2'b10&&pos==2) begin B2<=9; pos<=pos+1; end
            else if (state==2'b10&&pos==3) begin B3<=9; pos<=0; end
            
            //SPACE
            8'h20:
            if(state!=2'b11)begin state<=state+1; pos<=0; end
            
            
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
    
    assign A = A0+10*A1+100*A2+1000*A3;
    assign B = B0+10*B1+100*B2+1000*B3;
    assign opcode = opcode_reg;
    assign st = state;
    
endmodule
