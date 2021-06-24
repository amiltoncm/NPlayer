object frmTagMP3: TfrmTagMP3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tag MP3 - Vs. 3.11'
  ClientHeight = 179
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  DesignSize = (
    605
    179)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Arquivo'
  end
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 26
    Height = 13
    Caption = 'T'#237'tulo'
  end
  object Label3: TLabel
    Left = 335
    Top = 54
    Width = 32
    Height = 13
    Caption = 'Artista'
  end
  object Label4: TLabel
    Left = 8
    Top = 100
    Width = 29
    Height = 13
    Caption = #193'lbum'
  end
  object Label5: TLabel
    Left = 303
    Top = 100
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Label6: TLabel
    Left = 391
    Top = 100
    Width = 35
    Height = 13
    Caption = 'G'#234'nero'
  end
  object btFechar: TBitBtn
    Left = 492
    Top = 146
    Width = 105
    Height = 25
    Hint = 'Fecha o sistema'
    Anchors = [akRight, akBottom]
    Caption = '&Fechar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCA5D00
      CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D
      00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFBFFFBEFFFF3E0FFEDD4FF
      E8C8FFE3BFFFE2BBFFE1BAFFEFD0CA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
      FFFFFFFFF8F3FEF4E9FFEFDCFEE9D1FEE3C4FEDDB8FED9B0FED6AAFFE3BDCA5D
      00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFEFCFFFAF5FFF5EBFFF0DFFF
      EAD2FFE4C6FFDEBBFFD9B0FFE4BECA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
      FFFFFFFFFFFFFFFFFEFFFBF7FFF6EDFEF0E1FFEBD5FEE5C8FEDFBCFFE8C5CA5D
      00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFFFFFFFFFFFFFEFFFCF8FE
      F6EDFEF2E2FFECD6FEE5C9FFEDD1CA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9FFF7EF001B80FEEBD6FFF3E0CA5D
      00001B80FF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF001B802355FF001B80FFFFFF001B800033FF001B80FF00FFFF00FFCA5D00
      EEB67CECB074ECB074ECB074ECB074ECB074ECB174001B802757FF001B801243
      FF001B80FF00FFFF00FFFF00FFFF00FFCA5C00CA5D00CA5D00CA5D00CA5D00CA
      5D00CA5D00CA5D00001B802B5BFF001B80FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF001B804271FF001B802E5F
      FF001B80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF001B804A79FF001B80FF00FF001B803262FF001B80FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF001B80FF00FFFF00FFFF00
      FF001B80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = btFecharClick
  end
  object edArquivo: TEdit
    Left = 8
    Top = 27
    Width = 589
    Height = 21
    Hint = 'Arquivo selecionado'
    TabStop = False
    Color = clBtnFace
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
    Text = 'edArquivo'
  end
  object cbGenero: TwwDBComboBox
    Left = 439
    Top = 119
    Width = 158
    Height = 21
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    ShowMatchText = True
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'Blues'#9'0'
      'Classic Rock'#9'1'
      'Country'#9'2'
      'Dance'#9'3'
      'Disco'#9'4'
      'Funk'#9'5'
      'Grunge'#9'6'
      'Hip-Hop'#9'7'
      'Jazz'#9'8'
      'Metal'#9'9'
      'New Age'#9'10'
      'Oldies'#9'11'
      'Other'#9'12'
      'Pop'#9'13'
      'R&B'#9'14'
      'Rap'#9'15'
      'Reggae'#9'16'
      'Rock'#9'17'
      'Techno'#9'18'
      'Industrial'#9'19'
      'Alternative'#9'20'
      'Ska'#9'21'
      'Death Metal'#9'22'
      'Pranks'#9'23'
      'Soundtrack'#9'24'
      'Euro-Techno'#9'25'
      'Ambient'#9'26'
      'Trip-Hop'#9'27'
      'Vocal'#9'28'
      'Jazz+Funk'#9'29'
      'Fusion'#9'30'
      'Trance'#9'31'
      'Classical'#9'32'
      'Instrumental'#9'33'
      'Acid'#9'34'
      'House'#9'35'
      'Game'#9'36'
      'Sound Clip'#9'37'
      'Gospel'#9'38'
      'Noise'#9'39'
      'AlternRock'#9'40'
      'Bass'#9'41'
      'Soul'#9'42'
      'Punk'#9'43'
      'Space'#9'44'
      'Meditative'#9'45'
      'Instrumental Pop'#9'46'
      'Instrumental Rock'#9'47'
      'Ethnic'#9'48'
      'Gothic'#9'49'
      'Darkwave'#9'50'
      'Techno-Industrial'#9'51'
      'Electronic'#9'52'
      'Pop-Folk'#9'53'
      'Eurodance'#9'54'
      'Dream'#9'55'
      'Southern Rock'#9'56'
      'Comedy'#9'57'
      'Cult'#9'58'
      'Gangsta'#9'59'
      'Top 40'#9'60'
      'Christian Rap'#9'61'
      'Funk'#9'62'
      'Jungle'#9'63'
      'Native American'#9'64'
      'Cabaret'#9'65'
      'New Wave'#9'66'
      'Psychedelic'#9'67'
      'Rave'#9'68'
      'Showtunes'#9'69'
      'Trailer'#9'70'
      'Lo-Fi'#9'71'
      'Tribal'#9'72'
      'Acid Punk'#9'73'
      'Acid Jazz'#9'74'
      'Polka'#9'75'
      'Retro'#9'76'
      'Musical'#9'77'
      'Rock & Roll'#9'78'
      'Hard Rock'#9'79'
      'Folk'#9'80'
      'Folk-Rock'#9'81'
      'National Folk'#9'82'
      'Swing'#9'83'
      'Fast Fusion'#9'84'
      'Bebob'#9'85'
      'Latin'#9'86'
      'Revival'#9'87'
      'Celtic'#9'88'
      'Bluegrass'#9'89'
      'Avantgarde'#9'90'
      'Gothic Rock'#9'91'
      'Progressive Rock'#9'92'
      'Psychedelic Rock'#9'93'
      'Symphonic Rock'#9'94'
      'Slow Rock'#9'95'
      'Big Band'#9'96'
      'Chorus'#9'97'
      'Easy Listening'#9'98'
      'Acoustic'#9'99'
      'Humour'#9'100'
      'Speech'#9'101'
      'Chanson'#9'102'
      'Opera'#9'103'
      'Chamber Music'#9'104'
      'Sonata'#9'105'
      'Symphony'#9'106'
      'Booty Bass'#9'107'
      'Primus'#9'108'
      'Porn Groove'#9'109'
      'Satire'#9'110'
      'Slow Jam'#9'111'
      'Club'#9'112'
      'Tango'#9'113'
      'Samba'#9'114'
      'Folklore'#9'115'
      'Ballad'#9'116'
      'Power Ballad'#9'117'
      'Rhythmic Soul'#9'118'
      'Freestyle'#9'119'
      'Duet'#9'120'
      'Punk Rock'#9'121'
      'Drum Solo'#9'122'
      'A capella'#9'123'
      'Euro-House'#9'124'
      'Dance Hall'#9'125'
      'Goa'#9'126'
      'Drum & Bass'#9'127'
      'Club-House'#9'128'
      'Hardcore'#9'129'
      'Terror'#9'130'
      'Indie'#9'131'
      'BritPop'#9'132'
      'Negerpunk'#9'133'
      'Polsk Punk'#9'134'
      'Beat'#9'135'
      'Christian Gangsta Rap'#9'136'
      'Heavy Metal'#9'137'
      'Black Metal'#9'138'
      'Crossover'#9'139'
      'Contemporary Christian'#9'140'
      'Christian Rock'#9'141'
      'Merengue'#9'142'
      'Salsa'#9'143'
      'Trash Metal'#9'144'
      'Anime'#9'145'
      'JPop'#9'146'
      'SynthPop'#9'147'
      'N'#227'o Dispon'#237'vel'#9'255')
    ParentShowHint = False
    ShowHint = False
    Sorted = False
    TabOrder = 6
    UnboundDataType = wwDefault
    TwoColumnDisplay = True
    OnExit = cbGeneroExit
  end
  object edTitulo: TEdit
    Left = 8
    Top = 73
    Width = 321
    Height = 21
    TabOrder = 1
    Text = 'edTitulo'
  end
  object edArtista: TEdit
    Left = 335
    Top = 73
    Width = 262
    Height = 21
    TabOrder = 2
    Text = 'edArtista'
  end
  object edAlbum: TEdit
    Left = 8
    Top = 119
    Width = 289
    Height = 21
    TabOrder = 3
    Text = 'edAlbum'
  end
  object edAno: TEdit
    Left = 303
    Top = 119
    Width = 82
    Height = 21
    NumbersOnly = True
    TabOrder = 4
    Text = 'edAno'
  end
  object edGenero: TEdit
    Left = 391
    Top = 119
    Width = 42
    Height = 21
    TabStop = False
    Color = clBtnFace
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 5
    Text = 'edGenero'
  end
  object btLancar: TBitBtn
    Left = 381
    Top = 146
    Width = 105
    Height = 25
    Hint = 'Gravar as altera'#231#245'es da TAG MP3'
    Caption = '&Alterar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0872DD0362C3006CDB0877E711
      7DEA0877E70069DD005DC70654A50654A5FF00FFFF00FFFF00FFFF00FFFF00FF
      0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
      B70B5095FF00FFFF00FFFF00FF1278E0127CE870B4F9F6FAFEFFFFFFEEF6FDD3
      E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78ED025AB60653A2FF00FFFF00FF1278E0
      6DB2F9FEFEFFF4F9FE77B6F63391F0B5D5F91B7FEA4693EEC9E0FAFFFFFFB0D5
      FA0970E60653A2FF00FF0B70D53695F4E8F3FEFFFFFF4FA3F61F88F2D4E7FCFF
      FFFF489BEF0065E60E74E8C9E1FAFFFFFF58A5F5005EC70858AB137AE371B5FB
      FFFFFFB2D7FC469FF7DEEEFDFDFEFEE0EEFDA1CCF80173E9006AE74294EDFFFF
      FFB3D7FB016BDE0858AB1F85ECA2CFFDFFFFFF71B7FDACD4FDFAFCFF66AFF83F
      9AF5E2EFFD2D8EF00075EB0575E9E2EEFCE6F3FF0E7BE9065AB02F8FF1B7DAFD
      FFFFFF6BB4FF3C9DFE4FA5FB1D8AF81484F5A0CDFB84BDF8067AEF0374EBD4E8
      FBF0F8FF1A82EC055CB53693F0B8DAFEFFFFFF8EC6FF2391FF2E95FE2B93FC21
      8CF92D92F79ACAFB1D86F21D86F0F3F8FED9EBFE117DE9095CB22689EDAFD6FD
      FFFFFFE1F0FF3499FF2F96FF3399FF2E94FD218CF950A4F9419BF77DBBF8FFFF
      FF99C9FA0773E10958ABFF00FF3994F0F1F8FFFFFFFFADD6FF3499FF2592FF28
      93FF238FFC1788FA6FB4FAF4FAFFF5FAFE49A0F7076ACEFF00FFFF00FF3994F0
      CDE6FFF6FAFFFFFFFFE0EFFF8DC6FF6EB6FE79BBFFB6DAFEFFFFFFFFFFFF78B9
      F9137BE6076ACEFF00FFFF00FFFF00FF64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFE7F3FE77B8FA1D85ED0D6DD0FF00FFFF00FFFF00FFFF00FF
      FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
      E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3B94F061ABF665
      ADF7489EF42286EC127AE4FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = btLancarClick
  end
  object btNome: TBitBtn
    Left = 8
    Top = 146
    Width = 105
    Height = 25
    Hint = 'Renomear m'#250'sica'
    Caption = 'Nome'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF854200824000773A006D350069330069
      34006934006934006934006A34006A34005A2B00FF00FFFF00FFFF00FFAB5400
      CB6500C56100BC5D00B55900AF5700AD5600AE5600AE5600AE5600AE5600B359
      00954A005A2C00FF00FFFF00FFC76300E97300DD6D00D66A00D06700C86300C1
      6000BF5F00BE5E00BF5E00BF5E00C46100B359006A3400FF00FFFF00FFD16800
      ED7602E27102DC6E02DA7C20DB934BDB9A5BD6975ACC843FB95C00BA5C00BF5E
      00AE56006A3400FF00FFFF00FFD66A00F68211EE7B0BEEA45AFEFEFEFEFEFEFE
      FEFEFEFEFEE8C39FBC5D00BA5C00BF5E00AE5600693400FF00FFFF00FFD66A00
      F89330F48519FEFEFEF4C08EE37F1DDD7A18D67514CD6907C56200BD5E00BF5E
      00AE5600693400FF00FFFF00FFD66A00F9A756F48E29FEFEFEF2861AEB7400E4
      7100DE6E00EFC69ECE6600C86300C66200B157006A3400FF00FFFF00FFD66A00
      F9B36FF49435FEFEFEF6AB60F27800EE7600E67200FEFEFEEFC296D16800CF66
      00B85B00733900FF00FFFF00FFD66A00FABA7BF5993FFACA9AFEFEFEFBE1C7FB
      E1C7FCECDCFEFEFEFEFEFEF3D2B1D96B00C26000824000FF00FFFF00FFD66A00
      FABF85F69F4BF49333F7B371F9CDA1F9CB9DFBDEC2FEFEFEFEFEFEF5CDA5E370
      00CD6500904700FF00FFFF00FFD66A00FBC794F7AB61F5973BF49333F48B24F3
      861BF38417FEFEFEF9C18BEE7600EB7500D76A009E4E00FF00FFFF00FFD66A00
      FBC998F9C490F8B777F7AF69F6A556F59C44F49333F9C18AF27C08F37902F579
      00E27000AB5400FF00FFFF00FFD76A00FBB978FBCA9AFBCC9EFBC794FABE83F9
      B16AF89E46F78D24F6800BF67B02FB7C00EA7400B55A00FF00FFFF00FFFF00FF
      DA7717DE8630DE8833DE8833DD842CDC7F24DA7717D8700BD76C04D66B02D76B
      00C96300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = btNomeClick
  end
  object JvID3v11: TJvID3v1
    Active = False
    Left = 176
    Top = 16
  end
  object JvBalloonHint1: TJvBalloonHint
    UseBalloonAsApplicationHint = True
    Left = 424
    Top = 16
  end
end
