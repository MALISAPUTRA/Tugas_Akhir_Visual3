unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    con: TZConnection;
    zqry: TZQuery;
    ds: TDataSource;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    cbb4: TComboBox;
    frxrprt8: TfrxReport;
    frxdbdtst2: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id:string;

implementation

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
cbb1.Enabled:= True;
cbb2.Enabled:= True;
cbb3.Enabled:= True;
cbb4.Enabled:= True;

end;

procedure TForm8.btn2Click(Sender: TObject);
begin
if cbb1.Text ='' then
begin
ShowMessage('STATUS MENU TIDAK BOLEH KOSONG!');
end else
if cbb2.Text ='' then
begin
ShowMessage('STATUS PEMBAYARAN TIDAK BOLEH KOSONG!');
end else
if cbb3.Text ='' then
begin
ShowMessage('STATUS PESANAN TIDAK BOLEH KOSONG!');
end else
if cbb4.Text ='' then
begin
ShowMessage('STATUS AKUN TIDAK BOLEH KOSONG!');
end else
begin
zqry.SQL.Clear; //simpan
zqry.SQL.Add('insert into tb_status values(null,"'+cbb1.Text+'","'+cbb2.Text+'","'+cbb3.Text+'","'+cbb4.Text+'")');
zqry.ExecSQL ;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_status');
zqry.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
if (cbb1.Text= '')or (cbb2.Text ='')or(cbb3.Text= '')or(cbb4.Text= '')then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if cbb1.Text = zqry.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry.SQL.Clear;
zqry.SQL.Add('Update tb_status set status_menu= "'+cbb1.Text+'",status_pembayaran="'+cbb2.Text+'",status_pesanan="'+cbb3.Text+'",status_akun="'+cbb4.Text+'" where Id_status="'+id+'"');
zqry. ExecSQL;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_status');
zqry.Open;

posisiawal;
end;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 zqry.SQL.Clear;
zqry.SQL.Add(' delete from tb_status where Id_status="'+id+'"');
zqry. ExecSQL;
zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_status');
zqry.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.bersih;
begin
cbb1.Clear;
cbb2.Clear;
cbb3.Clear;
cbb4.Clear;
end;

procedure TForm8.posisiawal;
begin
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
cbb1.Enabled:= False;
cbb2.Enabled:= False;
cbb3.Enabled:= False;
cbb4.Enabled:= False;
end;

procedure TForm8.btn6Click(Sender: TObject);
begin
frxrprt8.ShowReport();
end;

end.
 