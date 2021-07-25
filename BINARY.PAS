program binary(input,output);

  const
    maxint=20;
  type
    stucktype=array [1..maxint] of integer;
  var
    stuck:stucktype;
    x,y,i,j,z:integer;
  begin
    while not eof do
    begin
    writeln('dwse ton arithmo se dekadiko systhma');
    readln(x);
    i:=0;
    repeat
      i:=i+1;
      stuck[i]:=x mod 2;
      x:=x div 2;
    until x=0;
    write('o arithmos se dyadiko systhma einai o ');
    for j:=i downto 1 do
      write(stuck[j]);
    readln;
    end;
  end.
