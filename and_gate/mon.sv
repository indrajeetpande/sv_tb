class and_mon;
    mailbox mon2sco;
    virtual and_inf vif;
    and_tx tx;
    function new(virtual and_inf vif, mailbox mon2sco);
        this.vif=vif;
        this.mon2sco=mon2sco;
    endfunction

    task run();
        forever begin
        tx=new();
        tx.a=vif.a;
        tx.b=vif.b;
        #5
        tx.y=vif.y;
        $display("inside mon tx=%p",tx);
        mon2sco.put(tx);
    end
    endtask
endclass
