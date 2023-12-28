unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
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
    frxrprt2: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
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
  Form4: TForm4;
  id:String;

implementation

{$R *.dfm}

procedure TForm4.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
cbb1.Clear;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
cbb1.Enabled:= True;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('DETAIL NAMA MENU TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('DETAIL HARGA TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('DETAIL JUMLAH TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('DETAIL TOTAL TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('DETAIL INVOICE/BAYAR TIDAK BOLEH KOSONG!');
end else
begin
zqry.SQL.Clear; //simpan
zqry.SQL.Add('insert into tb_detail values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+cbb1.Text+'")');
zqry.ExecSQL ;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_detail');
zqry.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or(edt4.Text= '')or(cbb1.Text= '')then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edt1.Text = zqry.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry.SQL.Clear;
zqry.SQL.Add('Update Datail_nama_menu set nama= "'+edt1.Text+'",Detail_harga="'+edt2.Text+'",Detail_jumlah="'+edt3.Text+'",Detail_total="'+edt4.Text+'",Detail_invoice/bayar="'+cbb1.Text+'" where Id_detail="'+id+'"');
zqry. ExecSQL;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_detail');
zqry.Open;

posisiawal;
end;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 zqry.SQL.Clear;
zqry.SQL.Add(' delete from tb_detail where Id_detail="'+id+'"');
zqry. ExecSQL;
zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_detail');
zqry.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
cbb1.Enabled:= False;
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
frxrprt2.ShowReport();
end;

end.
 