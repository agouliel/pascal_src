program simak(input,output);

var i,k,x,j,l,m:integer;
    n:char;
    a:array [1..20] of char;

begin
  l:=0;
  m:=0;
  repeat
    writeln('dwse thn leksi h <<ctrl-z>> gia eksodo');
    if not eof then begin
      l:=l+1;
      i:=0;
      while not eoln do begin
        read(n);
        i:=i+1;
        a[i]:=n;
      end;
      j:=(i div 2)+(i mod 2);
      k:=0;
      for x:=1 to j do
        if a[x]=a[i+1-x] then k:=k+1;
      if j=k then begin
        writeln('einai palindromiki');
        m:=m+1;
      end
      else writeln('den einai palindromiki');
      readln;
    end;
  until eof;
  writeln('zeugh leksewn pou dothikan: ',l);
  writeln('antistrofa zeugh: ',m);
  if l<>0 then writeln('pososto antistrofwn zeugwn: ',m*100/l:4:2,'%');
  readln;
end.