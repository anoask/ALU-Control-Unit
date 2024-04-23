// Code your testbench here
// or browse Examples


module alu_testbench();
  
  reg signed [3:0] operation;
  reg  [31:0] A;
  reg  [31:0] B;
  
  wire signed [31:0] ALUResult;
  
  alu u0(.operation(operation), .A(A), .B(B), .ALUResult(ALUResult));
  
  initial begin
    $monitor("%b\t%d\t%d\t%d", operation, A, B, ALUResult);
    A = 197;
    B = -237;
    
    #5 operation = 4'b0010;
    
    #5 operation = 4'b0110;
    
    #5 operation = 4'b0111;
    
    #5 operation = 4'b1111;
    
    #5 operation = 4'b0100;
    
    #5 operation = 4'b1100;
    
    #5 operation = 4'b1110;
    
    #5 operation = 4'b0000;
    
    #5 operation = 4'b0001;
    
    #5 operation = 4'b0011;
    
    #5 operation = 4'b1000;
    
    #5 operation = 4'b1001;
    
    #5 operation = 4'b1010;
    
    #5 operation = 4'b1011;
    
  end
  
endmodule