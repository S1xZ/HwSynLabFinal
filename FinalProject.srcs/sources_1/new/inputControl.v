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
    output [1:0] state,
    output en
    );
    
    reg [1:0]pos=0;
    reg [1:0]state=0;
    reg [15:0]A_reg,B_reg=0;
    reg [1:0]opcode_reg=0;
    reg executed=0;
    always@(posedge clk)begin
        if(reset)begin
            pos<=0;
            state<=0;
            A_reg<=0;
            B_reg<=0;
            opcode_reg<=0;
        end
        if(received)begin
        case(data)
              8'h30: begin A_reg<=0;B_reg<=90;  executed=0; end
              8'h31: begin A_reg<=10;B_reg<=80;  executed=0; end
              8'h32: begin A_reg<=200;B_reg<=70;  executed=0; end
              8'h33: begin A_reg<=300;B_reg<=60;  executed=0; end
              8'h34: begin A_reg<=4000;B_reg<=50;  executed=0; end
              8'h35: begin A_reg<=5000;B_reg<=40;  executed=0; end
              8'h36: begin A_reg<=6000;B_reg<=30;  executed=0; end
              8'h37: begin A_reg<=7000;B_reg<=20;  executed=0; end
              8'h38: begin A_reg<=8000;B_reg<=10;  executed=0; end
              8'h39: begin A_reg<=9000;B_reg<=0;  executed=0; end
              
//            //0
//            8'h30: if(pos==2'b11) begin
//                pos<=0;
//                if(state==2'b00)
//                A_reg<=0;
//                else if (state==2'b10)
//                B_reg<=0;
//            end else
//                pos <= pos+1;
                
//            //1
//            8'h31: if(pos==2'b11) begin
//                pos<=0;
//                A_reg<=0;
//            end else begin
//                if(state==2'b00)
//                A_reg <= A_reg+10**pos;
//                else if (state==2'b10)
//                B_reg <= B_reg+10**pos;
//                pos <= pos+1; //NUM
//            end
            
//            //2
//            8'h32: if(pos==2'b11) begin
//                pos<=0;
//                A_reg<=0;
//            end else begin
//                if(state==2'b00)
//                A_reg <= A_reg+2*(10**pos);
//                else if (state==2'b10)
//                B_reg <= B_reg+2*(10**pos);
//                pos <= pos+1; //NUM
//            end
            
//            //3
//            8'h33: if(pos==2'b11) begin
//                pos<=0;
//                A_reg<=0;
//            end else begin
//                if(state==2'b00)
//                A_reg <= A_reg+3*(10**pos);
//                else if (state==2'b10)
//                B_reg <= B_reg+3*(10**pos);
//                pos <= pos+1; //NUM
//            end
            
//            //4
//            8'h34: if(pos==2'b11) begin
//                pos<=0;
//                A_reg<=0;
//            end else begin
//                if(state==2'b00)
//                A_reg <= A_reg+4*(10**pos);
//                else if (state==2'b10)
//                B_reg <= B_reg+4*(10**pos);
//                pos <= pos+1; //NUM
//            end
            
//            //5
//            8'h35: if(pos==2'b11) begin
//                pos<=0;
//                A_reg<=0;
//            end else begin
//                if(state==2'b00)
//                A_reg <= A_reg+5*(10**pos);
//                else if (state==2'b10)
//                B_reg <= B_reg+5*(10**pos);
//                pos <= pos+1; //NUM
//            end
            
//            //6
//            8'h36: if(pos==2'b11) begin
//                pos<=0;
//                A_reg<=0;
//            end else begin
//                if(state==2'b00)
//                A_reg <= A_reg+6*(10**pos);
//                else if (state==2'b10)
//                B_reg <= B_reg+6*(10**pos);
//                pos <= pos+1; //NUM
//            end
            
//            //7
//            8'h37: if(pos==2'b11) begin
//                pos<=0;
//                A_reg<=0;
//            end else begin
//                if(state==2'b00)
//                A_reg <= A_reg+7*(10**pos);
//                else if (state==2'b10)
//                B_reg <= B_reg+7*(10**pos);
//                pos <= pos+1; //NUM
//            end
            
//            //8
//            8'h38: if(pos==2'b11) begin
//                pos<=0;
//                A_reg<=0;
//            end else begin
//                if(state==2'b00)
//                A_reg <= A_reg+8*(10**pos);
//                else if (state==2'b10)
//                B_reg <= B_reg+8*(10**pos);
//                pos <= pos+1; //NUM
//            end
            
//            //9
//            8'h39: if(pos==2'b11) begin
//                pos<=0;
//                A_reg<=0;
//            end else begin
//                if(state==2'b00)
//                A_reg <= A_reg+9*(10**pos);
//                else if (state==2'b10)
//                B_reg <= B_reg+9*(10**pos);
//                pos <= pos+1; //NUM
//            end
            
            //SPACE
            8'h20:begin
                if(!executed)begin
                executed=1;
                if(state!=2'b11)
                    state<=state+1;
                end
            end
            
            //+
            8'h2b:begin opcode_reg<=2'b00; executed=0; end
            
            //-
            8'h2d:begin  opcode_reg<=2'b01; executed=0; end
            
            //*
            8'h2a:begin  opcode_reg<=2'b10; executed=0; end
            
            //"/"
            8'h2f:begin  opcode_reg<=2'b11; executed=0; end
            endcase
       end
    end
    
    assign en = 1;
    assign A = A_reg;
    assign B = B_reg;
    assign opcode = opcode_reg;
    
endmodule
