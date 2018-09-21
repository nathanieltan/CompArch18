// Multiplexer circuit

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Your multiplexer code here
    wire naddress0;
    wire naddress1;

    wire out0;
    wire out1;
    wire out2;
    wire out3;
    
    nand #50 inv0(naddress0,address0,address0);
    nand #50 inv1(naddress1,address1,address1);

    and #50 and0(out0, in0, naddress0, naddress1);
    and #50 and1(out1, in1, address0, naddress1);
    and #50 and2(out2, in2, naddress0, address1);
    and #50 and3(out3, in3, address0, address0);
    
    or #50 orOut(out, out0, out1, out2, out3);
endmodule

