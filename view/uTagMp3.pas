unit uTagMp3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  JvComponentBase, JvId3v1, Vcl.Mask, wwdbedit, Wwdotdot, Wwdbcomb, System.Math,
  JvID3v2Base, JvId3v2, JvBalloonHint;

type
  TfrmTagMP3 = class(TForm)
    btFechar: TBitBtn;
    JvID3v11: TJvID3v1;
    Label1: TLabel;
    edArquivo: TEdit;
    cbGenero: TwwDBComboBox;
    Label2: TLabel;
    edTitulo: TEdit;
    Label3: TLabel;
    edArtista: TEdit;
    Label4: TLabel;
    edAlbum: TEdit;
    Label5: TLabel;
    edAno: TEdit;
    Label6: TLabel;
    edGenero: TEdit;
    btLancar: TBitBtn;
    JvBalloonHint1: TJvBalloonHint;
    btNome: TBitBtn;
    procedure UpdateCtrls;
    procedure UpdateCaption;
    procedure AnsiStringToPAnsiChar(const Source: AnsiString; Dest: PAnsiChar; const MaxLength: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btLancarClick(Sender: TObject);
    procedure cbGeneroExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTagMP3: TfrmTagMP3;
  vgArqMp3: String;

implementation

{$R *.dfm}

uses uVarGlobal, uFuncoesSistema, uFuncoesList;

procedure TfrmTagMP3.UpdateCtrls;
begin
  JvID3v11.FileName := vgArqMp3;
  JvID3v11.Active := True;
  edTitulo.Text := String(JvID3v11.SongName);
  edArtista.Text := String(JvID3v11.Artist);
  edAlbum.Text := String(JvID3v11.Album);
  edAno.Text := String(JvID3v11.Year);
  edGenero.Text := IntToStr(JvID3v11.Genre);
  cbGenero.Text := JvID3v11.GenreAsString;
end;

procedure TfrmTagMP3.UpdateCaption;
var
HasTag: Boolean;
begin
  if JvId3v11.FileName > '' then
    HasTag := JvId3v11.HasTag;
end;

procedure TfrmTagMP3.AnsiStringToPAnsiChar(const Source: AnsiString; Dest: PAnsiChar; const MaxLength: Integer);
begin
  Move(PAnsiChar(Source)^, Dest^, Min(MaxLength, Length(Source)));
end;

procedure TfrmTagMP3.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTagMP3.btLancarClick(Sender: TObject);
begin
  JvId3v11.SongName := AnsiString(edTitulo.Text);
  JvId3v11.Artist := AnsiString(edArtista.Text);
  JvId3v11.Album := AnsiString(edAlbum.Text);
  JvId3v11.Year := AnsiString(edAno.Text);
  JvId3v11.GenreAsString := AnsiString(edGenero.Text);
  JvId3v11.Comment := 'Editado por: EdPlayer Vs. ' + VersaoSistema(0);
  if JvId3v11.Commit then
    UpdateCaption;
  Close;
end;

procedure TfrmTagMP3.btNomeClick(Sender: TObject);
Var
vNome: String;
vNovoNome: String;
begin
  vNome := RemoveExt(ExtractFileName(edArquivo.Text));
  if InputQuery('Alterar nome do arquivo', 'Digite o novo nome', vNovoNome) then
  begin
    if vNovoNome <> '' then
    begin
      if vNome <> vNovoNome then
      begin
        vNovoNome := ExtractFilePath(edArquivo.Text) + vNovoNome + '.mp3';
        try
          RenameFile(edArquivo.Text, vNovoNome);
          edArquivo.Text := vNovoNome;
          MessageDlg('Nome do arquivo alterado com sucesso!!', mtInformation, [mbOk], 0);
          Close;
        except
          MessageDlg('Erro ao alterar o nome do arquivo!', mtWarning, [mbOk], 0);
        end;
      end;
    end;
  end;
end;

procedure TfrmTagMP3.cbGeneroExit(Sender: TObject);
begin
  if cbGenero.Text <> '' then
    edGenero.Text := cbGenero.Value
  else
    edGenero.Text := '255';
end;

procedure TfrmTagMP3.FormActivate(Sender: TObject);
begin
  vgArqMp3 := vgMusicaTag;
  edArquivo.Text := vgArqMp3;
  UpdateCtrls;
  edTitulo.SetFocus;
end;

procedure TfrmTagMP3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  JvID3v11.Active := False;
end;

procedure TfrmTagMP3.FormKeyPress(Sender: TObject; var Key: Char);
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
