module top;

and_inf inf();
and_test tb(inf);
and_gate a1(.a(inf.a),.b(inf.b),.y(inf.y));

initial begin
    #500;
    $finish;
end

endmodule

    
