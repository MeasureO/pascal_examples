program rec2;

procedure PrintDigitsOfNumber(n: integer);
begin
        if n > 0 then
        begin
                write(n mod 10, ' ');
                PrintDigitsOfNumber(n div 10)
        end
end;

procedure PrintDigitsOfNumber2(n: integer);
begin
        if n > 0 then
        begin
                PrintDigitsOfNumber2(n div 10);
                write(n mod 10, ' ')
        end
end;

var
        n: integer;
begin
        read(n);
        PrintDigitsOfNumber(n);
        writeln;
        PrintDigitsOfNumber2(n);
        writeln
end.
