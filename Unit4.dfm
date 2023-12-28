object Form4: TForm4
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 32
    Width = 86
    Height = 13
    Caption = 'Detail Nama Menu'
  end
  object lbl2: TLabel
    Left = 40
    Top = 64
    Width = 59
    Height = 13
    Caption = 'Detail Harga'
  end
  object lbl3: TLabel
    Left = 40
    Top = 96
    Width = 63
    Height = 13
    Caption = 'Detail Jumlah'
  end
  object lbl4: TLabel
    Left = 40
    Top = 128
    Width = 54
    Height = 13
    Caption = 'Detail Total'
  end
  object lbl5: TLabel
    Left = 40
    Top = 160
    Width = 103
    Height = 13
    Caption = 'Detail Invoice / Bayar'
  end
  object edt1: TEdit
    Left = 176
    Top = 32
    Width = 377
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 176
    Top = 64
    Width = 377
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 176
    Top = 96
    Width = 377
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 176
    Top = 128
    Width = 377
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 40
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 128
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 216
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 304
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 392
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 480
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 9
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 40
    Top = 240
    Width = 625
    Height = 120
    DataSource = ds
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id_Detail'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detail_nama_menu'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detail_harga'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detail_jumlah'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detail_total'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detail_invoice/bayar'
        Width = 100
        Visible = True
      end>
  end
  object cbb1: TComboBox
    Left = 176
    Top = 160
    Width = 377
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Items.Strings = (
      'Transfer Bank'
      'E-Wallet'
      'Cash')
  end
  object con: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'pemesanan_makanan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\semester 5\visual 3\tugas akhir\libmysql.dll'
    Left = 40
    Top = 376
  end
  object zqry: TZQuery
    Connection = con
    Active = True
    SQL.Strings = (
      'select * from tb_detail')
    Params = <>
    Left = 88
    Top = 376
  end
  object ds: TDataSource
    DataSet = zqry
    Left = 136
    Top = 376
  end
  object frxrprt2: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45288.396835173600000000
    ReportOptions.LastChange = 45288.403267789350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 184
    Top = 376
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 332.598640000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'REPORT DETAIL')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Detail Nama Menu')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Detail Harga')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 396.850650000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Detail Jumlah')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Detail Total')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Detail Invoice')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Detail_nama_menu'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."Detail_nama_menu"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Detail_harga'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."Detail_harga"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 396.850650000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Detail_jumlah'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."Detail_jumlah"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Detail_total'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."Detail_total"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Detail_invoice/bayar'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."Detail_invoice/bayar"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds
    Left = 224
    Top = 376
  end
end
