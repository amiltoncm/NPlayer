unit uConfigSpectro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Inifiles,
  fcCombo, fcColorCombo, Vcl.Samples.Spin, Vcl.ExtCtrls;

type
  TfrmConfigSpectro = class(TForm)
    btFechar: TBitBtn;
    Panel1: TPanel;
    cbPeakHolder: TCheckBox;
    lbCorPeak: TLabel;
    ColorPeak: TfcColorCombo;
    seVelPeak: TSpinEdit;
    lbVelPeak: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    ColorBarras: TfcColorCombo;
    Label2: TLabel;
    seVelBar: TSpinEdit;
    seLargura: TSpinEdit;
    Label3: TLabel;
    procedure DesabilitaSpectro;
    procedure HabilitaSpectro;
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbPeakHolderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigSpectro: TfrmConfigSpectro;
  vlControl: TInifile;

implementation

{$R *.dfm}

uses uVarGlobal, uFuncoesSistema, uPrincipal, uBass, uSpectrum_vis;

procedure TfrmConfigSpectro.DesabilitaSpectro;
begin
  ColorPeak.Enabled := False;
  seVelPeak.Enabled := False;
  lbCorPeak.Enabled := False;
  lbVelPeak.Enabled := False;
end;

procedure TfrmConfigSpectro.HabilitaSpectro;
begin
  ColorPeak.Enabled := True;
  seVelPeak.Enabled := True;
  lbCorPeak.Enabled := True;
  lbVelPeak.Enabled := True;
end;

procedure TfrmConfigSpectro.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConfigSpectro.cbPeakHolderClick(Sender: TObject);
begin
  if cbPeakHolder.Checked = True then
    HabilitaSpectro
  else
    DesabilitaSpectro;
end;

procedure TfrmConfigSpectro.FormActivate(Sender: TObject);
Var
vPeakHolder: String;
vCorPeak: String;
vCorBar: String;
begin
  vlControl := Tinifile.create(vgArqIni);
  //Carrega configurações Peak Holder
  vPeakHolder := vlControl.ReadString('Spectro', 'PeakHolder', '');
  if vPeakHolder = '0' then
    cbPeakHolder.Checked := false
  else
    cbPeakHolder.Checked := true;
  if cbPeakHolder.Checked = True then
    HabilitaSpectro
  else
    DesabilitaSpectro;
  vCorPeak := vlControl.ReadString('Spectro', 'CorPeak', '');
  ColorPeak.SelectedColor := StringToColor(vCorPeak);
  seVelPeak.Value := StrToInt(vlControl.ReadString('Spectro', 'VelPeak', ''));
  seLargura.Value := StrToInt(vlControl.ReadString('Spectro', 'Largura', ''));
  //Carrega configurações das barras
  vCorBar := vlControl.ReadString('Spectro', 'CorSpectro', '');
  ColorBarras.SelectedColor := StringToColor(vCorBar);
  seVelBar.Value := StrToInt(vlControl.ReadString('Spectro', 'VelBar', ''));
  cbPeakHolder.SetFocus;
end;

procedure TfrmConfigSpectro.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
vPeakHolder: String;
begin
  //Salva dados no .ini
  if cbPeakHolder.Checked = true then
    vPeakHolder := '1'
  else
    vPeakHolder := '0';
  vlControl.WriteString('Spectro', 'PeakHolder', vPeakHolder);
  vlControl.WriteString('Spectro', 'CorPeak', ColorToString(ColorPeak.SelectedColor));
  vlControl.WriteString('Spectro', 'VelPeak', seVelPeak.Text);
  vlControl.WriteString('Spectro', 'CorSpectro', ColorToString(ColorBarras.SelectedColor));
  vlControl.WriteString('Spectro', 'VelBar', seVelBar.Text);
  vlControl.WriteString('Spectro', 'Largura', seLargura.Text);
  vlControl.Free;
end;

end.
