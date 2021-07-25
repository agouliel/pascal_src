program simplify(input,output);
var ar1,par1,ar2,par2,newar,newpar,newar1,newpar1,akmer,arxorisakmer,
    newarap,newparap,mkd:integer;
    symbol,answer:char;
 procedure add;
 begin
  newar:=(ar1*par2)+(ar2*par1);newpar:=par1*par2;
 end;
 procedure subtract;
 begin
  newar:=(ar1*par2)-(ar2*par1);newpar:=par1*par2;
 end;
 procedure multiply;
 begin
  newar:=ar1*ar2;newpar:=par1*par2;
 end;
 procedure divide;
 begin
  newar:=ar1*par2;newpar:=par1*ar2;
 end;
 procedure gcd(no1,no2:integer;var mkd:integer);
 var i,j:integer;
 begin
  i:=abs(no1);j:=abs(no2);
  while i<>j do
   if i>j then i:=i-j else j:=j-i;
  mkd:=i;
 end;
begin
  repeat
  write ('Enter ar1:');readln (ar1);write ('Enter par1:');readln (par1);
  write ('Enter ar2:');readln (ar2);write ('Enter par2:');readln (par2);
  write ('Enter symbol:');readln (symbol);
    case symbol of
    '+':add;'-':subtract;'*':multiply;'/':divide;
    end;
  if (par1=0) or (par2=0) or ((symbol='/') and (ar2=0)) or
  (abs(ar1)>9) or (abs(par1)>9) or (abs(ar2)>9) or (abs(par2)>9)
  then writeln ('ERROR')
  else
    begin
     if newar*newpar>=0 then
     begin
     akmer:=newar div newpar;arxorisakmer:=newar mod newpar;
     gcd (arxorisakmer,newpar,mkd);
     newarap:=arxorisakmer div mkd;newparap:=newpar div mkd;
     writeln (ar1:2,'  ',ar2:2,'  ',newar:4,'      ',newarap:4);
     writeln (' - ',symbol,' - = --- = ',akmer:2,' + --');
     writeln (par1:2,'  ',par2:2,'  ',newpar:4,'      ',newparap:4);
     end
     else
     begin
     newar1:=abs(newar);newpar1:=abs(newpar);
     akmer:=newar1 div newpar1;arxorisakmer:=newar1 mod newpar1;
     gcd (arxorisakmer,newpar1,mkd);
     newarap:=arxorisakmer div mkd;newparap:=newpar1 div mkd;
     writeln (ar1:2,'  ',ar2:2,'    ',newar1:4,'       ',newarap:5);
     writeln (' - ',symbol,' - = - --- = -(',akmer:2,' + --)');
     writeln (par1:2,'  ',par2:2,'    ',newpar1:4,'       ',newparap:5);
     end
    end;
    writeln;write ('Continue?(y/n)');readln (answer)
    until (answer='n') or (answer='N')
end.
