program askisi17(input,output);

  type
    a=^atype;
    atype=record
            info:integer;
            next:a
          end;


  var
    f,pl,min,list:a;
    ar:integer;epa:char;

  procedure ektiposi(e:a);
  begin
    while (e<>nil) do begin
      write(e^.info,' , ');
      e:=e^.next
    end;
    writeln
  end;


begin
  repeat
    f:=nil;
    min:=nil;
    pl:=nil;
    writeln('dwse mia akolouthia apo akeraious');
    while not eoln do begin
      read(ar);
      new(list);list^.info:=ar;
      list^.next:=f;f:=list
    end;
    while (f<>nil) do begin
      list:=f^.next;
      if (f^.info>=0) then begin
        f^.next:=pl;
        pl:=f
      end
      else begin
        f^.next:=min;
        min:=f
      end;
      f:=list
    end;
    write('akolouthia thetikwn: ');ektiposi(pl);
    write('akolouthia arnitikwn: ');ektiposi(min);
    readln;
    write('theleis na sinehiseis;(y/n)');readln(epa);
  until epa='n';
end.
