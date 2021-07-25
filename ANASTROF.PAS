program anastrofi(input,output);

  const
    maxchar=20;
  type
    arraytype=array [1..maxchar] of char;
  var
    x,y,i:integer;
    n:char;
    A:arraytype;
  function num1:boolean;
    var
      j,s:integer;
    begin
      s:=0;
      while (j<=x) do
        begin
          if (A[j]=' ') then s:=s+1;
        end;
      if (s=x) then num1:=true;
    end;

  begin
    writeln('--------------------');
    write('dwse tin prwti leksi: ');
    x:=0;
    repeat
      x:=x+1;
      readln(n);
      A[x]:=n;
    until eoln;
    readln;
    writeln('-------------------------');
    write('dwse kai ti deuteri leksi: ');
    y:=0;
    repeat
      y:=y+1;
      readln(n);
      i:=0;
      repeat
        i:=i+1;
      until A[i]=n;
      A[i]:=' ';
    until eoln;
    readln;
    if (x=y) and (num1=true) then
      writeln('oi lekseis einai anastrofes')
    else writeln('oi lekseis den einai anastrofes');
    readln;
  end.

