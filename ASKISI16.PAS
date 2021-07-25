program askisi16(input,output,rfile);

  const
    size=15;

  type
    string20=array [1..20] of char;
    student=record
              epitheto:record
                         ep1:string20;
                         ep2:integer;
                       end;
              onoma:record
                      on1:string20;
                      on2:integer;
                    end;
              am:longint;
            end;
    lista=array [1..size] of student;

  var
    rfile:text;
    i,j,z:integer;
    list:lista;
    n:char;



  function sigrisi(list:lista;e,f:integer) :boolean;
    var a,b:char;g:integer;
  begin
    sigrisi:=false;
    a:=list[e].epitheto.ep1[1];
    b:=list[f].epitheto.ep1[1];
    g:=1;
    while (a=b) and (g<list[e].epitheto.ep2) and (g<list[f].epitheto.ep2) do
    begin
      g:=g+1;
      a:=list[e].epitheto.ep1[g];
      b:=list[f].epitheto.ep1[g]
    end;
    if (a<b) or ((a=b) and (g=list[e].epitheto.ep2) and (g<list[f].epitheto.ep2)) then sigrisi:=true;
    if (a=b) and (list[e].epitheto.ep2=list[f].epitheto.ep2) then begin
      a:=list[e].onoma.on1[1];
      b:=list[f].onoma.on1[1];
      g:=1;
      while (a=b) and (g<list[e].onoma.on2) and (g<list[f].onoma.on2) do
      begin
        g:=g+1;
        a:=list[e].onoma.on1[g];
        b:=list[f].onoma.on1[g]
      end;
      if (a<b) or ((a=b) and (g=list[e].onoma.on2) and (g<list[f].onoma.on2)) then sigrisi:=true;
      if (a=b) and (list[e].onoma.on2=list[f].onoma.on2) then begin
        if list[e].am<list[f].am then sigrisi:=true
      end
    end
  end;


  procedure merge(var a,b,c:lista; fa,la,fb,lb,fc:integer; var lc:integer);
    var ia,ib,ic:integer;
  begin
    ia:=fa;ib:=fb;ic:=fc;
    repeat
      if sigrisi(a,ia,ib) then begin c[ic]:=a[ia];ia:=ia+1 end
      else begin c[ic]:=b[ib];ib:=ib+1 end;
      ic:=ic+1;
    until (ia>la) or (ib>lb);
    for ia:=ia to la do begin c[ic]:=a[ia];ic:=ic+1 end;
    for ib:=ib to lb do begin c[ic]:=b[ib];ic:=ic+1 end;
    lc:=ic-1
  end;


  procedure mergesort(var a:lista;fa,la:integer);
    var i,mid:integer;b:lista;
  begin
    if fa<la then begin
      mid:=(fa+la) div 2;
      mergesort(a,fa,mid);mergesort(a,mid+1,la);
      merge(a,a,b,fa,mid,mid+1,la,fa,la);
      for i:=fa to la do a[i]:=b[i]
    end
  end;



begin
  writeln('dwse to epitheto,to onoma kai ton am');
  z:=0;
  while not eof do begin
    z:=z+1;
    while not eoln do begin
      with list[z].epitheto do begin
        read(n);
        ep2:=0;
        while n<>' ' do begin
          ep2:=ep2+1;
          ep1[ep2]:=n;
          read(n)
        end
      end;
        repeat
          read(n);
        until n<>' ';
      with list[z].onoma do begin
        on2:=0;
        while n<>' ' do begin
          on2:=on2+1;
          on1[on2]:=n;
          read(n)
        end
      end;
      read(list[z].am);
    end;
    readln

  end;
    mergesort(list,1,z);
    assign(rfile,'rfile.stu');
    rewrite(rfile);
    for i:=1 to z do begin
      with list[i].epitheto do begin
        for j:=1 to ep2 do
          write(rfile,ep1[j]);write(rfile,' ');
      end;
      with list[i].onoma do begin
        for j:=1 to on2 do
          write(rfile,on1[j]);write(rfile,' ');
      end;
      write(rfile,list[i].am);writeln(rfile);
    end;
    close(rfile);
  readln;
end.