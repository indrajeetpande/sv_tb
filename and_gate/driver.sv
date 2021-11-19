class and_driv;
    and_tx tx;
    mailbox gen2bfm;
    virtual and_inf vif;

    function new(virtual and_inf vif, mailbox gen2bfm);
        this.vif=vif;
        this.gen2bfm=gen2bfm;
    endfunction


    task run();
        forever begin
        gen2bfm.get(tx);
              $display("inside driver tx=%p",tx);
              drive_dut(tx);
              tx.print();
    end
    endtask

    task drive_dut(and_tx tx);
          #1;
         vif.a=tx.a;
        vif.b=tx.b;
        #5
        tx.y=vif.y;
    endtask
endclass
