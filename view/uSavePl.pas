unit uSavePl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmSavePl = class(TForm)
    Label1: TLabel;
    edPlayList: TEdit;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    procedure btCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSavePl: TfrmSavePl;

implementation

{$R *.dfm}

uses uPrincipal, uVarGlobal;

procedure TfrmSavePl.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSavePl.btGravarClick(Sender: TObject);
var
I, J: Integer;
List: TStringList;
begin
  List := TStringList.Create;
  try
    for I := 0 to frmPrincipal.ListView1.Items.Count - 1 do
    begin
      List.Add(frmPrincipal.ListView1.Items[I].Caption);
      List.Add('@' + InttoStr(frmPrincipal.Listview1.Items[I].ImageIndex));
      for J:= 0 to frmPrincipal.ListView1.Items[I].SubItems.Count-1 do
        List.Add(#9 + frmPrincipal.ListView1.Items[I].SubItems[J]);
    end;
    List.SaveToFile(vgPlaylists + edPlayList.Text + '.ply');
    finally
      List.Free;
  end;
  Close;
end;

procedure TfrmSavePl.FormActivate(Sender: TObject);
begin
  edPlayList.Clear;
  edPlayList.SetFocus;
end;

procedure TfrmSavePl.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
  if key = #27 then
    Close;
end;

end.
