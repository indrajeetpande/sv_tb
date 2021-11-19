module or_top;
  
  or_inf inf();
  or_tb tb(inf);

  or_gate a1(.a(inf.a), .b(inf.b),.y(inf.y));


  initial begin
      #500;
      $finish;
  end
endmodule
