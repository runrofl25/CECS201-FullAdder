`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2019 04:06:54 PM
// Design Name: 
// Module Name: FA8_tf
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
// 8-bit adder test fixture // cecs 201 csulb // john tramel 
module FA8_tf;
reg [7:0] A, B; //input data reg       
reg Ci;   //carry in 
wire [7:0] S;   //sum 
wire      Co;   //carry out 
//variable for test 
integer i; 

//instantiate the design under test 
FA8 FA8 (   
    .A(A),    
    .B(B),    
    .Ci(Ci),    
    .S(S),    
    .Co(Co)    
    );
    //generate the verification stimulus 
initial begin     
    for (i=0;i<8;i=i+1)        
    begin        
    Ci = $random;        
    A = $random;        
    B = $random;        
    if (i==7) begin           
        A = 1;            
        B = 8'hFF;           
        end        
    #100        
    if (S !== A+B+Ci)           
        begin           
        $write("Error S = %d",S);           
        $write(" A = %d B = %d",A,B);           
        $display("Ci = %d",Ci);           
        end       
    end    
end
endmodule
