program nomismata(input,output);

  var
    x,n:longint;

  begin
    writeln('dwse to poso');
    readln(n);
    x:=n div 10000;
    writeln(x,' ›œ¡˜®å¢ ˜¨˜');
    n:=n mod 10000;
    x:=n div 5000;
    writeln(x,' §œ¤«¦®å¢ ˜¨˜');
    n:=n mod 5000;
    x:=n div 1000;
    writeln(x,' ® ¢ á¨ ¡˜');
    n:=n mod 1000;
    x:=n div 500;
    writeln(x,' §œ¤«˜¡¦©á¨ ¡˜');
    n:=n mod 500;
    x:=n div 200;
    writeln(x,' › ˜¡¦©á¨ ¡˜');
    n:=n mod 200;
    x:=n div 100;
    writeln(x,' ¡˜«¦©«á¨ ¡˜');
    n:=n mod 100;
    x:=n div 50;
    writeln(x,' §œ¤ž¤«á¨ ¡˜');
    n:=n mod 50;
    x:=n div 20;
    writeln(x,' œ ¡¦©á¨ ¡˜');
    n:=n mod 20;
    x:=n div 10;
    writeln(x,' ›œ¡á¨ ¡˜');
    n:=n mod 10;
    x:=n div 5;
    writeln(x,' «á¢ž¨˜');
    n:=n mod 5;
    x:=n div 2;
    writeln(x,' ›å­¨˜š¡˜');
    n:=n mod 2;
    x:=n div 1;
    writeln(x,' ›¨˜®£âª');
    readln;
  end.