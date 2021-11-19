program and_test(and_inf vif);
    and_env env;
    string testname;
    
    initial begin
        $value$plusargs("testname=%s",testname);
        env=new(vif,testname);
        env.run();
    end
endprogram
