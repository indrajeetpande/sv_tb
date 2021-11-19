class or_bfm;
    or_tx tx;

    mailbox gen2bfm;
    virtual or_inf vif;

    function new(mailbox gen2bfm, virtual or_inf vif);
        this.gen2bfm=gen2bfm;
        this.vif=vif;
    endfunction


    task run();
        forever begin
            $display("inside driver");
            gen2bfm.get(tx);
            vif.a=tx.a;
            vif.b=tx.b;
            #5;
            tx.y=vif.y;
            tx.print();
        end
    endtask
endclass
