program linked_list_1b;
type
    itemptr = ^item;
    item = record
        data: integer;
        next: itemptr;
    end;
var
    first, tmp: itemptr;
    n: integer;
begin
    first := nil;
    while not SeekEof do begin
        read(n);
        new(tmp);
        tmp^.data := n;
        tmp^.next := first;
        first := tmp;
    end;
    tmp := first;
    writeln('Reversed: ');
    while tmp <> nil do begin
        writeln(tmp^.data);
        tmp := tmp^.next
    end
end.
