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
    input received,reset,
    output [15:0] A,B,
    output [1:0] opcode,
    output en
    );
    
    reg [1:0]pos=0;
    reg [1:0]state=0;
    reg [15:0]A_reg,B_reg;
    reg [1:0]opcode_reg;
    
    always@(posedge received)begin
        case(data)
            //0
            8'h30: if(pos==2'b11) begin
                pos<=0;
                if(state==2'b00)
                A_reg<=0;
                else if (state==2'b10)
                B_reg<=0;
            end else
                pos <= pos+1;
                
            //1
            8'h31: if(pos==2'b11) begin
                pos<=0;
                A_reg<=0;
            end else begin
                if(state==2'b00)
                A_reg <= A_reg+10**state;
                else if (state==2'b10)
                B_reg <= B_reg+10**state;
                pos <= pos+1; //NUM
            end
            
            //2
            8'h32: if(pos==2'b11) begin
                pos<=0;
                A_reg<=0;
            end else begin
                if(state==2'b00)
                A_reg <= A_reg+2*(10**state);
                else if (state==2'b10)
                B_reg <= B_reg+2*(10**state);
                pos <= pos+1; //NUM
            end
            
            //3
            8'h33: if(pos==2'b11) begin
                pos<=0;
                A_reg<=0;
            end else begin
                if(state==2'b00)
                A_reg <= A_reg+3*(10**state);
                else if (state==2'b10)
                B_reg <= B_reg+3*(10**state);
                pos <= pos+1; //NUM
            end
            
            //4
            8'h34: if(pos==2'b11) begin
                pos<=0;
                A_reg<=0;
            end else begin
                if(state==2'b00)
                A_reg <= A_reg+4*(10**state);
                else if (state==2'b10)
                B_reg <= B_reg+4*(10**state);
                pos <= pos+1; //NUM
            end
            
            //5
            8'h35: if(pos==2'b11) begin
                pos<=0;
                A_reg<=0;
            end else begin
                if(state==2'b00)
                A_reg <= A_reg+5*(10**state);
                else if (state==2'b10)
                B_reg <= B_reg+5*(10**state);
                pos <= pos+1; //NUM
            end
            
            //6
            8'h36: if(pos==2'b11) begin
                pos<=0;
                A_reg<=0;
            end else begin
                if(state==2'b00)
                A_reg <= A_reg+6*(10**state);
                else if (state==2'b10)
                B_reg <= B_reg+6*(10**state);
                pos <= pos+1; //NUM
            end
            
            //7
            8'h37: if(pos==2'b11) begin
                pos<=0;
                A_reg<=0;
            end else begin
                if(state==2'b00)
                A_reg <= A_reg+7*(10**state);
                else if (state==2'b10)
                B_reg <= B_reg+7*(10**state);
                pos <= pos+1; //NUM
            end
            
            //8
            8'h38: if(pos==2'b11) begin
                pos<=0;
                A_reg<=0;
            end else begin
                if(state==2'b00)
                A_reg <= A_reg+8*(10**state);
                else if (state==2'b10)
                B_reg <= B_reg+8*(10**state);
                pos <= pos+1; //NUM
            end
            
            //9
            8'h39: if(pos==2'b11) begin
                pos<=0;
                A_reg<=0;
            end else begin
                if(state==2'b00)
                A_reg <= A_reg+9*(10**state);
                else if (state==2'b10)
                B_reg <= B_reg+9*(10**state);
                pos <= pos+1; //NUM
            end
            
            //RETURN
            8'h0a: if(state!=2'b11)state<=state+1;
            
            //+
            8'h2b: if(state==2'b01) opcode_reg<=2'b00;
            
            //-
            8'h2d: if(state==2'b01) opcode_reg<=2'b01;
            
            //*
            8'h2a: if(state==2'b01) opcode_reg<=2'b10;
            
            //"/"
            8'h2f: if(state==2'b01) opcode_reg<=2'b11;
            endcase
    end
    
    assign en = state==2'b11;
    assign A = A_reg;
    assign B = B_reg;
    assign opcode = opcode_reg;
    
endmodule
