object Form7: TForm7
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'Form7'
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
    Top = 56
    Width = 48
    Height = 13
    Caption = 'Rek Nama'
  end
  object lbl2: TLabel
    Left = 56
    Top = 88
    Width = 34
    Height = 13
    Caption = 'Rek No'
  end
  object lbl3: TLabel
    Left = 56
    Top = 120
    Width = 44
    Height = 13
    Caption = 'Rek Bank'
  end
  object lbl4: TLabel
    Left = 56
    Top = 152
    Width = 74
    Height = 13
    Caption = 'Rek Nama Bank'
  end
  object lbl5: TLabel
    Left = 56
    Top = 24
    Width = 99
    Height = 13
    Caption = 'Metode Pembayaran'
  end
  object edt1: TEdit
    Left = 184
    Top = 24
    Width = 385
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 184
    Top = 56
    Width = 385
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 184
    Top = 88
    Width = 385
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 184
    Top = 120
    Width = 385
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 184
    Top = 152
    Width = 385
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 56
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 5
  end
  object btn2: TButton
    Left = 144
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 6
  end
  object btn3: TButton
    Left = 232
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 7
  end
  object btn4: TButton
    Left = 320
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 8
  end
  object btn5: TButton
    Left = 408
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 9
  end
  object btn6: TButton
    Left = 496
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 10
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 264
    Width = 513
    Height = 120
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object con: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
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
    SQL.Strings = (
      'select * from tb_bank')
    Params = <>
    Left = 104
    Top = 400
  end
  object ds: TDataSource
    DataSet = zqry
    Left = 152
    Top = 400
  end
end