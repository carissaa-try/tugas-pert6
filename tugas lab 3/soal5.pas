program DeretBilangan;
uses crt;

var
  n, i: integer;

//FUNCTIONNYA

//a. Deret 1,1,2,3,5,8,13,...
function Fibonacci(i: integer): longint;
var
  a, b, t, k: longint;
begin
  a := 1;
  b := 1;
  for k := 1 to i - 1 do
  begin
    t := a + b;
    a := b;
    b := t;
  end;
  Fibonacci := a;
end;

//b. Deret 1,2,4,8,16,32,..
function PangkatDua(i: integer): longint;
var
  hasil, k: longint;
begin
  hasil := 1;
  for k := 1 to i - 1 do
    hasil := hasil * 2;
  PangkatDua := hasil;
end;

//c. Deret 1,4,9,16,25,...
function Kuadrat(i: integer): longint;
begin
  Kuadrat := i * i;
end;

//d. Deret 2,6,12,20,30,...
function Pronic(i: integer): longint;
begin
  Pronic := i * (i + 1);
end;

//PROGRAM UTAMA
begin
    clrscr;
  write('Input: ');
  readln(n);

  // a
  for i := 1 to n do
  begin
    write(Fibonacci(i));
    if i < n then write(', ');
  end;
  writeln;

  // b 
  for i := 1 to n do
  begin
    write(PangkatDua(i));
    if i < n then write(', ');
  end;
  writeln;

  // c
  for i := 1 to n do
  begin
    write(Kuadrat(i));
    if i < n then write(', ');
  end;
  writeln;

  // d
  for i := 1 to n do
  begin
    write(Pronic(i));
    if i < n then write(', ');
  end;
  writeln;

  readln;
end.