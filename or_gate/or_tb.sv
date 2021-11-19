program or_tb(or_inf inf);

    string testname;
    or_env env;
    initial begin
        $value$plusargs("test=%s",testname);
        env=new(inf, testname);
        env.run();
    end
endprogram
