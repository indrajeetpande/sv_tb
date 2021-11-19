class and_gen;
   and_tx tx;
   string testname;
   mailbox gen2bfm;

   function new(string testname,mailbox gen2bfm);
       this.gen2bfm=gen2bfm;
       this.testname=testname;
   endfunction

    task run();
        $display("inside gen");
    
        case(testname)
        "first":begin
                    tx=new();
                    tx.randomize() with{a==1; b==1;};
                    tx.print();
                    gen2bfm.put(tx);
                end
        endcase
        
    endtask

endclass
   
