object Form6: TForm6
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'Form6'
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
    Left = 56
    Top = 24
    Width = 51
    Height = 13
    Caption = 'Invoice No'
  end
  object lbl2: TLabel
    Left = 56
    Top = 56
    Width = 76
    Height = 13
    Caption = 'Invoice Tanggal'
  end
  object lbl3: TLabel
    Left = 56
    Top = 88
    Width = 69
    Height = 13
    Caption = 'Invoice Status'
  end
  object lbl4: TLabel
    Left = 56
    Top = 120
    Width = 86
    Height = 13
    Caption = 'Invoice Rek Nama'
  end
  object lbl5: TLabel
    Left = 56
    Top = 184
    Width = 71
    Height = 13
    Caption = 'Invoice Rek no'
  end
  object lbl6: TLabel
    Left = 56
    Top = 152
    Width = 61
    Height = 13
    Caption = 'Invoice Bank'
  end
  object edt1: TEdit
    Left = 184
    Top = 24
    Width = 385
    Height = 21
    TabOrder = 0
  end
  object edt4: TEdit
    Left = 184
    Top = 120
    Width = 385
    Height = 21
    TabOrder = 1
  end
  object edt6: TEdit
    Left = 184
    Top = 184
    Width = 385
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 56
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 144
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 232
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 320
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 408
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 496
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 8
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 264
    Width = 513
    Height = 120
    DataSource = ds
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_invoice'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'invo_no'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'invo_tanggal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'invo_status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'invo_rek_nama'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'invo_rek_bank'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'invo_rek_no'
        Width = 150
        Visible = True
      end>
  end
  object cbb1: TComboBox
    Left = 184
    Top = 88
    Width = 385
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      'Sukses'
      'Failed')
  end
  object cbb2: TComboBox
    Left = 184
    Top = 152
    Width = 385
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Items.Strings = (
      'BRI'
      'BNI'
      'BCA'
      'MANDIRI'
      'DANA'
      'GOPAY'
      'OVO')
  end
  object dtp1: TDateTimePicker
    Left = 184
    Top = 56
    Width = 385
    Height = 21
    Date = 45262.785469803240000000
    Time = 45262.785469803240000000
    TabOrder = 12
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
    Left = 56
    Top = 400
  end
  object zqry: TZQuery
    Connection = con
    Active = True
    SQL.Strings = (
      'select * from tb_invoice')
    Params = <>
    Left = 104
    Top = 400
  end
  object ds: TDataSource
    DataSet = zqry
    Left = 152
    Top = 400
  end
  object frxrprt4: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45288.411532175900000000
    ReportOptions.LastChange = 45288.416523518520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 400
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
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORT INVOICE')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 34.015770000000000000
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
          Left = 128.504020000000000000
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
            'Invoice No')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 222.992270000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
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
            'Invoice Tanggal')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 340.157700000000000000
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
            'Invoice Status')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
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
            'Invoice Rek Nama')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 551.811380000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
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
            'Invoice Rek Bank')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 665.197280000000000000
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
            'Invoice Rek No')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 147.401670000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 34.015770000000000000
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
        object Memo10: TfrxMemoView
          Left = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'invo_no'
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
            '[frxdbdtst1."invo_no"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 222.992270000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'invo_tanggal'
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
            '[frxdbdtst1."invo_tanggal"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 340.157700000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'invo_status'
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
            '[frxdbdtst1."invo_status"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 434.645950000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'invo_rek_nama'
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
            '[frxdbdtst1."invo_rek_nama"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 551.811380000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'invo_rek_bank'
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
            '[frxdbdtst1."invo_rek_bank"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 665.197280000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'invo_rek_no'
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
            '[frxdbdtst1."invo_rek_no"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds
    Left = 232
    Top = 400
  end
end
