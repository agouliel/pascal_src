program writemonth(input,output);
var
  month,secondchar,thirdchar:char;
  monthletters:set of char;

begin
  monthletters:=['J','F','M','A','S','O','N','D'];
  write('dwse ta tria prwta: ');
  readln(month,secondchar,thirdchar);
  if not (month in monthletters) then
  begin
    writeln;
    writeln('lathos');
  end
  else
    case month of
    'J':if secondchar='A' then write('UARY')
        else if thirdchar='N' then write('E')
        else write('Y');
    'F':write('RUARY');
    'M':if thirdchar='R' then write('CH');
    'A':if secondchar='P' then write('IL')
        else write('UST');
    'S':write('TEMBER');
    'O':write('OBER');
    'N','D':write('EMBER')
  end;
  writeln;
end.


