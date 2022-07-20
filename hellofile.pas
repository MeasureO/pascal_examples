program hellofile;
const
    message = 'Hello, world!';
    filename = 'hello.txt';
var
    f: text;
begin
    {$I-}
    assign(f, filename);
    rewrite(f);
    if IOResult <> 0 then
    begin
        writeln('Couln''t open file', filename);
        halt(1)
    end;
    writeln(f, message);
    if IOResult <> 0 then
    begin
        writeln('Couldn''t write to the file');
    end;
    close(f)
end.
