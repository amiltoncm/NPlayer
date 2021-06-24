program NPlayer;

uses
  Vcl.Forms,
  uPrincipal in '..\view\uPrincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  uFuncoesSistema in '..\funcoes\uFuncoesSistema.pas',
  uBass in '..\funcoes\uBass.pas',
  uCommonTypes in '..\funcoes\uCommonTypes.pas',
  uSpectrum_vis in '..\funcoes\uSpectrum_vis.pas',
  uOsc_vis in '..\funcoes\uOsc_vis.pas',
  uSobre in '..\view\uSobre.pas' {frmSobre},
  uVarGlobal in '..\var\uVarGlobal.pas',
  uConfigSpectro in '..\view\uConfigSpectro.pas' {frmConfigSpectro},
  uFuncoesList in '..\funcoes\uFuncoesList.pas',
  uFuncoesTempo in '..\funcoes\uFuncoesTempo.pas',
  uSavePl in '..\view\uSavePl.pas' {frmSavePl},
  uOpenPlayList in '..\view\uOpenPlayList.pas' {frmOpenPlayList},
  uTagMp3 in '..\view\uTagMp3.pas' {frmTagMP3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'NPlayer';
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.CreateForm(TfrmConfigSpectro, frmConfigSpectro);
  Application.CreateForm(TfrmSavePl, frmSavePl);
  Application.CreateForm(TfrmOpenPlayList, frmOpenPlayList);
  Application.CreateForm(TfrmTagMP3, frmTagMP3);
  Application.Run;
end.
