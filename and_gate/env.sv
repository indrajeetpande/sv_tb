class and_env;
   and_gen gen;
   and_driv driv;
   and_mon mon;
   and_sco sco;
   mailbox gen2bfm;
   mailbox mon2sco;
   virtual and_inf vif;
   
   function new(virtual and_inf vif, string testname);
       gen2bfm=new();
       mon2sco=new();
        gen=new(testname,gen2bfm);
       driv=new(vif,gen2bfm);
       mon=new(vif,mon2sco);
       sco=new(mon2sco);
       
   endfunction


   task run();
       fork
       gen.run();
       driv.run();
       mon.run();
       sco.run();
   join
   endtask

endclass
