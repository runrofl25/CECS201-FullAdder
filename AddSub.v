`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2019 04:26:18 PM
// Design Name: 
// Module Name: AddSub_tf
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


module AddSub_tf(  );

reg [7:0] A;
reg [7:0] B;
reg     ADD0_SUB1;
wire [7:0] SD;
wire    Co;
wire    Err;

integer    i;

AddSub AddSub(
    .A(A),
    .B(B),
    .Ci(ADD0_SIB1),
    .SD(SD),
    .Co(Co),
    .Err(Err)
    );
initial begin
    for(i = 0; i <128; i=i+1)
        begin
        ADD0_SUB1 = $random;
        A         = $random;
        B         = $random;
        
        if(i==7) begin
            A = 1;
            B = 8'hFF;
            ADD0_SUB1 = 0;
            end
        #100
        case(ADD0_SUB1)
            1'b0: if (SD !== A+B)
                $display("Error: SD = %d A = %d B = %d Ci = %d",SD, A, B, ADD0_SUB1);
            1'b1: if (SD !== A-B)
                $display("Error: SD = %d A = %d B = %d Ci = %d",SD,A,B, ADD0_SUB1);
            endcase
        end
    end
endmodule
