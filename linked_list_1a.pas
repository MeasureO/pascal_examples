program linked_list_1;
type
    itemptr = ^item;
    item = record
        data: integer;
        next: itemptr;
    end;
var
    first, second: itemptr;
    x: integer;
begin
    new(first);
    read(x);
    first^.data := x;
    first^.next := nil;
    while not SeekEof do begin
        read(x);
        new(second);
        second := first;
        new(first);
        first^.data := x;
        first^.next := second;
    end;
    writeln('Reversed: ')
    while true do begin
        writeln(first^.data);
        if first^.next = nil then
            break;
        first := first^.next;
    end
end.
