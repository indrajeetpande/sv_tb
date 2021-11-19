class or_tx;
    rand bit a;
    rand bit b;
    bit y;

    function void print();
        $display("a=%d b=%d y=%d",a,b,y);
    endfunction
endclass
