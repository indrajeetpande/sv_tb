class or_env;
    or_gen gen;
    or_bfm bfm;
  //  or_mon mon;
  //  or_sco sco;
    virtual or_inf vif;
    string testname;
    mailbox gen2bfm, mon2sco;
    function new(virtual or_inf vif,string testname);
        gen2bfm=new();
        mon2sco=new();
        gen=new(testname,gen2bfm);
        bfm=new(gen2bfm, vif);
      //  mon=new(vif, mon2sco);
       // sco=new(mon2sco);
        this.vif=vif;
        this.testname=testname;
    endfunction

    task run();
        fork
            gen.run();
            bfm.run();
//            mon.run(vif, mon2sco);
//            sco.run(mon2sco);
        join
    endtask

endclass

