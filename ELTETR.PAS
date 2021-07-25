program eltetr(input,output);
  const
    max=30;
  type
    arraytype=array [1..max] of real;

  var
    x,y,i,j:integer;
    n,a1,a2,z:real;
    A,B,G,D,E,F:arraytype;

  begin
    writeln('dwse ta x');
    x:=0;
    repeat
      x:=x+1;
      read(n);
      A[x]:=n;
    until eof;
    writeln('dwse ta y');
    y:=0;
    repeat
      y:=y+1;
      read(n);
      B[y]:=n;
    until eof;
    x:=x-1;y:=y-1;
    G[1]:=A[1]+A[2];
    for i:=2 to x-1 do
      G[i]:=G[i-1]+A[i+1];
    D[1]:=B[1]+B[2];
    for i:=2 to y-1 do
      D[i]:=D[i-1]+B[i+1];
    E[1]:=sqr(A[1])+sqr(A[2]);
    for i:=2 to x-1 do
      E[i]:=E[i-1]+sqr(A[i+1]);
    if (x<>y) then
      writeln('yparxei lathos')
    else
    begin
        F[1]:=A[1]*B[1]+A[2]*B[2];
        for i:=2 to x-1 do
          F[i]:=F[i-1]+A[i+1]*B[i+1];
        z:=(x*E[x-1])-(sqr(G[x-1]));
        a1:=(E[x-1]*D[y-1]-G[x-1]*F[x-1])/z;
        a2:=(x*F[x-1]-G[x-1]*D[y-1])/z;
        writeln('h eksiswsi einai ths morfhs');
        writeln;
        writeln(' y= ',a1:8:3,'+',a2:8:3,'x');
    end;
    readln;
  end.