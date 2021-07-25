program system2x2(input,output);

var a,b,c,d,e,f,d1,d2,g,x,y:real;

begin
  writeln('ax+by=c');
  writeln('dx+ey=f');
  writeln('dwse ta a,b,c,d,e,f');
  readln(a,b,c,d,e,f);
  g:=a*e-b*d;
  d1:=c*e-b*f;
  d2:=a*f-d*c;
  if g<>0 then begin
    x:=d1/g;y:=d2/g;
    writeln('x=',x:4:2,' y=',y:4:2);
  end
  else begin
    if (d1<>0) and (d2<>0) then
      writeln('to sistima einai adynato')
    else if (d1=0) and (d2=0) then
      writeln('to sistima ehei apeires lyseis')
    else if (d1=0) and (d2<>0) then
      writeln('x=',c/a,',y opoiadipote timh')
    else writeln('y=',c/b,',x opoiadipote timh');
  end;
  readln;
end.

