unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvSlider,
  Vcl.ExtCtrls, JvLED, Vcl.Samples.Spin, Vcl.ComCtrls, JvExComCtrls, JvComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Samples.Gauges, uBass, JvExStdCtrls,
  JvWinampLabel, JvLabel, uSpectrum_vis, uCommonTypes, uOsc_vis, Inifiles, Vcl.Menus,
  AMAdvLed, JvxSlider, fcLabel, Vcl.MPlayer, JvComponentBase, JvId3v1,
  JvBaseDlg, JvBrowseFolder, JvTracker, JvSegmentedLEDDisplay, JvTrayIcon,
  A3nalogGauge, Vcl.Imaging.jpeg;

type
  TfrmPrincipal = class(TForm)
    lbVolume: TLabel;
    Timer1: TTimer;
    pnVolume: TPanel;
    tbVolume: TTrackBar;
    panelOsciloscope: TPanel;
    PaintOsciloscope: TPaintBox;
    panelSpectro: TPanel;
    PaintFrame: TPaintBox;
    Panel1: TPanel;
    lbTitle: TLabel;
    lbArtista: TLabel;
    lbAlbum: TLabel;
    lbTempoTotal: TLabel;
    ColorDialogOsc: TColorDialog;
    sbPause: TSpeedButton;
    sbStop: TSpeedButton;
    sbPlay: TSpeedButton;
    sbNext: TSpeedButton;
    pbLeft: TGauge;
    pbRight: TGauge;
    ColorDialogBarras: TColorDialog;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    slider125: TJvxSlider;
    slider250: TJvxSlider;
    slider500: TJvxSlider;
    slider1000: TJvxSlider;
    slider4000: TJvxSlider;
    slider16000: TJvxSlider;
    sbClose: TSpeedButton;
    sbSobre: TSpeedButton;
    sbPlayList: TSpeedButton;
    Label1: TLabel;
    sbSave: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lbLeft: TfcLabel;
    lbRight: TfcLabel;
    ListView1: TListView;
    sbAddList: TSpeedButton;
    sbDeletePL: TSpeedButton;
    sbExclude: TSpeedButton;
    sbAddDir: TSpeedButton;
    OpenDialog: TOpenDialog;
    JvID3v11: TJvID3v1;
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    sbOpen: TSpeedButton;
    JvBrowseForFolderDialog: TJvBrowseForFolderDialog;
    SpeedButton1: TSpeedButton;
    lbPosAtual: TLabel;
    DisplayTempo: TJvSegmentedLEDDisplay;
    JvTrayIcon1: TJvTrayIcon;
    slider12000: TJvxSlider;
    slider10000: TJvxSlider;
    slider6000: TJvxSlider;
    slider2000: TJvxSlider;
    slider800: TJvxSlider;
    slider20000: TJvxSlider;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DisplayVolume: TJvSegmentedLEDDisplay;
    imgLeft: TImage;
    imgRight: TImage;
    sbMin80: TSpeedButton;
    sbPl80: TSpeedButton;
    sbPl125: TSpeedButton;
    sbPl250: TSpeedButton;
    sbPl500: TSpeedButton;
    sbPl800: TSpeedButton;
    sbPl1000: TSpeedButton;
    sbPl2000: TSpeedButton;
    sbPl4000: TSpeedButton;
    sbPl6000: TSpeedButton;
    sbPl10000: TSpeedButton;
    sbPl12000: TSpeedButton;
    sbPl16000: TSpeedButton;
    sbPl20000: TSpeedButton;
    sbMin125: TSpeedButton;
    sbMin250: TSpeedButton;
    sbMin500: TSpeedButton;
    sbMin800: TSpeedButton;
    sbMin1000: TSpeedButton;
    sbMin2000: TSpeedButton;
    sbMin4000: TSpeedButton;
    sbMin6000: TSpeedButton;
    sbMin10000: TSpeedButton;
    sbMin12000: TSpeedButton;
    sbMin16000: TSpeedButton;
    sbMin20000: TSpeedButton;
    ga80H: TGauge;
    ga125H: TGauge;
    ga250H: TGauge;
    ga500H: TGauge;
    ga800H: TGauge;
    ga1K: TGauge;
    ga2K: TGauge;
    ga4K: TGauge;
    ga6K: TGauge;
    ga10K: TGauge;
    ga12K: TGauge;
    ga16K: TGauge;
    ga20K: TGauge;
    slider80: TJvxSlider;
    AnalogLeft: TA3nalogGauge;
    AnalogRight: TA3nalogGauge;
    sbDigital: TSpeedButton;
    sbAnalogico: TSpeedButton;
    PanelLeds: TPanel;
    LedRedL1: TJvLED;
    LedRedL2: TJvLED;
    LedRedL3: TJvLED;
    LedRedL4: TJvLED;
    LedRedL5: TJvLED;
    LedRedR5: TJvLED;
    LedRedR4: TJvLED;
    LedRedR3: TJvLED;
    LedRedR2: TJvLED;
    LedRedR1: TJvLED;
    LedRedL6: TJvLED;
    LedRedR6: TJvLED;
    ledL10: TAMAdvLed;
    ledL09: TAMAdvLed;
    ledL08: TAMAdvLed;
    ledL07: TAMAdvLed;
    ledL06: TAMAdvLed;
    ledL05: TAMAdvLed;
    ledL04: TAMAdvLed;
    ledL03: TAMAdvLed;
    ledL02: TAMAdvLed;
    ledL01: TAMAdvLed;
    ledR01: TAMAdvLed;
    ledR02: TAMAdvLed;
    ledR03: TAMAdvLed;
    ledR04: TAMAdvLed;
    ledR05: TAMAdvLed;
    ledR06: TAMAdvLed;
    ledR07: TAMAdvLed;
    ledR08: TAMAdvLed;
    ledR09: TAMAdvLed;
    ledR10: TAMAdvLed;
    tbMusica: TJvxSlider;
    procedure ListarArquivos(Diretorio: string; Sub:Boolean);
    procedure SalvarLista;
    procedure LedL(vfPos: Integer);
    procedure LedR(vfPos: Integer);
    procedure CarregaCfg;
    procedure SetCfg;
    procedure GerarTags(vfFile: String);
    procedure FormCreate(Sender: TObject);
    procedure ClearTag;
    procedure ClearTime;
    procedure PlayNext;
    procedure PlayStream(FileName: String);
    procedure sbPlayClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure sbStopClick(Sender: TObject);
    procedure sbPauseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure tbVolumeChange(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbSobreClick(Sender: TObject);
    procedure PaintOsciloscopeDblClick(Sender: TObject);
    procedure PaintFrameDblClick(Sender: TObject);
    procedure CorBarras;
    procedure SetTipo(vfTipo: String);
    procedure sbPlayListClick(Sender: TObject);
    procedure ShowHidePlayList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnVolumeDblClick(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure lbLeftClick(Sender: TObject);
    procedure lbRightClick(Sender: TObject);
    procedure sbAddListClick(Sender: TObject);
    procedure sbDeletePLClick(Sender: TObject);
    procedure sbExcludeClick(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbOpenClick(Sender: TObject);
    procedure sbAddDirClick(Sender: TObject);
    procedure ListView1Compare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure ListView1ColumnClick(Sender: TObject; Column: TListColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ledL10Click(Sender: TObject);
    procedure slider80Change(Sender: TObject);
    procedure slider125Change(Sender: TObject);
    procedure slider250Change(Sender: TObject);
    procedure slider500Change(Sender: TObject);
    procedure slider800Change(Sender: TObject);
    procedure slider1000Change(Sender: TObject);
    procedure slider2000Change(Sender: TObject);
    procedure slider4000Change(Sender: TObject);
    procedure slider6000Change(Sender: TObject);
    procedure slider10000Change(Sender: TObject);
    procedure slider12000Change(Sender: TObject);
    procedure slider16000Change(Sender: TObject);
    procedure slider20000Change(Sender: TObject);
    procedure SalvarEq;
    procedure DisplayTempoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbPl80Click(Sender: TObject);
    procedure sbPl125Click(Sender: TObject);
    procedure sbPl250Click(Sender: TObject);
    procedure sbPl500Click(Sender: TObject);
    procedure sbPl800Click(Sender: TObject);
    procedure sbPl1000Click(Sender: TObject);
    procedure sbPl2000Click(Sender: TObject);
    procedure sbPl4000Click(Sender: TObject);
    procedure sbPl6000Click(Sender: TObject);
    procedure sbPl10000Click(Sender: TObject);
    procedure sbPl12000Click(Sender: TObject);
    procedure sbPl16000Click(Sender: TObject);
    procedure sbPl20000Click(Sender: TObject);
    procedure sbMin80Click(Sender: TObject);
    procedure sbMin125Click(Sender: TObject);
    procedure sbMin250Click(Sender: TObject);
    procedure sbMin500Click(Sender: TObject);
    procedure sbMin800Click(Sender: TObject);
    procedure sbMin1000Click(Sender: TObject);
    procedure sbMin2000Click(Sender: TObject);
    procedure sbMin4000Click(Sender: TObject);
    procedure sbMin6000Click(Sender: TObject);
    procedure sbMin10000Click(Sender: TObject);
    procedure sbMin12000Click(Sender: TObject);
    procedure sbMin16000Click(Sender: TObject);
    procedure sbMin20000Click(Sender: TObject);
    procedure ModeType(vMode: String);
    procedure SetColor(vCor: Integer);
    procedure sbDigitalClick(Sender: TObject);
    procedure sbAnalogicoClick(Sender: TObject);
    procedure tbMusicaChange(Sender: TObject);

  private
    function TemAtributo(Attr, Val: Integer): Boolean;

  public
    Channel: HStream;
    CurrentPlayingFileName: String;
    AdjustingPlaybackPosition: Boolean;
    CurrentIndex: Integer;
    ListItem: TListItem;
    procedure CarregarLista(vfLista: String);

  end;

var
  frmPrincipal: TfrmPrincipal;
  vlTempo: Integer;
  p: BASS_DX8_PARAMEQ;
  fx: array[1..13] of integer;
  vlColIndex: Integer = 0;

implementation

{$R *.dfm}

uses uFuncoesSistema, uSobre, uVarGlobal, uConfigSpectro, uFuncoesList,
uFuncoesTempo, uSavePl, uOpenPlayList, uTagMp3;

function TfrmPrincipal.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

procedure TfrmPrincipal.ListarArquivos(Diretorio: string; Sub:Boolean);
var
F: TSearchRec;
Ret: Integer;
TempNome: string;
vTitulo, vArtista, vAlbum, vYear: String;
begin
  Ret := FindFirst(Diretorio+'\*.mp3', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') then
          if Sub = True then
          begin
            TempNome := Diretorio+'\' + F.Name;
            ListarArquivos(TempNome, True);
          end;
      end
      else
      begin
        JvID3v11.Active := True;
        JvID3v11.FileName := (Diretorio+'\' + F.Name);
        vTitulo := JvID3v11.SongName;
        if vTitulo = '' then
          vTitulo := RemoveExt(ExtractFileName((Diretorio+'\'+F.Name)));
        vArtista := JvID3v11.Artist;
        if vArtista = '' then
          vArtista := 'Não disponível';
        vAlbum := JvID3v11.Album;
        if vAlbum = '' then
          vAlbum := 'Não disponível';
        vYear := JvID3v11.Year;
        if vYear = '' then
          vYear := 'N.D.';
        ListItem := ListView1.Items.Add;
        ListItem.Caption := (Diretorio+'\'+F.Name);
        ListItem.SubItems.Add(vTitulo);
        ListItem.SubItems.Add(vArtista);
        ListItem.SubItems.Add(vAlbum);
        ListItem.SubItems.Add(vYear);
      end;
        Ret := FindNext(F);
    end;
    finally
    begin
      FindClose(F);
    end;
  end;
end;

procedure TfrmPrincipal.CarregarLista(vfLista: String);
var
ListStr: TStringList;
I : integer;
begin
  ListItem := nil;
  Listview1.Items.Clear;
  ListStr := TStringList.Create;
  try
    ListStr.LoadFromFile(vfLista);
    for I := 0 to ListStr.Count - 1 do
    if ListStr[I][1] = #9 then
      ListItem.SubItems.Add(Trim(ListStr[I]))
    else
      if ListStr[I][1] = '@' then
        ListItem.ImageIndex:= StrtoIntDef (ListStr[I][1],0)
      else
      begin
        ListItem := Listview1.Items.Add;
        ListItem.Caption := ListStr[I];
      end;
  finally
    ListStr.Free;
  end;
end;

procedure TfrmPrincipal.SalvarLista;
var
I, J: Integer;
List: TStringList;
begin
  List := TStringList.Create;
  try
    for I := 0 to ListView1.Items.Count - 1 do
    begin
      List.Add(ListView1.Items[I].Caption);
      List.Add('@' + InttoStr(Listview1.Items[I].ImageIndex));
      for J:= 0 to ListView1.Items[I].SubItems.Count-1 do
        List.Add(#9 + ListView1.Items[I].SubItems[J]);
    end;
    List.SaveToFile(ExtractFilePath(Application.ExeName)+ 'PlayList.ply');
    finally
      List.Free;
  end;
end;

procedure TfrmPrincipal.Label8Click(Sender: TObject);
begin
  slider80.Value := 0;
  slider125.Value := 0;
  slider250.Value := 0;
  slider500.Value := 0;
  slider800.Value := 0;
  slider1000.Value := 0;
  slider2000.Value := 0;
  slider4000.Value := 0;
  slider6000.Value := 0;
  slider10000.Value := 0;
  slider12000.Value := 0;
  slider16000.Value := 0;
  slider20000.Value := 0;
end;

procedure TfrmPrincipal.lbLeftClick(Sender: TObject);
begin
  CorBarras;
end;

procedure TfrmPrincipal.lbRightClick(Sender: TObject);
begin
  CorBarras;
end;

procedure TfrmPrincipal.LedL(vfPos: Integer);
Var
vPos: Real;
begin
  vPos := ((vfPos / vgMaxLeft) * 100) + 20;
  if vPos <= 20 then
  begin
    ledL01.LedOn := False;
    ledL02.LedOn := False;
    ledL03.LedOn := False;
    ledL04.LedOn := False;
    ledL05.LedOn := False;
    ledL06.LedOn := False;
    ledL07.LedOn := False;
    ledL08.LedOn := False;
    ledL09.LedOn := False;
    ledL10.LedOn := False;
    LedRedL1.Status := False;
    LedRedL2.Status := False;
    LedRedL3.Status := False;
    LedRedL4.Status := False;
    LedRedL5.Status := False;
    LedRedL6.Status := False;
  end;
  if ((vPos >= 21) and (vPos <= 25)) then
  begin
    ledL01.LedOn := True;
    ledL02.LedOn := False;
    ledL03.LedOn := False;
    ledL04.LedOn := False;
    ledL05.LedOn := False;
    ledL06.LedOn := False;
    ledL07.LedOn := False;
    ledL08.LedOn := False;
    ledL09.LedOn := False;
    ledL10.LedOn := False;
    LedRedL1.Status := True;
    LedRedL2.Status := False;
    LedRedL3.Status := False;
    LedRedL4.Status := False;
    LedRedL5.Status := False;
    LedRedL6.Status := False;
  end;
  if ((vPos >= 26) and (vPos <= 30)) then
  begin
    ledL01.LedOn := True;
    ledL02.LedOn := False;
    ledL03.LedOn := False;
    ledL04.LedOn := False;
    ledL05.LedOn := False;
    ledL06.LedOn := False;
    ledL07.LedOn := False;
    ledL08.LedOn := False;
    ledL09.LedOn := False;
    ledL10.LedOn := False;
    LedRedL1.Status := True;
    LedRedL2.Status := False;
    LedRedL3.Status := False;
    LedRedL4.Status := False;
    LedRedL5.Status := False;
    LedRedL6.Status := False;
  end;
  if ((vPos >= 31) and (vPos <= 35)) then
  begin
    ledL01.LedOn := True;
    ledL02.LedOn := True;
    ledL03.LedOn := False;
    ledL04.LedOn := False;
    ledL05.LedOn := False;
    ledL06.LedOn := False;
    ledL07.LedOn := False;
    ledL08.LedOn := False;
    ledL09.LedOn := False;
    ledL10.LedOn := False;
    LedRedL1.Status := True;
    LedRedL2.Status := True;
    LedRedL3.Status := False;
    LedRedL4.Status := False;
    LedRedL5.Status := False;
    LedRedL6.Status := False;
  end;
  if ((vPos >= 36) and (vPos <= 40)) then
  begin
    ledL01.LedOn := True;
    ledL02.LedOn := True;
    ledL03.LedOn := True;
    ledL04.LedOn := True;
    ledL05.LedOn := False;
    ledL06.LedOn := False;
    ledL07.LedOn := False;
    ledL08.LedOn := False;
    ledL09.LedOn := False;
    ledL10.LedOn := False;
    LedRedL1.Status := True;
    LedRedL2.Status := True;
    LedRedL3.Status := False;
    LedRedL4.Status := False;
    LedRedL5.Status := False;
    LedRedL6.Status := False;
  end;
  if ((vPos >= 41) and (vPos <= 50)) then
  begin
    ledL01.LedOn := True;
    ledL02.LedOn := True;
    ledL03.LedOn := True;
    ledL04.LedOn := True;
    ledL05.LedOn := True;
    ledL06.LedOn := False;
    ledL07.LedOn := False;
    ledL08.LedOn := False;
    ledL09.LedOn := False;
    ledL10.LedOn := False;
    LedRedL1.Status := True;
    LedRedL2.Status := True;
    LedRedL3.Status := True;
    LedRedL4.Status := False;
    LedRedL5.Status := False;
    LedRedL6.Status := False;
  end;
  if ((vPos >= 51) and (vPos <= 60)) then
  begin
    ledL01.LedOn := True;
    ledL02.LedOn := True;
    ledL03.LedOn := True;
    ledL04.LedOn := True;
    ledL05.LedOn := True;
    ledL06.LedOn := True;
    ledL07.LedOn := False;
    ledL08.LedOn := False;
    ledL09.LedOn := False;
    ledL10.LedOn := False;
    LedRedL1.Status := True;
    LedRedL2.Status := True;
    LedRedL3.Status := True;
    LedRedL4.Status := False;
    LedRedL5.Status := False;
    LedRedL6.Status := False;
  end;
  if ((vPos >= 61) and (vPos <= 70)) then
  begin
    ledL01.LedOn := True;
    ledL02.LedOn := True;
    ledL03.LedOn := True;
    ledL04.LedOn := True;
    ledL05.LedOn := True;
    ledL06.LedOn := True;
    ledL07.LedOn := True;
    ledL08.LedOn := False;
    ledL09.LedOn := False;
    ledL10.LedOn := False;
    LedRedL1.Status := True;
    LedRedL2.Status := True;
    LedRedL3.Status := True;
    LedRedL4.Status := False;
    LedRedL5.Status := False;
    LedRedL6.Status := False;
  end;
  if ((vPos >= 71) and (vPos <= 80)) then
  begin
    ledL01.LedOn := True;
    ledL02.LedOn := True;
    ledL03.LedOn := True;
    ledL04.LedOn := True;
    ledL05.LedOn := True;
    ledL06.LedOn := True;
    ledL07.LedOn := True;
    ledL08.LedOn := True;
    ledL09.LedOn := False;
    ledL10.LedOn := False;
    LedRedL1.Status := True;
    LedRedL2.Status := True;
    LedRedL3.Status := True;
    LedRedL4.Status := True;
    LedRedL5.Status := False;
    LedRedL6.Status := False;
  end;
  if ((vPos >= 81) and (vPos <= 90)) then
  begin
    ledL01.LedOn := True;
    ledL02.LedOn := True;
    ledL03.LedOn := True;
    ledL04.LedOn := True;
    ledL05.LedOn := True;
    ledL06.LedOn := True;
    ledL07.LedOn := True;
    ledL08.LedOn := True;
    ledL09.LedOn := True;
    ledL10.LedOn := False;
    LedRedL1.Status := True;
    LedRedL2.Status := True;
    LedRedL3.Status := True;
    LedRedL4.Status := True;
    LedRedL5.Status := False;
    LedRedL6.Status := False;
  end;
  if ((vPos >= 95) and (vPos <= 99)) then
  begin
    ledL01.LedOn := True;
    ledL02.LedOn := True;
    ledL03.LedOn := True;
    ledL04.LedOn := True;
    ledL05.LedOn := True;
    ledL06.LedOn := True;
    ledL07.LedOn := True;
    ledL08.LedOn := True;
    ledL09.LedOn := True;
    ledL10.LedOn := True;
    LedRedL1.Status := True;
    LedRedL2.Status := True;
    LedRedL3.Status := True;
    LedRedL4.Status := True;
    LedRedL5.Status := True;
    LedRedL6.Status := False;
  end;
  if (vPos >= 100) then
  begin
    LedRedL1.Status := True;
    LedRedL2.Status := True;
    LedRedL3.Status := True;
    LedRedL4.Status := True;
    LedRedL5.Status := True;
    LedRedL6.Status := True;
  end;
end;

procedure TfrmPrincipal.ledL10Click(Sender: TObject);
begin
  CorBarras;
end;

procedure TfrmPrincipal.LedR(vfPos: Integer);
Var
vPos: Real;
begin
  vPos := ((vfPos / vgMaxLeft) * 100 + 20);
  if vPos <= 20 then
  begin
    ledR01.LedOn := False;
    ledR02.LedOn := False;
    ledR03.LedOn := False;
    ledR04.LedOn := False;
    ledR05.LedOn := False;
    ledR06.LedOn := False;
    ledR07.LedOn := False;
    ledR08.LedOn := False;
    ledR09.LedOn := False;
    ledR10.LedOn := False;
    LedRedR1.Status := False;
    LedRedR2.Status := False;
    LedRedR3.Status := False;
    LedRedR4.Status := False;
    LedRedR5.Status := False;
    LedRedR6.Status := False;
  end;
  if ((vPos >= 21) and (vPos <= 25)) then
  begin
    ledR01.LedOn := True;
    ledR02.LedOn := False;
    ledR03.LedOn := False;
    ledR04.LedOn := False;
    ledR05.LedOn := False;
    ledR06.LedOn := False;
    ledR07.LedOn := False;
    ledR08.LedOn := False;
    ledR09.LedOn := False;
    ledR10.LedOn := False;
    LedRedR1.Status := True;
    LedRedR2.Status := False;
    LedRedR3.Status := False;
    LedRedR4.Status := False;
    LedRedR5.Status := False;
    LedRedR6.Status := False;
  end;
  if ((vPos >= 26) and (vPos <= 30)) then
  begin
    ledR01.LedOn := True;
    ledR02.LedOn := True;
    ledR03.LedOn := False;
    ledR04.LedOn := False;
    ledR05.LedOn := False;
    ledR06.LedOn := False;
    ledR07.LedOn := False;
    ledR08.LedOn := False;
    ledR09.LedOn := False;
    ledR10.LedOn := False;
    LedRedR1.Status := True;
    LedRedR2.Status := False;
    LedRedR3.Status := False;
    LedRedR4.Status := False;
    LedRedR5.Status := False;
    LedRedR6.Status := False;
  end;
  if ((vPos >= 31) and (vPos <= 35)) then
  begin
    ledR01.LedOn := True;
    ledR02.LedOn := True;
    ledR03.LedOn := True;
    ledR04.LedOn := False;
    ledR05.LedOn := False;
    ledR06.LedOn := False;
    ledR07.LedOn := False;
    ledR08.LedOn := False;
    ledR09.LedOn := False;
    ledR10.LedOn := False;
    LedRedR1.Status := True;
    LedRedR2.Status := True;
    LedRedR3.Status := False;
    LedRedR4.Status := False;
    LedRedR5.Status := False;
    LedRedR6.Status := False;
  end;
  if ((vPos >= 36) and (vPos <= 40)) then
  begin
    ledR01.LedOn := True;
    ledR02.LedOn := True;
    ledR03.LedOn := True;
    ledR04.LedOn := True;
    ledR05.LedOn := False;
    ledR06.LedOn := False;
    ledR07.LedOn := False;
    ledR08.LedOn := False;
    ledR09.LedOn := False;
    ledR10.LedOn := False;
    LedRedR1.Status := True;
    LedRedR2.Status := True;
    LedRedR3.Status := False;
    LedRedR4.Status := False;
    LedRedR5.Status := False;
    LedRedR6.Status := False;
  end;
  if ((vPos >= 41) and (vPos <= 50)) then
  begin
    ledR01.LedOn := True;
    ledR02.LedOn := True;
    ledR03.LedOn := True;
    ledR04.LedOn := True;
    ledR05.LedOn := True;
    ledR06.LedOn := False;
    ledR07.LedOn := False;
    ledR08.LedOn := False;
    ledR09.LedOn := False;
    ledR10.LedOn := False;
    LedRedR1.Status := True;
    LedRedR2.Status := True;
    LedRedR3.Status := True;
    LedRedR4.Status := False;
    LedRedR5.Status := False;
    LedRedR6.Status := False;
  end;
  if ((vPos >= 51) and (vPos <= 60)) then
  begin
    ledR01.LedOn := True;
    ledR02.LedOn := True;
    ledR03.LedOn := True;
    ledR04.LedOn := True;
    ledR05.LedOn := True;
    ledR06.LedOn := True;
    ledR07.LedOn := False;
    ledR08.LedOn := False;
    ledR09.LedOn := False;
    ledR10.LedOn := False;
    LedRedR1.Status := True;
    LedRedR2.Status := True;
    LedRedR3.Status := True;
    LedRedR4.Status := False;
    LedRedR5.Status := False;
    LedRedR6.Status := False;
  end;
  if ((vPos >= 61) and (vPos <= 70)) then
  begin
    ledR01.LedOn := True;
    ledR02.LedOn := True;
    ledR03.LedOn := True;
    ledR04.LedOn := True;
    ledR05.LedOn := True;
    ledR06.LedOn := True;
    ledR07.LedOn := True;
    ledR08.LedOn := False;
    ledR09.LedOn := False;
    ledR10.LedOn := False;
    LedRedR1.Status := True;
    LedRedR2.Status := True;
    LedRedR3.Status := True;
    LedRedR4.Status := False;
    LedRedR5.Status := False;
    LedRedR6.Status := False;
  end;
  if ((vPos >= 71) and (vPos <= 80)) then
  begin
    ledR01.LedOn := True;
    ledR02.LedOn := True;
    ledR03.LedOn := True;
    ledR04.LedOn := True;
    ledR05.LedOn := True;
    ledR06.LedOn := True;
    ledR07.LedOn := True;
    ledR08.LedOn := True;
    ledR09.LedOn := False;
    ledR10.LedOn := False;
    LedRedR1.Status := True;
    LedRedR2.Status := True;
    LedRedR3.Status := True;
    LedRedR4.Status := True;
    LedRedR5.Status := False;
    LedRedR6.Status := False;
  end;
  if ((vPos >= 81) and (vPos <= 90)) then
  begin
    ledR01.LedOn := True;
    ledR02.LedOn := True;
    ledR03.LedOn := True;
    ledR04.LedOn := True;
    ledR05.LedOn := True;
    ledR06.LedOn := True;
    ledR07.LedOn := True;
    ledR08.LedOn := True;
    ledR09.LedOn := True;
    ledR10.LedOn := False;
    LedRedR1.Status := True;
    LedRedR2.Status := True;
    LedRedR3.Status := True;
    LedRedR4.Status := True;
    LedRedR5.Status := False;
    LedRedR6.Status := False;
  end;
  if ((vPos >= 95) and (vPos <= 99)) then
  begin
    ledR01.LedOn := True;
    ledR02.LedOn := True;
    ledR03.LedOn := True;
    ledR04.LedOn := True;
    ledR05.LedOn := True;
    ledR06.LedOn := True;
    ledR07.LedOn := True;
    ledR08.LedOn := True;
    ledR09.LedOn := True;
    ledR10.LedOn := True;
    LedRedR1.Status := True;
    LedRedR2.Status := True;
    LedRedR3.Status := True;
    LedRedR4.Status := True;
    LedRedR5.Status := True;
    LedRedR6.Status := False;
  end;
  if (vPos >= 100) then
  begin
    LedRedR1.Status := True;
    LedRedR2.Status := True;
    LedRedR3.Status := True;
    LedRedR4.Status := True;
    LedRedR5.Status := True;
    LedRedR6.Status := True;
  end;
end;

procedure TfrmPrincipal.ListView1ColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  vlColIndex := Column.Index;
  ListView1.AlphaSort;
end;

procedure TfrmPrincipal.ListView1Compare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
begin
  if vlColIndex = 0 Then
    Compare := CompareText(Item1.Caption, Item2.Caption)
  else
    Compare := CompareText(Item1.SubItems[vlColIndex - 1], Item2.SubItems[vlColIndex - 1]);
end;

procedure TfrmPrincipal.ListView1DblClick(Sender: TObject);
begin
  sbPlay.Click;
end;

procedure TfrmPrincipal.CarregaCfg;
Var
vControl: TInifile;
begin
  vControl := Tinifile.create(vgArqIni);
  vgOscCor := vControl.ReadString('Osciloscopio', 'Cor', '');
  vgCorPeakHolder := vControl.ReadString('Spectro', 'CorPeak', '');
  vgCorSpectro := vControl.ReadString('Spectro', 'CorSpectro', '');
  vgCorBarras := vControl.ReadString('Barras', 'Cor', '');
  vgVelPeak := vControl.ReadString('Spectro', 'VelPeak', '');
  vgVelBar := vControl.ReadString('Spectro', 'VelBar', '');
  vgPeakHolder := vControl.ReadString('Spectro', 'PeakHolder', '');
  vgTipoBarras := vControl.ReadString('Barras', 'Tipo', '');
  vgLargura := StrToInt(vControl.ReadString('Spectro', 'Largura', ''));
  slider80.Value := StrToInt(vControl.ReadString('Equalizador', '80', ''));
  slider125.Value := StrToInt(vControl.ReadString('Equalizador', '125', ''));
  slider250.Value := StrToInt(vControl.ReadString('Equalizador', '250', ''));
  slider500.Value := StrToInt(vControl.ReadString('Equalizador', '500', ''));
  slider800.Value := StrToInt(vControl.ReadString('Equalizador', '800', ''));
  slider1000.Value := StrToInt(vControl.ReadString('Equalizador', '1000', ''));
  slider2000.Value := StrToInt(vControl.ReadString('Equalizador', '2000', ''));
  slider4000.Value := StrToInt(vControl.ReadString('Equalizador', '4000', ''));
  slider6000.Value := StrToInt(vControl.ReadString('Equalizador', '6000', ''));
  slider10000.Value := StrToInt(vControl.ReadString('Equalizador', '10000', ''));
  slider12000.Value := StrToInt(vControl.ReadString('Equalizador', '12000', ''));
  slider16000.Value := StrToInt(vControl.ReadString('Equalizador', '16000', ''));
  slider20000.Value := StrToInt(vControl.ReadString('Equalizador', '20000', ''));
  vgPlaylists := vControl.ReadString('Playlist', 'Pasta', '');
  vControl.Free;
  SetCfg;
end;

procedure TfrmPrincipal.SetCfg;
begin
  Spectrum.Mode := 1;
  Spectrum.Width := vgLargura;
  if vgPeakHolder = '0' then
    Spectrum.DrawPeak := False
  else
    Spectrum.DrawPeak := True;
  Spectrum.LineFallOff := StrToInt(vgVelBar);
  Spectrum.PeakFallOff := StrToInt(vgVelPeak);
  Spectrum.Pen := StringToColor(vgCorSpectro);
  Spectrum.Peak := StringToColor(vgCorPeakHolder);
  OcilloScope.Pen := StringToColor(vgOscCor);
  SetColor(StringToColor(vgCorBarras));
  SetTipo(vgTipoBarras);
end;

procedure TfrmPrincipal.sbPlayListClick(Sender: TObject);
begin
  ShowHidePlayList;
end;

procedure TfrmPrincipal.ShowHidePlayList;
begin
  if frmPrincipal.Height = 440 then
  begin
    frmPrincipal.Top := 40;
    frmPrincipal.Height := 680;
  end
  else
  begin
    frmPrincipal.Top := 80;
    frmPrincipal.Height := 440;
  end;
end;

procedure TfrmPrincipal.ClearTime;
begin
  lbTempoTotal.Caption := '';
end;

procedure TfrmPrincipal.GerarTags(vfFile: String);
begin
  ClearTag;
  if JvID3v11.SongName <> '' then
    lbTitle.Caption := JvID3v11.SongName
  else
    lbTitle.Caption := RemoveExt(ExtractFileName(vfFile));
  if JvID3v11.Artist <> '' then
    lbArtista.Caption := JvID3v11.Artist
  else
    lbArtista.Caption := 'sem artista';
  if JvID3v11.Album <> '' then
    lbAlbum.Caption := JvID3v11.Album
  else
    lbAlbum.Caption := 'sem album';
  if JvID3v11.Year <> '' then
    lbAlbum.Caption := lbAlbum.Caption +  ' - ' + JvID3v11.Year
  else
    lbAlbum.Caption := lbAlbum.Caption +  ' - sem ano';
end;

procedure TfrmPrincipal.DisplayTempoClick(Sender: TObject);
begin
  CorBarras;
end;

procedure TfrmPrincipal.CorBarras;
Var
vControl: TIniFile;
vTipo: String;
begin
  if ColorDialogBarras.Execute then
  begin
    vControl := Tinifile.create(vgArqIni);
    vTipo := vControl.ReadString('Barras', 'Tipo', '');
    vControl.WriteString('Barras', 'Cor', ColorToString(ColorDialogBarras.Color));
    SetColor(ColorDialogBarras.Color);
    vControl.WriteString('Barras', 'Tipo',  vTipo);
    vControl.Free;
  end;
end;

procedure TfrmPrincipal.SetTipo(vfTipo: String);
begin
  vgTipoBarras := vfTipo;
  if vfTipo = 'D' then
    ModeType('D')
  else
    ModeType('A');
end;

//--- Equalizador (início) -----------------------------------------------------

procedure TfrmPrincipal.slider80Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[1], @p);
  p.fgain := slider80.value;
  BASS_FXSetParameters(fx[1], @p);
  slider80.Hint := '80 Hz (' + IntToStr(slider80.Value) + ' dB)';
  ga80H.Progress := slider80.Value;
  ga80H.Hint := '80 Hz (' + IntToStr(slider80.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider125Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[2], @p);
  p.fgain := slider125.value;
  BASS_FXSetParameters(fx[2], @p);
  slider125.Hint := '125 Hz (' + IntToStr(slider125.Value) + ' dB)';
  ga125H.Progress := slider125.Value;
  ga125H.Hint := '125 Hz (' + IntToStr(slider125.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider250Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[3], @p);
  p.fgain := slider250.value;
  BASS_FXSetParameters(fx[3], @p);
  slider250.Hint := '250 Hz (' + IntToStr(slider250.Value) + ' dB)';
  ga250H.Progress := slider250.Value;
  ga250H.Hint := '250 Hz (' + IntToStr(slider250.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider500Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[4], @p);
  p.fgain := slider500.value;
  BASS_FXSetParameters(fx[4], @p);
  slider500.Hint := '500 Hz (' + IntToStr(slider500.Value) + ' dB)';
  ga500H.Progress := slider500.Value;
  ga500H.Hint := '500 Hz (' + IntToStr(slider500.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider800Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[5], @p);
  p.fgain := slider800.value;
  BASS_FXSetParameters(fx[5], @p);
  slider800.Hint := '800 Hz (' + IntToStr(slider800.Value) + ' dB)';
  ga800H.Progress := slider800.Value;
  ga800H.Hint := '800 Hz (' + IntToStr(slider800.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider1000Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[6], @p);
  p.fgain := slider1000.value;
  BASS_FXSetParameters(fx[6], @p);
  slider1000.Hint := '1 KHz (' + IntToStr(slider1000.Value) + ' dB)';
  ga1K.Progress := slider1000.Value;
  ga1K.Hint := '1 KHz (' + IntToStr(slider1000.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider2000Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[7], @p);
  p.fgain := slider2000.value;
  BASS_FXSetParameters(fx[7], @p);
  slider2000.Hint := '2 KHz (' + IntToStr(slider2000.Value) + ' dB)';
  ga2K.Progress := slider2000.Value;
  ga2K.Hint := '2 KHz (' + IntToStr(slider2000.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider4000Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[8], @p);
  p.fgain := slider4000.value;
  BASS_FXSetParameters(fx[8], @p);
  slider4000.Hint := '4 KHz (' + IntToStr(slider4000.Value) + ' dB)';
  ga4K.Progress := slider4000.Value;
  ga4K.Hint := '4 KHz (' + IntToStr(slider4000.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider6000Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[9], @p);
  p.fgain := slider6000.value;
  BASS_FXSetParameters(fx[9], @p);
  slider6000.Hint := '6 KHz (' + IntToStr(slider6000.Value) + ' dB)';
  ga6K.Progress := slider6000.Value;
  ga6K.Hint := '6 KHz (' + IntToStr(slider6000.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider10000Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[10], @p);
  p.fgain := slider10000.value;
  BASS_FXSetParameters(fx[10], @p);
  slider10000.Hint := '10 KHz (' + IntToStr(slider10000.Value) + ' dB)';
  ga10K.Progress := slider10000.Value;
  ga10K.Hint := '10 KHz (' + IntToStr(slider10000.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider12000Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[11], @p);
  p.fgain := slider12000.value;
  BASS_FXSetParameters(fx[11], @p);
  slider12000.Hint := '12 KHz (' + IntToStr(slider12000.Value) + ' dB)';
  ga12K.Progress := slider12000.Value;
  ga12K.Hint := '12 KHz (' + IntToStr(slider12000.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider16000Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[12], @p);
  p.fgain := slider16000.value;
  BASS_FXSetParameters(fx[12], @p);
  slider16000.Hint := '16 KHz (' + IntToStr(slider16000.Value) + ' dB)';
  ga16K.Progress := slider16000.Value;
  ga16K.Hint := '16 KHz (' + IntToStr(slider16000.Value) + ' dB)';
end;

procedure TfrmPrincipal.slider20000Change(Sender: TObject);
begin
  BASS_FXGetParameters(fx[13], @p);
  p.fgain := slider20000.value;
  BASS_FXSetParameters(fx[13], @p);
  slider20000.Hint := '20 KHz (' + IntToStr(slider20000.Value) + ' dB)';
  ga20K.Progress := slider20000.Value;
  ga20K.Hint := '20 KHz (' + IntToStr(slider20000.Value) + ' dB)';
end;

//--- Equalizador (final) ------------------------------------------------------

procedure TfrmPrincipal.sbSaveClick(Sender: TObject);
begin
  frmSavePl.ShowModal;
end;

procedure TfrmPrincipal.sbExcludeClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir a playlist?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    ListView1.Clear;
end;

procedure TfrmPrincipal.sbMin10000Click(Sender: TObject);
begin
  slider10000.Value := slider10000.Value - 1;
end;

procedure TfrmPrincipal.sbMin1000Click(Sender: TObject);
begin
  slider1000.Value := slider1000.Value - 1;
end;

procedure TfrmPrincipal.sbMin12000Click(Sender: TObject);
begin
  slider12000.Value := slider12000.Value - 1;
end;

procedure TfrmPrincipal.sbMin125Click(Sender: TObject);
begin
  slider125.Value := slider125.Value - 1;
end;

procedure TfrmPrincipal.sbMin16000Click(Sender: TObject);
begin
  slider16000.Value := slider16000.Value - 1;
end;

procedure TfrmPrincipal.sbMin20000Click(Sender: TObject);
begin
  slider20000.Value := slider20000.Value - 1;
end;

procedure TfrmPrincipal.sbMin2000Click(Sender: TObject);
begin
  slider2000.Value := slider2000.Value - 1;
end;

procedure TfrmPrincipal.sbMin250Click(Sender: TObject);
begin
  slider250.Value := slider250.Value - 1;
end;

procedure TfrmPrincipal.sbMin4000Click(Sender: TObject);
begin
  slider4000.Value := slider4000.Value - 1;
end;

procedure TfrmPrincipal.sbMin500Click(Sender: TObject);
begin
  slider500.Value := slider500.Value - 1;
end;

procedure TfrmPrincipal.sbMin6000Click(Sender: TObject);
begin
  slider6000.Value := slider6000.Value - 1;
end;

procedure TfrmPrincipal.sbMin800Click(Sender: TObject);
begin
  slider800.Value := slider800.Value - 1;
end;

procedure TfrmPrincipal.sbMin80Click(Sender: TObject);
begin
  slider80.Value := slider80.Value - 1;
end;

procedure TfrmPrincipal.sbAddDirClick(Sender: TObject);
begin
  if JvBrowseForFolderDialog.Execute then
  begin
    ListarArquivos(JvBrowseForFolderDialog.Directory, false);
    vlColIndex := 0;
  end;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  if ListView1.Items.Count > 0 then
  begin
    vgMusicaTag := ListView1.Items[ListView1.Selected.Index].Caption;
    if FileExists(vgMusicaTag) then
      frmTagMp3.ShowModal
    else
      MessageDlg('A música foi excluída ou renomeada!', mtWarning, [mbOk], 0);
  end;
end;

procedure TfrmPrincipal.sbDigitalClick(Sender: TObject);
Var
vControl: TIniFile;
vTipo: String;
begin
  vControl := Tinifile.create(vgArqIni);
  vTipo := vControl.ReadString('Barras', 'Tipo', '');
  vTipo := 'D';
  vControl.WriteString('Barras', 'Tipo',  vTipo);
  vControl.Free;
  SetTipo(vTipo);
end;

procedure TfrmPrincipal.sbAnalogicoClick(Sender: TObject);
Var
vControl: TIniFile;
vTipo: String;
begin
  vControl := Tinifile.create(vgArqIni);
  vTipo := vControl.ReadString('Barras', 'Tipo', '');
  vTipo := 'A';
  vControl.WriteString('Barras', 'Tipo',  vTipo);
  vControl.Free;
  SetTipo(vTipo);
end;

procedure TfrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
  frmPrincipal.Top := 80;
  frmPrincipal.Height := 385;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvarEq;
  SalvarLista;
end;

procedure TfrmPrincipal.SalvarEq;
Var
vControl: TIniFile;
begin
  vControl := TIniFile.Create(vgArqIni);
  vControl.WriteString('Equalizador', '80', IntToStr(slider80.Value));
  vControl.WriteString('Equalizador', '125', IntToStr(slider125.Value));
  vControl.WriteString('Equalizador', '250', IntToStr(slider250.Value));
  vControl.WriteString('Equalizador', '500', IntToStr(slider500.Value));
  vControl.WriteString('Equalizador', '800', IntToStr(slider800.Value));
  vControl.WriteString('Equalizador', '1000', IntToStr(slider1000.Value));
  vControl.WriteString('Equalizador', '2000', IntToStr(slider2000.Value));
  vControl.WriteString('Equalizador', '4000', IntToStr(slider4000.Value));
  vControl.WriteString('Equalizador', '60000', IntToStr(slider6000.Value));
  vControl.WriteString('Equalizador', '10000', IntToStr(slider10000.Value));
  vControl.WriteString('Equalizador', '12000', IntToStr(slider12000.Value));
  vControl.WriteString('Equalizador', '16000', IntToStr(slider16000.Value));
  vControl.WriteString('Equalizador', '20000', IntToStr(slider20000.Value));
  vControl.Free;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Messagedlg('Deseja realmente sair?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    CanClose := true
  else
    CanClose := false;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
vVolume: Double;
vLista: String;
begin
  DisplayTempo.Text := '';
  DisplayVolume.Text := '';
  vlColIndex := 0;
  vLista := ExtractFilePath(Application.ExeName) + 'PlayList.ply';
  frmPrincipal.Height := 440;
  JvID3v11.Active := True;
  CarregarLista(vLista);
  CurrentIndex := 0;
  ClearTag;
  ClearTime;
  vgPath := DiretorioSemBarra(ExtractFileDir(Application.exename));
  vgArqIni := (vgPath + '\' + RetornaExecutavelSemExtensao + '.ini');
  //Spectro
  Spectrum := TSpectrum.Create(PaintFrame.Width, PaintFrame.Height);
  //Osciloscópio
  OcilloScope := TOcilloScope.Create(PaintOsciloscope.Width, PaintOsciloscope.Height);
  OcilloScope.Mode := 0;
  CarregaCfg;
  //* Create both Tag classes
  Self.Caption := 'NPlayer - Vs. ' + VersaoSistema(0);
  //* Never forget to init BASS
  BASS_Init(-1, 44100, 0, Self.Handle, 0);
  //* Set VU max. values
  pbLeft.MaxValue := High(Word) div 2 + 1;
  pbRight.MaxValue := High(Word) div 2 + 1;
  vgMaxLeft := High(Word) div 2 + 1;
  vgMaxRight := High(Word) div 2 + 1;
  AnalogLeft.Scale := High(Word) div 2 + 1;
  AnalogLeft.IndMaximum := Round(AnalogLeft.Scale * 0.7);
  AnalogRight.Scale := High(Word) div 2 + 1;
  AnalogRight.IndMaximum := Round(AnalogLeft.Scale * 0.7);
  //* Get current volume
  vVolume := BASS_GetVolume;
  tbVolume.Position := 100 - Round(vVolume * 100);
  DisplayVolume.Text := FormatFloat('000', (100 - tbVolume.Position));
  Timer1.Enabled := true;
end;

procedure TfrmPrincipal.ClearTag;
begin
  lbTitle.Caption := '';
  lbArtista.Caption := '';
  lbAlbum.Caption := '';
end;

procedure StreamEndCallback(handle: HSYNC; channel, data: DWORD; user: Pointer); stdcall;
begin
  frmPrincipal.PlayNext;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  Bass_Stop();
  BASS_StreamFree(Channel);
  BASS_MusicFree(Channel);
  BASS_Free;
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //Foco no volume
  if ((key = 'v') or (key = 'V')) then
    tbVolume.SetFocus;
  if ((key = 'p') or (key = 'P')) then
    ShowHidePlayList;
  if ((key = 'e') or (key = 'E')) then
    if slider80.Visible = true then
      slider80.SetFocus;
end;

procedure TfrmPrincipal.PaintFrameDblClick(Sender: TObject);
begin
  frmConfigSpectro.ShowModal;
  //Carrega nova configuração do .ini
  SalvarEq;
  CarregaCfg;
  SetCfg;
end;

procedure TfrmPrincipal.PaintOsciloscopeDblClick(Sender: TObject);
Var
vControl: TIniFile;
vOscCor: String;
begin
  if ColorDialogOsc.Execute then
  begin
    vControl := Tinifile.create(vgArqIni);
    vControl.WriteString('Osciloscopio', 'Cor', ColorToString(ColorDialogOsc.Color));
    vOscCor := ColorToString(ColorDialogOsc.Color);
    OcilloScope.Pen := StringToColor(vOscCor);
    vControl.Free;
  end;
end;

procedure TfrmPrincipal.PlayNext;
var
i: Integer;
begin
  for i := 0 to ListView1.Items.Count - 1 do
  begin
    if ListView1.Items.Item[i].Caption = CurrentPlayingFileName then
    begin
      CurrentIndex := i;
      Break;
    end;
  end;
  if CurrentIndex < ListView1.Items.Count - 1 then
  begin
    if FileExists(ListView1.Items.Item[CurrentIndex + 1].Caption) then
    begin
      PlayStream(ListView1.Items.Item[CurrentIndex + 1].Caption);
      lbTempoTotal.Caption := MSecToTime((round(BASS_ChannelBytes2Seconds(Channel, BASS_ChannelGetLength(Channel, BASS_POS_BYTE)))) * 1000);
      JvID3v11.FileName := (ListView1.Items.Item[CurrentIndex + 1].Caption);
      GerarTags(ListView1.Items.Item[CurrentIndex + 1].Caption);
    end
    else
      MessageDlg('Arquivo ' + (ListView1.Items.Item[CurrentIndex + 1].Caption) + ' não encontrado!', mtWarning, [mbOk], 0);
  end;
  if CurrentIndex = ListView1.Items.Count - 1 then
  begin
    if FileExists(ListView1.Items.Item[0].Caption) then
    begin
      PlayStream(ListView1.Items.Item[0].Caption);
      lbTempoTotal.Caption := MSecToTime((round(BASS_ChannelBytes2Seconds(Channel, BASS_ChannelGetLength(Channel, BASS_POS_BYTE)))) * 1000);
      JvID3v11.FileName := (ListView1.Items.Item[0].Caption);
      GerarTags(ListView1.Items.Item[0].Caption);
    end
    else
      MessageDlg('Arquivo ' + (ListView1.Items.Item[CurrentIndex + 1].Caption) + ' não encontrado!', mtWarning, [mbOk], 0);
  end;
end;

procedure TfrmPrincipal.PlayStream(FileName: String);
begin
  if FileExists(FileName) then
  begin
    BASS_MusicFree(Channel);
    BASS_StreamFree(Channel);
    Channel := BASS_StreamCreateFile(False, PChar(FileName), 0, 0, BASS_UNICODE OR BASS_STREAM_AUTOFREE);
    if (Channel = 0) then
      Channel := BASS_MusicLoad(FALSE, PChar(FileName), 0, 0, BASS_MUSIC_MONO or BASS_MUSIC_RAMP or BASS_SAMPLE_FX {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF}, 0);
    BASS_ChannelSetSync(Channel, BASS_SYNC_END, 0, @StreamEndCallback, 0);
    CurrentPlayingFileName := FileName;
    tbMusica.MaxValue := BASS_ChannelGetLength(Channel, BASS_POS_BYTE);
    lbTempoTotal.Caption := MSecToTime((round(BASS_ChannelBytes2Seconds(Channel, BASS_ChannelGetLength(Channel, BASS_POS_BYTE)))) * 1000);
    BASS_ChannelPlay(Channel, True);

    //Equalizador --------------------------------------------------------------
    fx[1] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[2] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[3] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[4] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[5] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[6] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[7] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[8] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[9] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[10] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[11] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[12] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[13] := BASS_ChannelSetFX(Channel, BASS_FX_DX8_PARAMEQ, 1);
    p.fBandwidth := 18;
    p.fGain := slider80.Value;
    p.fCenter := 80;
    BASS_FXSetParameters(fx[1], @p);
    p.fGain := slider125.Value;
    p.fCenter := 125;
    BASS_FXSetParameters(fx[2], @p);
    p.fGain := slider250.Value;
    p.fCenter := 250;
    BASS_FXSetParameters(fx[3], @p);
    p.fGain := slider500.Value;
    p.fCenter := 500;
    BASS_FXSetParameters(fx[4], @p);
    p.fGain := slider800.Value;
    p.fCenter := 800;
    BASS_FXSetParameters(fx[5], @p);
    p.fGain := slider1000.Value;
    p.fCenter := 1000;
    BASS_FXSetParameters(fx[6], @p);
    p.fGain := slider2000.Value;
    p.fCenter := 2000;
    BASS_FXSetParameters(fx[7], @p);
    p.fGain := slider4000.Value;
    p.fCenter := 4000;
    BASS_FXSetParameters(fx[8], @p);
    p.fGain := slider6000.Value;
    p.fCenter := 6000;
    BASS_FXSetParameters(fx[9], @p);
    p.fGain := slider10000.Value;
    p.fCenter := 10000;
    BASS_FXSetParameters(fx[10], @p);
    p.fGain := slider12000.Value;
    p.fCenter := 12000;
    BASS_FXSetParameters(fx[11], @p);
    p.fGain := slider16000.Value;
    p.fCenter := 16000;
    BASS_FXSetParameters(fx[12], @p);
    p.fGain := slider20000.Value;
    p.fCenter := 20000;
    BASS_FXSetParameters(fx[13], @p);

    //Dados da TAG ID MP3 ------------------------------------------------------
    ClearTag;
    if Assigned(ListView1.Selected) then
    begin
      JvID3v11.FileName := (ListView1.Selected.Caption);
      GerarTags(ListView1.Selected.Caption);
    end
    else
    begin
      JvID3v11.FileName := (ListView1.Items.Item[1].Caption);
      GerarTags(ListView1.Items.Item[1].Caption);
    end;
  end
  else
    MessageDlg('Arquivo ' + (ListView1.Items.Item[0].Caption) + ' não encontrado!', mtWarning, [mbOk], 0);
end;

procedure TfrmPrincipal.pnVolumeDblClick(Sender: TObject);
begin
  CorBarras;
end;

procedure TfrmPrincipal.sbNextClick(Sender: TObject);
begin
  BASS_ChannelStop(Channel);
  pbLeft.Progress := 0;
  pbRight.Progress := 0;
  AnalogLeft.Position := 0;
  AnalogRight.Position := 0;
  PaintFrame.Refresh;
  PaintOsciloscope.Refresh;
  PlayNext;
end;

procedure TfrmPrincipal.sbOpenClick(Sender: TObject);
begin
  frmOpenPlaylist.ShowModal;
end;

procedure TfrmPrincipal.sbPauseClick(Sender: TObject);
begin
  if BASS_ChannelIsActive(Channel) = BASS_ACTIVE_PLAYING then
  begin
    BASS_ChannelPause(Channel);
  end
  else
  begin
    BASS_ChannelPlay(Channel, False);
  end;
end;

procedure TfrmPrincipal.sbPl10000Click(Sender: TObject);
begin
  slider10000.Value := slider10000.Value + 1;
end;

procedure TfrmPrincipal.sbPl1000Click(Sender: TObject);
begin
  slider1000.Value := slider1000.Value + 1;
end;

procedure TfrmPrincipal.sbPl12000Click(Sender: TObject);
begin
  slider12000.Value := slider12000.Value + 1;
end;

procedure TfrmPrincipal.sbPl125Click(Sender: TObject);
begin
  slider125.Value := slider125.Value + 1;
end;

procedure TfrmPrincipal.sbPl16000Click(Sender: TObject);
begin
  slider16000.Value := slider16000.Value + 1;
end;

procedure TfrmPrincipal.sbPl20000Click(Sender: TObject);
begin
  slider20000.Value := slider20000.Value + 1;
end;

procedure TfrmPrincipal.sbPl2000Click(Sender: TObject);
begin
  slider2000.Value := slider2000.Value + 1;
end;

procedure TfrmPrincipal.sbPl250Click(Sender: TObject);
begin
  slider250.Value := slider250.Value + 1;
end;

procedure TfrmPrincipal.sbPl4000Click(Sender: TObject);
begin
  slider4000.Value := slider4000.Value + 1;
end;

procedure TfrmPrincipal.sbPl500Click(Sender: TObject);
begin
  slider500.Value := slider500.Value + 1;
end;

procedure TfrmPrincipal.sbPl6000Click(Sender: TObject);
begin
  slider6000.Value := slider6000.Value + 1;
end;

procedure TfrmPrincipal.sbPl800Click(Sender: TObject);
begin
  slider800.Value := slider800.Value + 1;
end;

procedure TfrmPrincipal.sbPl80Click(Sender: TObject);
begin
  slider80.Value := slider80.Value + 1;
end;

procedure TfrmPrincipal.sbPlayClick(Sender: TObject);
Var
vMusica: String;
begin
  BASS_ChannelStop(Channel);
  if Assigned(ListView1.Selected) then
  begin
    BASS_StreamFree(Channel);
    vMusica := ListView1.Selected.Caption;
  end
  else
  begin
    if ListView1.Items.Count > 0 then
    begin
      ListView1.Items.Item[0].Selected := True;
      ListView1.SetFocus;
      vMusica := ListView1.Items.Item[0].Caption;
    end;
  end;
  PlayStream(vMusica);
end;

procedure TfrmPrincipal.sbSobreClick(Sender: TObject);
begin
  frmSobre.ShowModal;
end;

procedure TfrmPrincipal.sbStopClick(Sender: TObject);
begin
  BASS_ChannelStop(Channel);
  pbLeft.Progress := 0;
  pbRight.Progress := 0;
  AnalogLeft.Position := 0;
  AnalogRight.Position := 0;
  LedL(0);
  LedR(0);
  PaintFrame.Refresh;
  PaintOsciloscope.Refresh;
  ClearTag;
end;

procedure TfrmPrincipal.sbAddListClick(Sender: TObject);
var
vTitulo, vArtista, vAlbum, vYear: String;
begin
  if OpenDialog.Execute then
  begin
    JvID3v11.Active := True;
    JvID3v11.FileName := OpenDialog.FileName;
    vTitulo := JvID3v11.SongName;
    if vTitulo = '' then
      vTitulo := RemoveExt(ExtractFileName(Opendialog.FileName));
    vArtista := JvID3v11.Artist;
    if vArtista = '' then
      vArtista := 'Não disponível';
    vAlbum := JvID3v11.Album;
    if vAlbum = '' then
      vAlbum := 'Não disponível';
    vYear := JvID3v11.Year;
    if vYear = '' then
      vYear := 'N.D.';
    ListItem := ListView1.Items.Add;
    ListItem.Caption := OpenDialog.FileName;
    ListItem.SubItems.Add(vTitulo);
    ListItem.SubItems.Add(vArtista);
    ListItem.SubItems.Add(vAlbum);
    ListItem.SubItems.Add(vYear);
  end;
end;

procedure TfrmPrincipal.sbCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.sbDeletePLClick(Sender: TObject);
begin
  if Listview1.ItemIndex <> -1 then
  begin
    ListItem:= ListView1.Selected;
    Listitem.Delete;
  end
  else
    MessageDlg('Selecione um item para poder excluir!!', mtWarning, [mbOk], 0);
end;

procedure TfrmPrincipal.tbMusicaChange(Sender: TObject);
begin
  if NOT AdjustingPlaybackPosition then
  begin
    BASS_ChannelSetPosition(Channel, tbMusica.Value, BASS_POS_BYTE);
  end;
end;

procedure TfrmPrincipal.tbVolumeChange(Sender: TObject);
var
Volume: Double;
begin
  Volume := (100 - tbVolume.Position) / tbVolume.Max;
  BASS_SetVolume(Volume);
  tbVolume.Hint := IntToStr(100 - tbVolume.Position);
  DisplayVolume.Text := FormatFloat('000', (100 - tbVolume.Position));
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
var
Level: Cardinal;
LeftLevel: Word;
RightLevel: Word;
FFTFata: TFFTData;
WaveData  : TWaveData;
vX, vY: Integer;
begin
  lbPosAtual.Caption := MSecToTime((round(BASS_ChannelBytes2Seconds(Channel, BASS_ChannelGetPosition(Channel, BASS_POS_BYTE)))) * 1000);
  DisplayTempo.Text := lbPosAtual.Caption;
  //Posição do spectro
  vX := 40;
  vY := 50;
  //VU de volume
  Level := BASS_ChannelGetLevel(Channel);
  //* Separate L & R channel
  LeftLevel := LoWord(Level);
  RightLevel := HiWord(Level);
  //* Set the VUs
  if BASS_ChannelIsActive(Channel) = BASS_ACTIVE_PLAYING then
  begin
    pbLeft.Progress := LeftLevel;
    pbRight.Progress := RightLevel;
    pbLeft.Progress := pbLeft.Progress - 1000;
    pbRight.Progress := pbRight.Progress - 1000;
    //Leds "TOJO" e VU analógico
    LedL(pbLeft.Progress);
    LedR(pbRight.Progress);
    //VU Analógivo
    AnalogLeft.Position := pbLeft.Progress;
    AnalogRight.Position := pbRight.Progress;
  end;
  //* Playing position
  AdjustingPlaybackPosition := True;
  tbMusica.Value := BASS_ChannelGetPosition(Channel, BASS_POS_BYTE);
  AdjustingPlaybackPosition := False;
  //Renderização
  if BASS_ChannelIsActive(Channel) <> BASS_ACTIVE_PLAYING then
    Exit;
  //Spectro
  BASS_ChannelGetData(Channel, @FFTFata, BASS_DATA_FFT1024);
  Spectrum.Draw(PaintFrame.Canvas.Handle, FFTFata, vX - 40, vY - 60);
  //Osciloscópio
  BASS_ChannelGetData(Channel, @WaveData, 2048);
  OcilloScope.Draw(PaintOsciloscope.Canvas.Handle, WaveData, vX - 50, vY);
end;

procedure TfrmPrincipal.ModeType(vMode: String);
begin
  if vMode = 'D' then
  begin
    //Digital
    PanelLeds.Visible := False;
    ledL01.Visible := False;
    ledL02.Visible := False;
    ledL03.Visible := False;
    ledL04.Visible := False;
    ledL05.Visible := False;
    ledL06.Visible := False;
    ledL07.Visible := False;
    ledL08.Visible := False;
    ledL09.Visible := False;
    ledL10.Visible := False;
    ledR01.Visible := False;
    ledR02.Visible := False;
    ledR03.Visible := False;
    ledR04.Visible := False;
    ledR05.Visible := False;
    ledR06.Visible := False;
    ledR07.Visible := False;
    ledR08.Visible := False;
    ledR09.Visible := False;
    ledR10.Visible := False;
    AnalogLeft.Visible := False;
    AnalogRight.Visible := False;
    panelOsciloscope.Visible := True;
    panelSpectro.Visible := True;
    //Digital
    lbLeft.Visible := True;
    lbRight.Visible := True;
    pbLeft.Visible := True;
    pbRight.Visible := True;
    imgLeft.Visible := True;
    imgRight.Visible := True;
    sbPl80.Visible := True;
    sbPl125.Visible := True;
    sbPl250.Visible := True;
    sbPl500.Visible := True;
    sbPl800.Visible := True;
    sbPl1000.Visible := True;
    sbPl2000.Visible := True;
    sbPl4000.Visible := True;
    sbPl6000.Visible := True;
    sbPl10000.Visible := True;
    sbPl12000.Visible := True;
    sbPl16000.Visible := True;
    sbPl20000.Visible := True;
    sbMin80.Visible := True;
    sbMin125.Visible := True;
    sbMin250.Visible := True;
    sbMin500.Visible := True;
    sbMin800.Visible := True;
    sbMin1000.Visible := True;
    sbMin2000.Visible := True;
    sbMin4000.Visible := True;
    sbMin6000.Visible := True;
    sbMin10000.Visible := True;
    sbMin12000.Visible := True;
    sbMin16000.Visible := True;
    sbMin20000.Visible := True;
    ga80H.Visible := True;
    slider80.Visible := False;
    ga125H.Visible := True;
    slider125.Visible := False;
    ga250H.Visible := True;
    slider250.Visible := False;
    ga500H.Visible := True;
    slider500.Visible := False;
    ga800H.Visible := True;
    slider800.Visible := False;
    ga1k.Visible := True;
    slider1000.Visible := False;
    ga2k.Visible := True;
    slider2000.Visible := False;
    ga4k.Visible := True;
    slider4000.Visible := False;
    ga6k.Visible := True;
    slider6000.Visible := False;
    ga10k.Visible := True;
    slider10000.Visible := False;
    ga12k.Visible := True;
    slider12000.Visible := False;
    ga16k.Visible := True;
    slider16000.Visible := False;
    ga20k.Visible := True;
    slider20000.Visible := False;
  end
  else
  begin
    //Analógico
    PanelLeds.Visible := True;
    ledL01.Visible := True;
    ledL02.Visible := True;
    ledL03.Visible := True;
    ledL04.Visible := True;
    ledL05.Visible := True;
    ledL06.Visible := True;
    ledL07.Visible := True;
    ledL08.Visible := True;
    ledL09.Visible := True;
    ledL10.Visible := True;
    ledR01.Visible := True;
    ledR02.Visible := True;
    ledR03.Visible := True;
    ledR04.Visible := True;
    ledR05.Visible := True;
    ledR06.Visible := True;
    ledR07.Visible := True;
    ledR08.Visible := True;
    ledR09.Visible := True;
    ledR10.Visible := True;
    AnalogLeft.Visible := True;
    AnalogRight.Visible := True;
    panelOsciloscope.Visible := False;
    panelSpectro.Visible := False;
    //Analógico
    lbLeft.Visible := False;
    lbRight.Visible := False;
    pbLeft.Visible := False;
    pbRight.Visible := False;
    imgLeft.Visible := False;
    imgRight.Visible := False;
    sbPl80.Visible := False;
    sbPl125.Visible := False;
    sbPl250.Visible := False;
    sbPl500.Visible := False;
    sbPl800.Visible := False;
    sbPl1000.Visible := False;
    sbPl2000.Visible := False;
    sbPl4000.Visible := False;
    sbPl6000.Visible := False;
    sbPl10000.Visible := False;
    sbPl12000.Visible := False;
    sbPl16000.Visible := False;
    sbPl20000.Visible := False;
    sbMin80.Visible := False;
    sbMin125.Visible := False;
    sbMin250.Visible := False;
    sbMin500.Visible := False;
    sbMin800.Visible := False;
    sbMin1000.Visible := False;
    sbMin2000.Visible := False;
    sbMin4000.Visible := False;
    sbMin6000.Visible := False;
    sbMin10000.Visible := False;
    sbMin12000.Visible := False;
    sbMin16000.Visible := False;
    sbMin20000.Visible := False;
    ga80H.Visible := False;
    slider80.Visible := True;
    ga125H.Visible := False;
    slider125.Visible := True;
    ga250H.Visible := False;
    slider250.Visible := True;
    ga500H.Visible := False;
    slider500.Visible := True;
    ga800H.Visible := False;
    slider800.Visible := True;
    ga1k.Visible := False;
    slider1000.Visible := True;
    ga2k.Visible := False;
    slider2000.Visible := True;
    ga4k.Visible := False;
    slider4000.Visible := True;
    ga6k.Visible := False;
    slider6000.Visible := True;
    ga10k.Visible := False;
    slider10000.Visible := True;
    ga12k.Visible := False;
    slider12000.Visible := True;
    ga16k.Visible := False;
    slider16000.Visible := True;
    ga20k.Visible := False;
    slider20000.Visible := True;
  end;
end;

procedure TfrmPrincipal.SetColor(vCor: Integer);
begin
  pbLeft.ForeColor := vCor;
  pbRight.ForeColor := vCor;
  lbLeft.TextOptions.Shadow.Color := vCor;
  lbRight.TextOptions.Shadow.Color := vCor;
  DisplayTempo.SegmentLitColor := vCor;
  DisplayVolume.SegmentLitColor := vCor;
  ga80H.ForeColor := vCor;
  ga125H.ForeColor := vCor;
  ga250H.ForeColor := vCor;
  ga500H.ForeColor := vCor;
  ga800H.ForeColor := vCor;
  ga1K.ForeColor := vCor;
  ga2K.ForeColor := vCor;
  ga4K.ForeColor := vCor;
  ga6K.ForeColor := vCor;
  ga10K.ForeColor := vCor;
  ga12K.ForeColor := vCor;
  ga16K.ForeColor := vCor;
  ga20K.ForeColor := vCor;
end;

end.
