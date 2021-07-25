program format(input,output,FIL,PRETTY);
  const ww=20;lw=60;
  var FIL,PRETTY:text;p,iw,il:integer;ch:char;myeof:boolean;
      word:array[0..ww] of char;line:array[0..lw] of char;
  procedure justify;
    var i,j,myil:integer;
  begin
    myil:=1;
    for i:=1 to (lw-il) do
    begin
      repeat
        myil:=myil+1;if myil>il then myil:=1;
      until line[myil]=' ';
      for j:=il downto myil do line[j+1]:=line[j];  il:=il+1;
      repeat
        myil:=myil+1;if myil>il then myil:=1;
      until line[myil]<>' ';
    end;
  end;
begin
  assign(FIL,'FIL');assign(PRETTY,'PRETTY');reset(FIL);rewrite(PRETTY);il:=-1;
  while not eof(FIL) do
  begin
    myeof:=false;iw:=0;
    repeat
      read (FIL,ch);iw:=iw+1;word[iw]:=ch;
      if eof(FIL) then myeof:=true;
      if not myeof then if eoln(FIL) then myeof:=true;
    until ((ch=' ') or myeof);
    if not eof(FIL) then
    begin
      if (ch=' ') or (eoln(FIL)) then
      begin
        if ch=' ' then iw:=iw-1;
        if eoln(FIL) then
        begin
          myeof:=false;
          repeat
            if eof(FIL) then myeof:=true;
            if (not myeof) then
              if eoln(FIL) then readln(FIL) else myeof:=true;
          until myeof
        end;
        if ((iw+il+1)>lw) then
        begin
          justify;
          for p:=1 to lw do
          begin
            write (PRETTY,line[p]);write (line[p]);
          end;
          writeln (PRETTY);writeln;
          for p:=1 to iw do line[p]:=word[p];  il:=iw;
        end
        else if iw>0 then
        begin
          line[il+1]:=' ';
          for p:=1 to iw do line[il+p+1]:=word[p];  il:=il+iw+1;
        end;
      end;
    end;
  end;
  for p:=1 to il do
  begin
    write (PRETTY,line[p]);write (line[p]);
  end;
  writeln (PRETTY);close(FIL);close(PRETTY);writeln;readln
end.