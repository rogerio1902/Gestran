object Form1: TForm1
  Left = 0
  Top = 0
  Width = 425
  Height = 134
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  BorderWidth = 8
  Caption = 'Importador'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 37
    Height = 13
    Caption = '&Arquivo'
    FocusControl = EdtArq
  end
  object LblImp: TLabel
    Left = 256
    Top = 67
    Width = 97
    Height = 16
    Caption = 'IMPORTANDO...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object EdtArq: TEdit
    Left = 0
    Top = 24
    Width = 370
    Height = 21
    TabOrder = 0
  end
  object BtnSel: TButton
    Left = 376
    Top = 22
    Width = 27
    Height = 25
    Caption = '...'
    TabOrder = 1
    OnClick = BtnSelClick
  end
  object BtnImp: TButton
    Left = 164
    Top = 64
    Width = 75
    Height = 25
    Caption = '&Importar'
    TabOrder = 2
    OnClick = BtnImpClick
  end
  object ADOConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Gestran;Data Source=ROGERIO\SQLEXPRESS;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 128
  end
  object ODlgArq: TOpenDialog
    Filter = '*.csv|*.csv|Todos|*.*'
    FilterIndex = 0
    Left = 48
  end
  object ADOQImp: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 208
  end
end
