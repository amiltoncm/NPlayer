unit uFuncoesTempo;

interface

uses System.SysUtils;

function MSecToTime(const intTime: integer): string ;
function dm(seconds: integer): string;
function ds(seconds: integer): string;

implementation

function MSecToTime(const intTime: integer): string ;
Var
intMSec: Real;
begin
  intMSec := 1 / 24 / 60 / 60 / 1000;
  result := FormatDateTime('hh:mm:ss', intTime * intMSec);
end;

function dm(seconds: integer): string;
var
i, a: integer;
r: real;
begin
  a := round(seconds div 60);
  i := a * 60;
  r := seconds - i;
  result := inttostr(a);
end;

function ds(seconds: integer): string;
var
i, a: integer;
r: real;
begin
  a := round(seconds div 60);
  i := a * 60;
  r := seconds-i;
  result := floattostr(r);
end;

end.
