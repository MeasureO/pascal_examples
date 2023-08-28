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
    pp: ^itemptr;
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
    {pointer on pointer}
    pp := @first;
    while pp^ <> nil do begin
      if pp^^.data < 0 then begin
        tmp := pp^;
        pp^ := pp^^.next;
        dispose(tmp)
      end
      else
        pp := @(pp^^.next)
    end;
    
    {Reversed}
    while tmp <> nil do begin
        writeln(tmp^.data);
        tmp := tmp^.next
    end;
   
    while first <> nil do begin
        tmp := first^.next;
        dispose(first);
        first := tmp;
    end
    { Alternative deleting:
    while first <> nil do begin
        tmp := first;
        first := first^.next;
        dispose(tmp)
    end
    }
end.

{Ugly solution :
if first <> nil then
begin
    while first^.data < 0 do
    begin
        tmp := first;
        first := first^.next;
        dispose(tmp)
    end
end;
if first <> nil then
begin
    tmp := first;
    while tmp^.next <> nil do
    begin
        if tmp^.next^.data < 0 then
        begin
            tmp2 := tmp^.next;
            tmp^.next := tmp^.next^.next;
            dispose(tmp2)
        end
        else
            tmp := tmp^.next
    end
end
}
