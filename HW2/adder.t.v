// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    structuralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin
        // Your test code here
    $dumpfile("adder.vcd");
    $dumpvars();

    $display("Cin A B | Sum Cout | Expec Sum | Expec Cout");
    a=0;b=0;carryin=0; #1000 
    $display("%b   %b %b | %b    %b   | 0         | 0", carryin, a, b, sum, carryout);
    a=0;b=0;carryin=1; #1000 
    $display("%b   %b %b | %b    %b   | 1         | 0", carryin, a, b, sum, carryout);
    a=0;b=1;carryin=0; #1000 
    $display("%b   %b %b | %b    %b   | 1         | 0", carryin, a, b, sum, carryout);
    a=0;b=1;carryin=1; #1000 
    $display("%b   %b %b | %b    %b   | 0         | 1", carryin, a, b, sum, carryout);
    a=1;b=0;carryin=0; #1000 
    $display("%b   %b %b | %b    %b   | 1         | 0", carryin, a, b, sum, carryout);
    a=1;b=0;carryin=1; #1000 
    $display("%b   %b %b | %b    %b   | 0         | 1", carryin, a, b, sum, carryout);
    a=1;b=1;carryin=0; #1000 
    $display("%b   %b %b | %b    %b   | 0         | 1", carryin, a, b, sum, carryout);
    a=1;b=1;carryin=1; #1000 
    $display("%b   %b %b | %b    %b   | 1         | 1", carryin, a, b, sum, carryout);
    $finish(); 
    end
endmodule
