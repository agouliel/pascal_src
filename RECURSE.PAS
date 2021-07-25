program recurse(input,output);
  procedure readwrite;
    var ch:char;
  begin
    read(ch);
    if ch<>chr(13) then readwrite;
    write(ch)
  end;
begin
  writeln('Enter a word.');
  readwrite;
  readln
end.