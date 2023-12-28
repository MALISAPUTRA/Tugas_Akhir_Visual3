object Form9: TForm9
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'Form9'
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
    Left = 96
    Top = 64
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lbl2: TLabel
    Left = 96
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lbl3: TLabel
    Left = 96
    Top = 128
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object lbl4: TLabel
    Left = 96
    Top = 160
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object edt1: TEdit
    Left = 184
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 184
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 184
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 184
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 96
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Daftar'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 200
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 5
    OnClick = btn2Click
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
    Left = 96
    Top = 232
  end
  object zqry1: TZQuery
    Connection = con
    Active = True
    SQL.Strings = (
      'select * from tb_user')
    Params = <>
    Left = 200
    Top = 232
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 264
    Top = 232
  end
end
