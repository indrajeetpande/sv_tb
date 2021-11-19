class and_sco;
    mailbox mon2sco;
    and_tx tx,refa;

    function new(mailbox mon2sco);
        this.mon2sco=mon2sco;
    endfunction

    task run();
        forever begin
        mon2sco.get(tx);
        refa=new();
        refa.a=1;
        refa.b=1;
        refa.y=refa.a & refa.b;
       // tx=new();
        if(tx.y==refa.y)
            $display("sco pass tx=%p refa=%p",tx,refa);
        else
            $display("sco error tx=%p refa=%p",tx,refa);
    end
    endtask
endclass
