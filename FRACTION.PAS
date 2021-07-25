program fractions (input,output);
var a,b,c,d:integer; e:char;
begin
   write ('Enter a:');read (a);readln;write ('Enter b:');read (b);readln;
   write ('Enter c:');read (c);readln;write ('Enter d:');read (d);readln;
   write ('Enter symbol:');read (e);readln;
   if a>9 then writeln ('E')
   else if a<-9 then writeln ('E')
   else if b>9 then writeln ('E')
   else if b<-9 then writeln ('E')
   else if c>9 then writeln ('E')
   else if c<-9 then writeln ('E')
   else if d>9 then writeln ('E')
   else if d<-9 then writeln ('E')
   else if (b*d)=0 then writeln ('E')
        else if e='*' then
             begin
               write (a,'/',b,' * ',c,'/',d,' = ',a*c,'/',b*d,' = ',(a*c)/(b*d))
             end
             else if e='/' then
                     if c=0 then writeln ('E')
                     else
             begin
               write (a,'/',b,' / ',c,'/',d,' = ',a*d,'/',b*c,' = ',(a*d)/(b*c))
             end
end.
