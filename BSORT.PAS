program bsort(input,output);
type special=array[0..16] of integer;
var n,s,c,p,comps,swaps:integer;answer:char;a:special;
  procedure swap(var x,y:integer);
  var t:integer;
  begin
   swaps:=swaps+1;t:=x;x:=y;y:=t
  end;
  procedure bubble(x,y:integer;var b:special);
  var i,j:integer;noswaps:boolean;
  begin
   i:=0;
   repeat
    i:=i+1;noswaps:=true;
    for j:=y-1 downto i do
    begin
     if b[j]>b[j+1] then
     begin
      swap(b[j],b[j+1]);noswaps:=false
     end;
     comps:=comps+1
    end
   until noswaps=true
  end;
begin
 repeat
  swaps:=0;comps:=0;writeln ('Enter the numbers (15 max)');s:=0;p:=1;
  while (not eoln) and (p<>0) and (s<=15) do
  begin
   s:=s+1;read (a[s]);if (a[s]<9) or (a[s]>99) then p:=0
  end;
  n:=s;readln;
  if p=0 then writeln ('ERROR') else
   if n=0 then writeln ('No numbers') else
    if n>15 then writeln ('More than 15 numbers') else
    begin
     bubble(1,n,a);
     write ('Result: ');
     for c:=1 to n do write (a[c]:2,' ');
     writeln;writeln ('Comparisons: ',comps);writeln ('Swaps: ',swaps)
    end;
  write ('Continue?(y/n)');readln (answer);
 until (answer='n') or (answer='N')
end.