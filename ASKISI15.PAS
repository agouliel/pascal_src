program askisi15(input,output,fil,pretty);

  var
    fil,pretty:text;
    n:char;
    x,i,j,ol,ag,lg,gr,kena,mikk,peris,b,y:integer;
    a:array [1..200] of integer;
    word:array [1..200,1..20] of char;

begin
  x:=0;
  assign(fil,'l.typ');
  reset(fil);
  assign(pretty,'pretty.typ');
  rewrite(pretty);
  while not eof(fil) do begin
    while not eoln(fil) do begin
      read(fil,n);
      if (n<>' ') and not eoln(fil) then begin
        x:=x+1;
        a[x]:=1;
        word[x,a[x]]:=n;
        while (n<>' ') and not eoln(fil) do begin
          read(fil,n);
          a[x]:=a[x]+1;
          word[x,a[x]]:=n;
          if n=' ' then a[x]:=a[x]-1;
        end;
      end;
    end;
    readln(fil);
  end;
  ol:=0;
  repeat
    ag:=0;
    lg:=ol;
    repeat
      lg:=lg+1;
      ag:=ag+a[lg];
    until (ag+lg-ol-1>60) or (lg=x);
    if lg<>x then begin
      lg:=lg-1;
      gr:=0;
      for i:=(ol+1) to lg do
        gr:=gr+a[i];
      kena:=60-gr;
      mikk:=kena div (lg-ol-1);
      peris:=kena mod (lg-ol-1);
      for b:=1 to a[ol+1] do
        write(pretty,word[ol+1,b]);
      for y:=(ol+2) to lg do begin
        write(pretty,' ':mikk);
        if peris>0 then begin
          write(pretty,' ');
          peris:=peris-1;
        end;
        for j:=1 to a[y] do
          write(pretty,word[y,j]);
      end;
    end
    else begin
      for b:=1 to a[ol+1] do write(pretty,word[ol+1,b]);
      for y:=(ol+2) to lg do begin
        write(pretty,' ');
        for j:=1 to a[y] do
          write(pretty,word[y,j]);
      end
    end;
    ol:=lg;
    writeln(pretty);
  until ol=x;
  close(fil);
  close(pretty);
  readln;
end.