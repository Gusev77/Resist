unit unitresist;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit4Change(Sender: TObject);
begin

end;

procedure TForm1.Button2Click(Sender: TObject);
begin

       Edit1.Text:= ('');
       Edit2.Text:= ('');
       Edit3.Text:= ('');
       Memo1.Lines.Clear;
       MessageDLG('Очистка прошла успешно',mtWarning,[mbOK],0);
end;
{
procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['0'..'9'] then key:=#0;
end;
}
procedure TForm1.Button1Click(Sender: TObject);

var str, res,result:string ;
var i,p,useless,j: byte;
var R1,R2,R3,R:real;

begin

      if R1<>0 then MessageDLG('Это не число, повторите ввод!',mtWarning,[mbOK],0);

     R1:=StrToFloat(Edit1.Text);
     R2:=StrToFloat(Edit2.Text);
     R3:=StrToFloat(Edit3.Text);

     if RadioButton1.Checked = True then
     R:=R1+R2+R3;
    if RadioButton2.Checked = True then
    begin
    if R1=0 then
       R:=(R2*R3)/(R2+R3) ;
    if R2=0 then
       R:=(R1*R3)/(R1+R3) ;
    if R3=0 then
       R:=(R2*R1)/(R2+R1) ;
    if (R1=0) or (R2=0) or (R3=0) then
      useless:=0
      else
      R:=1/((1/R1)+(1/R2)+(1/R3));
      end;
    if RadioButton3.Checked = True then
      R:=R1+((R2*R3)/(R2+R3));
    if (RadioButton1.Checked = false) and (RadioButton2.Checked = false) and (RadioButton3.Checked = false) then
      begin
      MessageDLG('Не выбрано соединение резисторов!',mtWarning,[mbOK],0);
      Memo1.Lines[0]:=('') ;
      end;
    res:=FloatToStr(R);
    for j:=1 to (pos(',',res)+2) do
        result:=result+res[j];
    Memo1.Lines[0]:=('Споротивление цепи = ' + (result)) ;

end;


procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.Label4Click(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin

end;

end.

