unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt2: TEdit;
    edt4: TEdit;
    edt5: TEdit;
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
    frxrprt3: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
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
  Form5: TForm5;
  id:string;

implementation

{$R *.dfm}

procedure TForm5.btn2Click(Sender: TObject);
begin
if cbb1.Text ='' then
begin
ShowMessage('KONFIRMASI INVOICE TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('KONFIRMASI NAMA TIDAK BOLEH KOSONG!');
end else
if cbb2.Text ='' then
begin
ShowMessage('KONFIRMASI BANK TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('KONFIRMASI JUMLAH TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('KONFIRMASI TOTAL TIDAK BOLEH KOSONG!');
end else
begin
zqry.SQL.Clear; //simpan
zqry.SQL.Add('insert into tb_konfirmasi values(null,"'+cbb1.Text+'","'+edt2.Text+'","'+cbb2.Text+'","'+edt4.Text+'","'+edt5.Text+'")');
zqry.ExecSQL ;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_konfirmasi');
zqry.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
cbb1.Enabled:= True;
edt2.Enabled:= True;
cbb2.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
if (cbb1.Text= '')or (edt2.Text ='')or(cbb2.Text= '')or(edt4.Text= '')or(edt5.Text= '')then
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
zqry.SQL.Add('Update tb_konfirmasi set konfirmasi_invoice= "'+cbb1.Text+'",konfirmasi_nama="'+edt2.Text+'",konfirmasi_bank="'+cbb2.Text+'",konfirmasi_jumlah="'+edt4.Text+'",konfirmasi_total="'+edt5.Text+'" where konfirmasi_id="'+id+'"');
zqry. ExecSQL;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_konfirmasi');
zqry.Open;

posisiawal;
end;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 zqry.SQL.Clear;
zqry.SQL.Add(' delete from tb_konfirmasi where konfirmasi_id="'+id+'"');
zqry. ExecSQL;
zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_konfirmasi');
zqry.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.bersih;
begin
cbb1.Clear;
edt2.Clear;
cbb2.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm5.posisiawal;
begin
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
cbb1.Enabled:= False;
edt2.Enabled:= False;
cbb2.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
frxrprt3.ShowReport();
end;

end.
