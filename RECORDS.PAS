program records(input,output);
  const size=15;
  type student=record
                 epitheto,onoma:string[20];am:string[5];
               end;
       list=array[1..size] of student;
  var a:list;i,z:integer;oldlist,newlist:text;
 procedure merge(var a,b,c:list;fa,la,fb,lb,fc:integer;var lc:integer);
   var ia,ib,ic:integer;
 begin
   ia:=fa;ib:=fb;ic:=fc;
   repeat
     if (a[ia].epitheto<b[ib].epitheto) or ((a[ia].epitheto=b[ib].epitheto)
        and (a[ia].onoma<b[ib].onoma)) or ((a[ia].epitheto=b[ib].epitheto)
        and (a[ia].onoma=b[ib].onoma) and (a[ia].am<b[ib].am)) then
     begin
       c[ic]:=a[ia];ia:=ia+1;
     end
     else
     begin
       c[ic]:=b[ib];ib:=ib+1;
     end;
     ic:=ic+1
   until (ia>la) or (ib>lb);
   for ia:=ia to la do
   begin
     c[ic]:=a[ia];ic:=ic+1;
   end;
   for ib:=ib to lb do
   begin
     c[ic]:=b[ib];ic:=ic+1
   end;
   lc:=ic-1;
 end;
 procedure mergesort(var a:list;fa,la:integer);
   var b:list;i,mid:integer;
 begin
   if fa<la then
   begin
     mid:=(fa+la) div 2;mergesort(a,fa,mid);mergesort(a,mid+1,la);
     merge(a,a,b,fa,mid,mid+1,la,fa,la);for i:=fa to la do a[i]:=b[i]
   end
 end;
begin
  assign(oldlist,'oldlist');assign(newlist,'newlist');
  reset(oldlist);rewrite(newlist);i:=0;z:=0;
  while not eof(oldlist) do
  begin
    i:=i+1;readln (oldlist,a[i].epitheto,a[i].onoma,a[i].am);z:=z+1;
  end;
  mergesort(a,1,z);
  for i:=1 to z do
  begin
    writeln (a[i].epitheto,a[i].onoma,a[i].am);
    writeln (newlist,a[i].epitheto,a[i].onoma,a[i].am);
  end;
  close(oldlist);close(newlist);readln
end.