class and_tx;
    rand bit a;
    rand bit b;
    bit y;

    function void print();
        $display("a=%0d b=%0d y=%0d",a,b,y);
    endfunction
endclass
