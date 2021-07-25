program p(input,output);
  var a,b,c,d:integer;

  procedure p1(a:integer;var b:integer);
    var c:integer;
  begin
    c:=b;d:=2*a;
    b:=c+a;a:=c+b;
    writeln (a:5,b:5,c:5,d:5)
  end;

begin
  a:=1;b:=10;c:=100;d:=1000;
  writeln (a:5,b:5,c:5,d:5);
  p1(b,a);writeln (a:5,b:5,c:5,d:5);
  p1(a,b);writeln (a:5,b:5,c:5,d:5);
  readln
end.