program linked_list_1b;
type
    itemptr = ^item;
    item = record
        data: integer;
        next: itemptr;
    end;
var
    first, tmp: itemptr;
    n, k: integer;
    pp: ^itemptr;
begin
    writeln('Input number that you want to insert: ');
    read(k);
    first := nil;
    writeln('Input number of linked list');
    while not SeekEof do begin
        read(n);
        new(tmp);
        tmp^.data := n;
        tmp^.next := first;
        first := tmp;
    end;
    writeln;
    {pointer on pointer}
    pp := @first;
    while (pp^ <> nil) and (pp^^.data < k) do begin
      pp := @(pp^^.next);
    end;
    new(tmp);
    tmp^.next := pp^;
    tmp^.data := k;
    pp^ := tmp;
    {Reversed}
    tmp := first;
    while tmp <> nil do begin
        writeln(tmp^.data);
        tmp := tmp^.next
    end;
    
    while first <> nil do begin
        tmp := first^.next;
        dispose(first);
        first := tmp
    end
    { Alternative deleting:
    while first <> nil do begin
        tmp := first;
        first := first^.next;
        dispose(tmp)
    end
    }
end.

    
