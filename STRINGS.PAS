program strings(input,output);
var a:array[1..20] of char;
    i,n,x,y:integer;p:boolean;answer:char;
begin
  x:=0;y:=0;
  repeat
   i:=0;writeln ('Enter the string:');
   while (not eoln) and (i<=20) do
    begin
     i:=i+1;read (a[i])
    end;
   readln;n:=i;
   if n=0 then writeln ('0 chars')
   else
   if n>20 then writeln ('More than 20 chars')
   else
    begin
     p:=true;y:=y+1;
     for i:=1 to (n div 2) do
      if a[i]<>a[n+1-i] then p:=false;
     if p=false then writeln ('It is not')
     else
      begin
       writeln ('It is');x:=x+1
      end
     end;
     write ('Continue?(y/n)');readln (answer);
  until (answer='n') or (answer='N');
  if y>0 then writeln ('Percentage:',((x*100)/y):2:0,'%');readln;
end.