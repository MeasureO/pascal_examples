program rec1;

procedure PrintChars(ch: char; count: integer);
begin
    if count > 0 then
    begin
        write(ch);
        PrintChars(ch, count - 1)
    end
end;

var
    ch: char;
    count: integer;
begin
    writeln('Print char: ');
    read(ch);
    writeln('Print count: ');
    read(count);
    PrintChars(ch, count);
    writeln
end.
