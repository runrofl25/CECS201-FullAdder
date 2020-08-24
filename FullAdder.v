`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2019 03:24:49 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(A,B,Ci,S,Co);
input A, B;
input Ci;
output S;
output Co;

wire S, Co;

assign S = A ^ B ^ Ci;
assign Co = A&B | A&Ci | B&Ci;


endmodule
