// Code your testbench here
// or browse Examples


module cu_testbench();
  
  reg [6:0] operation;
  
  wire ALUSrc;
  wire MemtoReg;
  wire RegWrite;
  wire MemRead;
  wire MemWrite;
  wire Branch;
  wire Jump;
  wire Jalr;
  wire [1:0] ALUOp;
  
  cu u0(operation, ALUSrc, MemtoReg,RegWrite, MemRead, MemWrite, Branch, Jump, Jalr, ALUOp);
  
  initial begin
    $monitor("%b\t\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%b", operation, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump, Jalr, ALUOp);
    
    #5 operation = 7'b0110011;
    
    #5 operation = 7'b0000011;
    
    #5 operation = 7'b1100111;
    
    #5 operation = 7'b0010011;
    
    #5 operation = 7'b0100011;
    
    #5 operation = 7'b1100011;
    
    #5 operation = 7'b1101111;

    
  end
  
endmodule