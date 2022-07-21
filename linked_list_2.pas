program linked_list_2a;
type
    itemptr = ^item;
    item = record
        data: integer;
        next: itemptr;
    end;
var
    first, last, tmp: itemptr;
    n: integer;
begin
    first := nil;
    last := nil;
    while not SeekEof do begin
        read(n);
        if first = nil then begin
            new(first);
            last := first
        end
        else begin
            new(last^.next);
            last := last^.next
        end;
        last^.data := n;
        last^.next := nil
    end;
    tmp := first;
    while tmp <> nil do begin
        writeln(tmp^.data);
        tmp := tmp^.next
    end
end.
