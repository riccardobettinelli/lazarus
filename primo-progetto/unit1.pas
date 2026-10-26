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
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
c, f: Double;
begin
  // CASO 1: ho scritto solo i Celsius -> calcolo i Fahrenheit
  if (Edit1.Text <> '') and (Edit2.Text = '') then
  begin
  c := StrToFloat(Edit1.Text);
  f := c * 9 / 5 + 32;
  Edit2.Text := FloatToStr(f);
  end
  // CASO 2: ho scritto solo i Fahrenheit -> calcolo i Celsius
  else if (Edit2.Text <> '') and (Edit1.Text = '') then
  begin
  f := StrToFloat(Edit2.Text);
  c := (f - 32) * 5 / 9;
  Edit1.Text := FloatToStr(c);
  end
  // CASO 3: sono pieni tutti e due -> CHIEDO cosa vuole
  else if (Edit1.Text <> '') and (Edit2.Text <> '') then
  begin
  if MessageDlg('Vuoi ricalcolare i Celsius dai Fahrenheit?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  f := StrToFloat(Edit2.Text);
  Edit1.Text := FloatToStr((f - 32) * 5 / 9);
  end
  else
  begin
  c := StrToFloat(Edit1.Text);
  Edit2.Text := FloatToStr(c * 9 / 5 + 32);
  end;
  end
  // CASO 4: sono vuoti tutti e due
  else
  ShowMessage('Scrivi un valore in una delle due caselle.');
  end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear; // svuota la prima casella
Edit2.Clear; // svuota la seconda
end;

end.

