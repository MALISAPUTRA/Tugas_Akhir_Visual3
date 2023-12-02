object Form3: TForm3
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'Form3'
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
    Left = 64
    Top = 40
    Width = 70
    Height = 13
    Caption = 'Jenis Makanan'
  end
  object lbl2: TLabel
    Left = 64
    Top = 72
    Width = 73
    Height = 13
    Caption = 'Nama Makanan'
  end
  object lbl3: TLabel
    Left = 64
    Top = 104
    Width = 29
    Height = 13
    Caption = 'Harga'
  end
  object lbl4: TLabel
    Left = 64
    Top = 136
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object lbl5: TLabel
    Left = 64
    Top = 168
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object edt2: TEdit
    Left = 168
    Top = 72
    Width = 409
    Height = 21
    TabOrder = 0
  end
  object edt3: TEdit
    Left = 168
    Top = 104
    Width = 409
    Height = 21
    TabOrder = 1
  end
  object edt4: TEdit
    Left = 168
    Top = 136
    Width = 409
    Height = 21
    TabOrder = 2
  end
  object edt5: TEdit
    Left = 168
    Top = 168
    Width = 409
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 64
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 152
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 240
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 328
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 416
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 504
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 9
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 248
    Width = 550
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
        FieldName = 'Id_menu'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_menu'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Harga_menu'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Gambar_menu'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Deskripsi_menu'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status_menu'
        Visible = True
      end>
  end
  object cbb1: TComboBox
    Left = 168
    Top = 40
    Width = 409
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Items.Strings = (
      'Ringan'
      'Berat')
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
    Left = 64
    Top = 376
  end
  object zqry: TZQuery
    Connection = con
    Active = True
    SQL.Strings = (
      'select * from tb_menu')
    Params = <>
    Left = 112
    Top = 376
  end
  object ds: TDataSource
    DataSet = zqry
    Left = 160
    Top = 376
  end
end
