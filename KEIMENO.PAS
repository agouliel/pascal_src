program keimeno(input,output);
  const
    maxchar=100;
    maxlines=30;
    maxwords=400;
    maxletters=20;
    fchar='$';
    epan='*';
  type
    line=array [1..maxchar] of char;
    word=array [1..maxletters] of char;
    listtype=array [1..maxwords] of word;
    forestype=array [1..maxwords] of integer;
  var
    txt:array [1..maxlines] of line;
    list:listtype;
    fores:forestype;
    x,y,row,column,wrd,letter,count:integer;
    n:char;
    mikra:set of char;
    kefalaia:set of char;

  procedure merge(var list:listtype;left1,right1,left2,right2:integer);
    var
      f:listtype;
      x,y,count:integer;
    begin
      count:=left1;
      x:=left1-1;
      while (left1<=right1) and (left2<=right2) and (x<=right2) do
        begin
          if list[left1]<list[left2] then
            begin
              x:=x+1;
              f[x]:=list[left1];
              left1:=left1+1;
            end
          else if list[left1]>list[left2] then
            begin
              x:=x+1;
              f[x]:=list[left2];
              left2:=left2+1;
            end
          else if list[left1]=list[left2] then
            begin
              x:=x+1;
              f[x]:=list[left1];
              x:=x+1;
              f[x]:=list[left2];
              left1:=left1+1;
              left2:=left2+1;
            end;
        end;
        if left1>right1 then
          for y:=left2 to right2 do
            begin
              x:=x+1;
              f[x]:=list[y];
            end;
        if left2>right2 then
          for y:=left1 to right1 do
            begin
              x:=x+1;
              f[x]:=list[y];
            end;
        for y:=count to x do
          list[y]:=f[y];
    end;

    procedure sort(var list:listtype;left,right:integer);
      var
        middle:integer;
      begin
        if (left<>right) then
          begin
            middle:=(left+right) div 2;
            sort(list,left,middle);sort(list,middle+1,right);
            merge(list,left,middle,middle+1,right);
          end;
      end;

    procedure taktmear;
      var
        x,y,count,temp:integer;
        tempword:word;
      begin
        for x:=1 to wrd do fores[x]:=1;
          for x:=1 to wrd do
            begin
              for y:=wrd downto x+1 do
                begin
                  if list[x]=list[y] then
                    begin
                      fores[x]:=fores[x]+1;
                      for count:=y+1 to wrd do
                        begin
                          list[count-1]:=list[count];
                          fores[count-1]:=fores[count];
                        end;
                      wrd:=wrd-1;
                    end;
                end;
            end;
            writeln('me alfavitiki');
            writeln('kai arithmo emfanisewn');
            writeln('---------------------');
            writeln('leksi        arithmos emfanisewn');
            for x:=1 to wrd do
              begin
                write(list[x],' ');
                for count:=1 to fores[x] do write(epan);
                writeln;
              end;
              readln;
      end;

      procedure fthinousa;
        var
          x,y,count,temp:integer;
          tempword:word;
        begin
          for x:=1 to wrd-1 do
            begin
              for y:=x+1 to wrd do
              begin
                if fores[x]<fores[y] then
                  begin
                    tempword:=list[x];
                    list[x]:=list[y];
                    list[y]:=tempword;
                    temp:=fores[x];
                    fores[x]:=fores[y];
                    fores[y]:=temp;
                  end;
              end;
            end;
            writeln('-----------------');
            writeln('se fthinousa seira');
            writeln('kai me arithmo epanalipsewn');
            writeln('-----------------');
            writeln('leksi        arithmos emfanisewn');
            for x:=1 to wrd do
              begin
                write(list[x],' ');
                for count:=1 to fores[x] do write(epan);
                writeln;
              end;
            readln;
        end;

        begin
          for x:=1 to maxlines do
            for y:=1 to maxchar do
              txt[x,y]:=fchar;
          for x:=1 to maxwords do
            for y:=1 to maxletters do
              list[x,y]:=' ';
          x:=0;y:=0;
          kefalaia:=['A'..'Z'];
          mikra:=['a'..'z'];
          writeln('dwse to keimeno');
          writeln('otan teleiwseis pata @+enter');
          n:=' ';
          row:=0;
          column:=0;
          while (row<maxlines) and not (ord(n)=64) do
            begin
              row:=row+1;
              read(n);
              column:=0;
              while (column<maxchar) and not (ord(n)=64) do
                begin
                  begin
                    if n in kefalaia then
                    n:=chr(ord(n)+ord('a')-ord('A'));
                  end;
                  column:=column+1;
                  txt[row,column]:=n;
                  read(n);
                end;
            end;
          wrd:=1;letter:=1;
          for x:=1 to row do
            begin
              for y:=1 to maxchar do
                begin
                  if (txt[x,y] in kefalaia+mikra) then
                    begin
                      list[wrd,letter]:=txt[x,y];
                      letter:=letter+1;
                    end
                  else if (letter<>1) then
                    begin
                      wrd:=wrd+1;
                      letter:=1;
                    end;
                end;
            end;
            wrd:=wrd-1;
            writeln('lista leksewn');
            writeln('--------------');
            for x:=1 to wrd do writeln(list[x]);
            readln;
            sort(list,1,wrd);
            writeln('se alfabetiki seira');
            writeln('-------------------');
            for x:=1 to wrd do writeln(list[x]);
            readln;
            taktmear;
            fthinousa;
        end.