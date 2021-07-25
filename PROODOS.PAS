program proodos(input,output,F);
  uses crt;
  const max=80;
  var a:array[1..max] of char;
      answer,ch:char;i,j:integer;
      p:boolean;F:text;
begin
  clrscr;
  assign (F,'F');
  writeln ('Checking file F for palindromes...');reset (F);
  repeat
   p:=true;i:=0; (* VERY IMPORTANT *)
   while not eoln(F) do
   begin
    read (F,ch);i:=i+1;a[i]:=ch
   end;
   for j:=1 to i do write (a[j]);write (' : ');
   for j:=1 to i do
     if a[j]<>a[i-j+1] then p:=false;
   if p=false then writeln ('it is not') else writeln ('it is');
   write ('Continue?(y/n)');readln (answer);
   if answer='y' then readln (F)
  until answer='n';
  close (F)
end.