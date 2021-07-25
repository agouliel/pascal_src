program  addfra (input,output);
   var  a,b,c,d,e,f:integer;
 begin
   writeln ('I will add two fractions');
   write ('Enter a:');
   read (a); readln;
   write ('Enter b:');
   read (b); readln;
   write ('Enter c:');
   read (c); readln;
   write ('Enter d:');
   read (d); readln;
   e := (a*d)+(c*b);
   f :=  b*d;
   writeln ('Sum:',e,'/',f)
 end.







