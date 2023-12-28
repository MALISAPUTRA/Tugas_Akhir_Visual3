unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, ComCtrls,
  frxClass, frxDBSet;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt1: TEdit;
    edt4: TEdit;
    edt6: TEdit;
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
    dtp1: TDateTimePicker;
    frxrprt4: TfrxReport;
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
  Form6: TForm6;
  id:string;

implementation

{$R *.dfm}

procedure TForm6.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('INVOICE NO TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('INVOICE STATUS TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('INVOICE REK NAMA  TIDAK BOLEH KOSONG!');
end else
if cbb2.Text ='' then
begin
ShowMessage('INVOICE REK BANK TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('INVOICE REK NO TIDAK BOLEH KOSONG!');
end else

begin
zqry.SQL.Clear; //simpan
zqry.SQL.Add('insert into tb_invoice values(null,"'+edt1.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+cbb1.Text+'","'+edt4.Text+'","'+cbb2.Text+'","'+edt6.Text+'")');
zqry.ExecSQL ;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_invoice');
zqry.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
dtp1.Enabled:= True;
cbb1.Enabled:= True;
edt4.Enabled:= True;
cbb2.Enabled:= True;
edt6.Enabled:= True;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or(cbb1.Text= '')or(edt4.Text= '')or(cbb2.Text= '')or(edt6.Text= '')then
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
zqry.SQL.Add('Update tb_invoice set invo_no= "'+edt1.Text+'",invo_tanggal="'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'",invo_status="'+cbb1.Text+'",invo_rek_nama="'+edt4.Text+'",invo_rek_bank="'+cbb2.Text+'",invo_rek_no="'+edt6.Text+'" where id_invoice="'+id+'"');
zqry. ExecSQL;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_invoice');
zqry.Open;

posisiawal;
end;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 zqry.SQL.Clear;
zqry.SQL.Add(' delete from tb_invoice where id_invoice="'+id+'"');
zqry. ExecSQL;
zqry.SQL.Clear;
zqry.SQL.Add('select * from tb_invoice');
zqry.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.bersih;
begin
edt1.Clear;
cbb1.Clear;
edt4.Clear;
cbb2.Clear;
edt6.Clear;
end;

procedure TForm6.posisiawal;
begin
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= False;
dtp1.Enabled:= False;
cbb1.Enabled:= False;
edt4.Enabled:= False;
cbb2.Enabled:= False;
edt6.Enabled:= False;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
frxrprt4.ShowReport();
end;

end.
 