object Form5: TForm5
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'Form5'
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
    Left = 48
    Top = 24
    Width = 87
    Height = 13
    Caption = 'Konfirmasi Invoice'
  end
  object lbl2: TLabel
    Left = 48
    Top = 56
    Width = 79
    Height = 13
    Caption = 'Konfirmasi Nama'
  end
  object lbl3: TLabel
    Left = 48
    Top = 88
    Width = 75
    Height = 13
    Caption = 'Konfirmasi Bank'
  end
  object lbl4: TLabel
    Left = 48
    Top = 120
    Width = 85
    Height = 13
    Caption = 'Konfirmasi Jumlah'
  end
  object lbl5: TLabel
    Left = 48
    Top = 152
    Width = 76
    Height = 13
    Caption = 'Konfirmasi Total'
  end
  object edt1: TEdit
    Left = 176
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 176
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 176
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 176
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 176
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 40
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 5
  end
  object btn2: TButton
    Left = 128
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 6
  end
  object btn3: TButton
    Left = 216
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 7
  end
  object btn4: TButton
    Left = 304
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 8
  end
  object btn5: TButton
    Left = 392
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 9
  end
  object btn6: TButton
    Left = 480
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 10
  end
  object dbgrd1: TDBGrid
    Left = 40
    Top = 240
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
    Left = 40
    Top = 376
  end
  object zqry: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from tb_konfirmasi')
    Params = <>
    Left = 88
    Top = 376
  end
  object ds: TDataSource
    DataSet = zqry
    Left = 136
    Top = 376
  end
end
