// Decoder circuit

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Your decoder code here
    wire naddress0;
    wire naddress1;
    nand #50 inv0(naddress0,address0,address0); // Takes address 0 as input and outputs inverted signal naddress0
    nand #50 inv1(naddress1,address1,address1); 

    and #50 and0(out0, naddress0, naddress1, enable); // And gate of inverted input signals to output out0
    and #50 and1(out1, address0, naddress1, enable);
    and #50 and2(out2, naddress0, address1, enable);
    and and3(out3, address0, address1, enable);
endmodule

