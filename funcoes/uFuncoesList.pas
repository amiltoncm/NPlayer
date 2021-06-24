unit uFuncoesList;

interface

uses
  System.SysUtils;

function RemoveExt(pStrValue: string): string;
function JTipoArquivo(Nome: String): String;

implementation

function RemoveExt(pStrValue: string): string;
var
i: integer ;
begin
  i := Pos('.', pStrValue);
  if i <> 0 then
  begin
    result := copy(pStrValue, 1, (i - 1));
  end
  else
  begin
    result := pStrValue ;
  end;
end;

function JTipoArquivo(Nome: String): String;
var
SR: TSearchRec;
I: integer;
begin
  I := FindFirst(Nome + '.*', faAnyFile, SR);
  if I = 0 then
    Result := copy(Sr.Name,Pos('.', Sr.Name), 4)
  else
    Result := ''
end;

end.
