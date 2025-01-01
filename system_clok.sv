/*Assume System Consist of two global signals resetn and clk. 
Use an initial block to initialize clk to 1'b0 and resetn to 1'b0. 
User must keep resetn in an active low state for 60 nSec at the start of the simulation and then make active high. 
Assume `timescale 1ns/1psShare your SV Code.
*/
`timescale 1ns/1ps
module assgn1_tb(
);
 //Requirement
  // two global signals resetn & clk 
  reg resetn;
  reg clk;
  
  initial begin
  clk= 1'b0; 
  resetn = 1'b0;
  end
  
  // resetn is low initially and after 60 nSec it is high  
  
  initial begin
  resetn = 1'b0;
  #60;
  resetn = 1'b1;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  initial begin
  #200;
    $finish();
  end
  
endmodule









