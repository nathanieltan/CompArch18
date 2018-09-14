`include "hw1.v"

module demorgan_test ();

    reg A, B;
    wire nA, nB, nAandnB, nAornB, AnandB, AnorB;

    demorgan dut(A,B,nA,nB,nAandnB,nAornB, AnandB, AnorB);

    initial begin
        $display("A B | ~A ~B | ~A~B   | ~A+~B  | ~(A+B)  | ~(AB)");
	A=0;B=0; #1
	$display("%b %b |  %b  %b |    %b   |    %b   |    %b    |    %b  ", A,B, nA, nB, nAandnB, nAornB, AnorB, AnandB);
	A=0; B=1; #1
	$display("%b %b |  %b  %b |    %b   |    %b   |    %b    |    %b  ", A,B, nA, nB, nAandnB, nAornB, AnorB, AnandB);
 	A=1;B=0; #1
 	$display("%b %b |  %b  %b |    %b   |    %b   |    %b    |    %b  ", A,B, nA, nB, nAandnB, nAornB, AnorB, AnandB);
 	A=1;B=1; #1
 	$display("%b %b |  %b  %b |    %b   |    %b   |    %b    |    %b  ", A,B, nA, nB, nAandnB, nAornB, AnorB, AnandB);
    end endmodule
