program arithmoi (input,output);
var i,j,k,l,m:integer;
    a,b,c,d:array[0..9] of integer;
begin
  for m:=0 to 9 do
  begin
    a[m]:=sqr(sqr(m));b[m]:=sqr(sqr(m));c[m]:=sqr(sqr(m));d[m]:=sqr(sqr(m))
  end;
  for i:=1 to 9 do
    for j:=0 to 9 do
      for k:=0 to 9 do
        for l:=0 to 9 do
        begin
          if (a[i]+b[j]+c[k]+d[l]=i*1000+j*100+k*10+l) then
          writeln (i*1000+j*100+k*10+l)
        end;
  readln
end.
