program squares(input,output);
var i,j,k,l:integer;answer:char;a:array[1..9,1..9] of integer;
begin
 repeat
  write ('Give the dimension:');readln (l);writeln;
  for i:=1 to l do
  for j:=1 to l do
  a[i,j]:=0;a[l div 2 + 1,l]:=1;a[l div 2 + 2,1]:=2;k:=2;i:=l div 2 + 2;j:=1;
  repeat
    k:=k+1;if i=l then i:=1 else i:=i+1;if j=l then j:=1 else j:=j+1;
    if a[i,j]<>0 then
     begin
      i:=i-1;j:=j-2
     end;
    if i=0 then
     begin
      i:=l;j:=l-1
     end;
    a[i,j]:=k;
  until k=sqr(l);
  for i:=1 to l do
  for j:=1 to l do
   begin
    write (a[i,j]:2,' ');if j=l then writeln
   end;
  write ('Continue?(y/n)');readln (answer);
 until (answer='n') or (answer='N')
end.