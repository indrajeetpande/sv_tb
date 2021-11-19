class or_gen;

    or_tx tx;
    string testname;
    mailbox gen2bfm;

    function new(string testname,mailbox gen2bfm);
        this.testname=testname;
        this.gen2bfm=gen2bfm;
    endfunction


    task run();
        case(testname)
            "first":begin
                    $display("inside generator");
                    tx=new();
                    tx.randomize with {a==1; b==1;};
                    tx.print();
                    gen2bfm.put(tx);
                end
        endcase
    endtask
endclass
