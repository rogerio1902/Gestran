object FrmConsVendas: TFrmConsVendas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 8
  Caption = 'Consulta de Vendas'
  ClientHeight = 129
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LblVend: TLabel
    Left = 0
    Top = 72
    Width = 46
    Height = 13
    Caption = '&Vendedor'
    FocusControl = CBoxVend
  end
  object GBoxPeriodo: TGroupBox
    Left = 0
    Top = 0
    Width = 267
    Height = 57
    Caption = 'Per'#237'odo'
    TabOrder = 0
    object LblDe: TLabel
      Left = 12
      Top = 24
      Width = 13
      Height = 13
      Alignment = taRightJustify
      Caption = '&De'
      FocusControl = DTPIni
    end
    object LblAte: TLabel
      Left = 136
      Top = 24
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = '&At'#233
      FocusControl = DTPFin
    end
    object DTPIni: TDateTimePicker
      Left = 29
      Top = 20
      Width = 97
      Height = 21
      Date = 0.928185833334282500
      Time = 0.928185833334282500
      TabOrder = 0
    end
    object DTPFin: TDateTimePicker
      Left = 157
      Top = 20
      Width = 97
      Height = 21
      Date = 0.928185833334282500
      Time = 0.928185833334282500
      TabOrder = 1
    end
  end
  object CBoxVend: TComboBox
    Left = 52
    Top = 69
    Width = 215
    Height = 21
    Style = csDropDownList
    Sorted = True
    TabOrder = 1
  end
  object BBtnImpr: TBitBtn
    Left = 34
    Top = 104
    Width = 96
    Height = 25
    Caption = '&Imprimir'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000A449A3A449A3
      A449A3FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF99
      00A449A3A449A3A449A3A449A3A449A3A449A3FF9900A449A3A449A3A449A3A4
      49A3A449A3A449A3A449A3A449A3FF9900A449A3A449A3A449A3A449A3A449A3
      A449A3FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF99
      00A449A3A449A3A449A3A449A3A449A3A449A3FF9900A449A3A449A3A449A3A4
      49A3A449A3A449A3A449A3A449A3FF9900A449A3A449A3A449A3FF9900FF9900
      A449A3FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF99
      00A449A3FF9900FF9900FF9900FF9900A449A3A449A3A449A3A449A3A449A3A4
      49A3A449A3A449A3A449A3A449A3A449A3A449A3FF9900FF9900FF9900FF9900
      FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF99
      00FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF
      9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900
      FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF99
      00FF9900FF9900FF9900FF9900FF9900A449A3A449A3FF9900FF9900FF9900FF
      9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900
      FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF99
      00FF9900FF9900FF9900A449A3A449A3A449A3A449A3A449A3A449A3A449A3A4
      49A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3
      A449A3FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF99
      00A449A3A449A3A449A3A449A3A449A3A449A3FF9900FF9900FF9900FF9900FF
      9900FF9900FF9900FF9900FF9900FF9900A449A3A449A3A449A3A449A3A449A3
      A449A3FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF99
      00A449A3A449A3A449A3A449A3A449A3A449A3FF9900FF9900FF9900FF9900FF
      9900FF9900FF9900FF9900FF9900FF9900A449A3A449A3A449A3}
    TabOrder = 2
    OnClick = BBtnImprClick
  end
  object BBtnPDF: TBitBtn
    Left = 136
    Top = 104
    Width = 96
    Height = 25
    Caption = '&Exportar PDF'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      80800080800080800080800080827FCE33338D7C85C480008080008080008080
      00808000808000808000808000808000808000808000808000809DA8C85756BE
      9791FF3434B09599F18000808000808000808000808000808000808000808000
      808000808000808000808000802C2E8D5E5AE28C85FF2621A280008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8180DC2F22B33C2CC72F269F6F6BD28000808000808000808000805954A93D37
      8E7774C3999AD28000808000808000808000808000803424AD9187FF635DE02B
      2A9E30309C6A67D4312B9A7E79ECD3CDFF6962CA8B87D3800080800080800080
      8000808000808A87CF6361D2C7CEFFC8D9FF8999EC6361D23D35B16763DA4E4C
      BD2C2B929B9EE98000808000808000808000808000808000802D2F938590FFBC
      D3FF5B6EB76C6BCB9891F98283DE9397EA979BE9800080800080800080800080
      8000808000808000804F4EB5777CF78793F8515DABA1A1DD8000808000808000
      80800080800080800080800080800080800080800080800080827EE74547CB4C
      50C77C80D8800080800080800080800080800080800080800080800080800080
      8000808000808000809290FA1C1BA72826AE9292F68000808000808000808000
      80800080800080800080800080800080800080800080800080817FE93633BE3A
      35C09793FC800080800080800080800080800080800080800080800080800080
      8000808000808000806C6BD35754D96460DD726ECE8000808000808000808000
      808000808000808000808000808000808000808000808000805853B67368E681
      77E95F56AD800080800080800080800080800080800080800080800080800080
      8000808000808000807F6DCA6750C4725CC67E6EBB8000808000808000808000
      80800080800080800080800080800080800080800080800080800080927DD28B
      77C4800080800080800080800080800080800080800080800080}
    TabOrder = 3
    OnClick = BBtnPDFClick
  end
  object frxReport: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    EngineOptions.ConvertNulls = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.Author = 'Gestran'
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 64
    Top = 56
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader: TfrxGroupHeader
        Height = 30.236220470000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset."Vendedor"'
        ReprintOnNewPage = True
        object MmVend: TfrxMemoView
          Top = 6.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'Vendedor'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset."Vendedor"]')
          ParentFont = False
        end
      end
      object MasterData: TfrxMasterData
        Height = 20.787401570000000000
        Top = 264.567100000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        RowCount = 0
        object MmTot: TfrxMemoView
          Left = 240.755905510000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Total'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset."Total"]')
          ParentFont = False
        end
        object MmPercCom: TfrxMemoView
          Left = 391.937007870000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Comissao'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset."Comissao"]')
          ParentFont = False
        end
        object MmCom: TfrxMemoView
          Left = 535.559055120000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ValorComissao'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset."ValorComissao"]')
          ParentFont = False
        end
        object mDt: TfrxMemoView
          Left = 100.913390710000000000
          Width = 75.590546300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DataVenda'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."DataVenda"]')
          ParentFont = False
        end
      end
      object PageHeader: TfrxPageHeader
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object MmDtPg: TfrxMemoView
          Align = baRight
          Left = 645.921677000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8W = (
            
              '[UpperCase(FormatDateTime('#39'ddd dd/mmm/yyyy'#39', <Date>))] [FormatDa' +
              'teTime('#39'hh:mm'#39', <Time>)]  P'#225'gina [Page#] de [TotalPages#]')
          WordWrap = False
        end
        object MmTitRel: TfrxMemoView
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDAS')
          ParentFont = False
        end
        object MmTitVend: TfrxMemoView
          Top = 31.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'VENDEDOR')
        end
        object MmTitDt: TfrxMemoView
          Left = 100.897650000000000000
          Top = 53.913420000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object MmTitTot: TfrxMemoView
          Left = 240.740260000000000000
          Top = 53.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object MmTitPercCom: TfrxMemoView
          Left = 391.921460000000000000
          Top = 53.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '% COMISS'#195'O')
          ParentFont = False
        end
        object MmTitCom: TfrxMemoView
          Left = 535.543600000000000000
          Top = 54.023622050000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'COMISS'#195'O')
          ParentFont = False
        end
      end
      object GroupFooter: TfrxGroupFooter
        Height = 34.015770000000000000
        Top = 207.874150000000000000
        Width = 740.409927000000000000
        object MmTotalCom: TfrxMemoView
          Left = 535.559055120000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset."ValorComissao">,MasterData)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    DataSource = DM.DSRel
    BCDToCurrency = False
    Left = 128
    Top = 56
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    Compressed = False
    OpenAfterExport = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Title = 'Relat'#243'rio de Vendas'
    Author = 'Gestran'
    Subject = 'Vendas'
    Creator = 'Gestran'
    Producer = 'Gestran'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 200
    Top = 56
  end
end
