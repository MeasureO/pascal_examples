program qudratic_equation;

procedure quadratic(a, b, c: real; var ok: boolean; var x1, x2: real);
var
    d: real;
begin
    ok := false;
    if a = 0 then
        exit;
    d := b * b - 4 * a * c;
    if d < 0 then
        exit;
    d := sqrt(d);
    x1 := (-b - d) / (2 * a);
    x2 := (-b + d) / (2 * a);
    ok := true;
end;


var
    a, b, c, x1, x2: real;
    ok: boolean;
begin
    x1 := 0;
    x2 := 0;
    writeln('Input a, b, c of quadratic equation');
    read(a, b, c);
    quadratic(a, b, c, ok, x1, x2);
    writeln('x1 = ', x1);
    writeln('x2 = ', x2);
end.
