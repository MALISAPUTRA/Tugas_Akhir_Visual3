unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
Form8.ShowModal;
end;

end.
