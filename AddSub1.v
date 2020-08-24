`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2019 04:19:58 PM
// Design Name: 
// Module Name: AddSub
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


module AddSub1(
    input [7:0] A,
    input [7:0] B,
    input Ci,
    output [7:0] SD,
    output Co,
    output Err
    );
    
    wire [7:0] Bnew;
    wire       Add;
    wire       Sub;
    
    assign Add = ~Ci;
    assign Sub = Ci;
    
    assign Bnew = (Ci) ?  ~B: B;
    
    assign Err = (A[7] & B[7] & Add & ~ SD[7]) |
                (~A[7] & ~B[7] & Sub & SD[7]);
                
    FA8 FA8 (
    .A(A[7:0]),
    .B(Bnew[7:0]),
    .Ci(Ci),
    .S(SD[7:0]),
    .Co(Co)
    );
endmodule
