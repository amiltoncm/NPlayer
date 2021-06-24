unit uOpenPlayList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.FileCtrl,
  Vcl.Menus;

type
  TfrmOpenPlayList = class(TForm)
    btAbrir: TBitBtn;
    btCancelar: TBitBtn;
    FileListBox: TFileListBox;
    Label1: TLabel;
    DirectoryListBox: TDirectoryListBox;
    PopupMenu1: TPopupMenu;
    ExcluirPlaylist1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FileListBoxDblClick(Sender: TObject);
    procedure btAbrirClick(Sender: TObject);
    procedure ExcluirPlaylist1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpenPlayList: TfrmOpenPlayList;

implementation

{$R *.dfm}

uses uVarGlobal, uPrincipal;

procedure TfrmOpenPlayList.btAbrirClick(Sender: TObject);
begin
  frmPrincipal.ListView1.Clear;
  frmPrincipal.CarregarLista(FileListBox.FileName);
  Close;
end;

procedure TfrmOpenPlayList.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOpenPlayList.ExcluirPlaylist1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir a playlist?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DeleteFile(FileListBox.FileName);
    FileListBox.Update;
    FileListBox.Refresh;
  end;
end;

procedure TfrmOpenPlayList.FileListBoxDblClick(Sender: TObject);
begin
  btAbrir.Click;
end;

procedure TfrmOpenPlayList.FormActivate(Sender: TObject);
begin
  DirectoryListBox.Directory := vgPlaylists;
  FileListBox.Update;
  FileListBox.Refresh;
  FileListBox.SetFocus;
end;

procedure TfrmOpenPlayList.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    Close;
end;

end.
