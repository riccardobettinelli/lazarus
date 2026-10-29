unit Unit1;


{$mode objfpc}{$H+}


interface


uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;


type


  { TForm1 }


  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;


    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private


  public


  end;


var
  Form1: TForm1;


implementation


{$R *.lfm}


{ TForm1 }


// Tasto PIÙ (+)
procedure TForm1.Button1Click(Sender: TObject);
var
  n1, n2: Double;
begin
  n1 := StrToFloatDef(StringReplace(Edit1.Text, '.', ',', [rfReplaceAll]), 0);
  n2 := StrToFloatDef(StringReplace(Edit2.Text, '.', ',', [rfReplaceAll]), 0);
  Edit3.Text := FloatToStr(n1 + n2);
end;


// Tasto PER (X)
procedure TForm1.Button2Click(Sender: TObject);
var
  n1, n2: Double;
begin
  n1 := StrToFloatDef(StringReplace(Edit1.Text, '.', ',', [rfReplaceAll]), 0);
  n2 := StrToFloatDef(StringReplace(Edit2.Text, '.', ',', [rfReplaceAll]), 0);
  Edit3.Text := FloatToStr(n1 * n2);
end;


// Tasto DIVISO (:)
procedure TForm1.Button3Click(Sender: TObject);
var
  n1, n2: Double;
begin
  n1 := StrToFloatDef(StringReplace(Edit1.Text, '.', ',', [rfReplaceAll]), 0);
  n2 := StrToFloatDef(StringReplace(Edit2.Text, '.', ',', [rfReplaceAll]), 0);
  if n2 <> 0 then
    Edit3.Text := FloatToStr(n1 / n2)
  else
    Edit3.Text := 'Errore /0';
end;


// Tasto MENO (-)
procedure TForm1.Button4Click(Sender: TObject);
var
  n1, n2: Double;
begin
  n1 := StrToFloatDef(StringReplace(Edit1.Text, '.', ',', [rfReplaceAll]), 0);
  n2 := StrToFloatDef(StringReplace(Edit2.Text, '.', ',', [rfReplaceAll]), 0);
  Edit3.Text := FloatToStr(n1 - n2);
end;


end.
