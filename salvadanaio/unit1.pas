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
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var giorno, euro, totale: integer;
begin

begin
  Randomize;
  Memo1.Clear;
  totale := 0;
  // QUI il ciclo FOR: giorno da 1 a 7
  //   QUI euro a caso da 1 a 5
  //   QUI aggiungi euro al totale
  //   QUI scrivi nel Memo: Giorno 1: +3 euro
  // QUI, dopo il ciclo, scrivi il totale della settimana
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

end;

end.

