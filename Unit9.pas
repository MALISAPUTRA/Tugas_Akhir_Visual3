unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    con: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
if(edt1.Text = '')or(edt2.Text = '')or (edt3.Text = '')or(edt4.Text = '') then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('username',edt1.Text,[])) then
begin
  ShowMessage('Username sudah digunakan!');
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into tb_user values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'", "'+edt4.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tb_user');
zqry1.Open;

ShowMessage('DATA BERHASIL DISIMPAN!!');

edt1.Text :='';
edt2.Text :='';
edt3.Text :='';
edt4.Text :='';

end;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
Close;
end;

end.
 