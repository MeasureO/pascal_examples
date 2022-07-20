program MovingStar;
uses crt;
const
    DelayDuration = 100;
procedure GetKey(var code: integer);
var
    c: char;
begin
    c := Readkey;
    if c = #0 then
    begin
        c := ReadKey;
        code := -ord(c);
    end
    else
    begin
        code := ord(c)
    end
end;

type
    star = record
        CurX, CurY, dx, dy: integer;
    end;

procedure ShowStar(var s: star);
begin
    GotoXY(s.Curx, s.CurY);
    write('*');
    GotoXY(1, 1);
end;

procedure HideStar(var s: star);
begin
    GotoXY(s.CurX, s.CurY);
    write(' ');
    GotoXY(1, 1);
end;
