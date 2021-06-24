object frmConfigSpectro: TfrmConfigSpectro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configurar Spectro'
  ClientHeight = 276
  ClientWidth = 225
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
  DesignSize = (
    225
    276)
  PixelsPerInch = 96
  TextHeight = 13
  object btFechar: TBitBtn
    Left = 104
    Top = 243
    Width = 105
    Height = 25
    Hint = 'Fecha a janela'
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
    TabOrder = 0
    OnClick = btFecharClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 201
    Height = 127
    BevelInner = bvLowered
    TabOrder = 1
    object lbCorPeak: TLabel
      Left = 8
      Top = 31
      Width = 76
      Height = 13
      Caption = 'Cor peak holder'
    end
    object lbVelPeak: TLabel
      Left = 8
      Top = 77
      Width = 51
      Height = 13
      Caption = 'Velocidade'
    end
    object cbPeakHolder: TCheckBox
      Left = 8
      Top = 8
      Width = 78
      Height = 17
      Caption = 'Peak Holder'
      TabOrder = 0
      OnClick = cbPeakHolderClick
    end
    object ColorPeak: TfcColorCombo
      Left = 8
      Top = 50
      Width = 185
      Height = 21
      ColorListOptions.Font.Charset = DEFAULT_CHARSET
      ColorListOptions.Font.Color = clWindowText
      ColorListOptions.Font.Height = -11
      ColorListOptions.Font.Name = 'Tahoma'
      ColorListOptions.Font.Style = []
      ColorListOptions.Options = [ccoShowStandardColors]
      DropDownCount = 8
      ReadOnly = False
      SelectedColor = 268435455
      TabOrder = 1
    end
    object seVelPeak: TSpinEdit
      Left = 8
      Top = 96
      Width = 53
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 135
    Width = 201
    Height = 102
    BevelInner = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 51
      Height = 13
      Caption = 'Cor barras'
    end
    object Label2: TLabel
      Left = 8
      Top = 52
      Width = 51
      Height = 13
      Caption = 'Velocidade'
    end
    object Label3: TLabel
      Left = 75
      Top = 52
      Width = 91
      Height = 13
      Caption = 'Largura das barras'
    end
    object ColorBarras: TfcColorCombo
      Left = 8
      Top = 25
      Width = 185
      Height = 21
      ColorListOptions.Font.Charset = DEFAULT_CHARSET
      ColorListOptions.Font.Color = clWindowText
      ColorListOptions.Font.Height = -11
      ColorListOptions.Font.Name = 'Tahoma'
      ColorListOptions.Font.Style = []
      ColorListOptions.Options = [ccoShowStandardColors]
      DropDownCount = 8
      ReadOnly = False
      SelectedColor = 268435455
      TabOrder = 0
    end
    object seVelBar: TSpinEdit
      Left = 8
      Top = 71
      Width = 53
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object seLargura: TSpinEdit
      Left = 75
      Top = 71
      Width = 118
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
  end
end
