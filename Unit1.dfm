object Form1: TForm1
  Left = 207
  Top = 152
  Width = 381
  Height = 339
  Caption = 'Form1'
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
    Left = 160
    Top = 72
    Width = 95
    Height = 13
    Caption = 'SILAHKAN LOGIN!!!'
  end
  object lbl2: TLabel
    Left = 152
    Top = 104
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lbl3: TLabel
    Left = 152
    Top = 160
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object edt1: TEdit
    Left = 152
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 152
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 152
    Top = 216
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 248
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Daftar'
    TabOrder = 3
    OnClick = btn2Click
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
    Left = 80
    Top = 80
  end
  object zqry: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from tb_user')
    Params = <>
    Left = 80
    Top = 136
  end
  object ds: TDataSource
    DataSet = zqry
    Left = 80
    Top = 192
  end
end
