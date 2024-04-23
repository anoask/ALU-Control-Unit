// Code your design here
`timescale 1ns/1ns

module alu(
  //inputs
  input signed [3:0] operation,
  input  [31:0] A,
  input  [31:0] B,
  //output
  output reg signed [31:0] ALUResult
);
  
  //code
always @(*) begin
  case(operation)
    //case statements
    4'b0010: ALUResult = A + B;
    
    4'b0110: ALUResult = A - B;
        
    4'b0111: ALUResult = A * B;
        
    4'b1111: ALUResult = A / B;
    
    4'b0100: ALUResult = A << B;
    
    4'b1100: ALUResult = A >> B;
    
    4'b1110: ALUResult = A >>> B;
    
    4'b0000: ALUResult = A & B;
    
    4'b0001: ALUResult = A | B;
    
    4'b0011: ALUResult = A ^ B; 
    
    4'b1000: ALUResult = A == B;
    
    4'b1001: ALUResult = A != B;
    
    4'b1010: ALUResult = A < B;
    
    4'b1011: ALUResult = A >= B;
    
    default: ALUResult = 0;
      
  endcase
end  
endmodule