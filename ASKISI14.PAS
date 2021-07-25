program askisi14(input,output,fil);

  const
    wid=39; shift0=40;

  type
    linetype=array [-wid..wid] of char;

  var
    fil:text;
    line:linetype;
    i,n,m,j,bound1,bound2,scale:integer;
    x,deltax:real;
    y:char;

  function f(x:real) :real;
  begin
    f:=(3/exp(x))*sin(3*x);
  end;

  function g(x:real) :real;
  begin
    g:=3/exp(x+1);
  end;

begin
  assign(fil,'m.typ');
  rewrite(fil);
  repeat
    writeln('dwse me ti seira ta oria,to vima kai tin klimaka');
    writeln(fil,'dwse me ti seira ta oria,to vima kai tin klimaka');
    readln(bound1,bound2,deltax,scale);
    writeln(fil,bound1,' ',bound2,' ',deltax:3:2,' ',scale);
    x:=bound1*deltax;
    for j:=-wid to wid do line[j]:=' ';line[0]:='|';
    for i:=bound1 to bound2 do begin
      if i=0 then
        for j:=-wid to wid do line[j]:='-';
      n:=round(scale*f(x));
      m:=round(scale*g(x));
      if abs(n)<wid then line[n]:='*';
      if abs(m)<wid then line[m]:='$';
      for j:=-wid to wid do begin
        write(line[j]);
        write(fil,line[j]);
      end;writeln;writeln(fil);
      for j:=-wid to wid do line[j]:=' ';
      line[0]:='|';
      x:=x+deltax;
    end;
    readln;
    writeln('theleis na sinehiseis;(y/n)');
    readln(y);
  until y='n';
end.
