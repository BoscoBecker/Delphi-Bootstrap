unit Sample;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Alert;

type
  TForm1 = class(TForm)
    Alert1: TAlert;
    Alert2: TAlert;
    Alert3: TAlert;
    Alert4: TAlert;
    Alert5: TAlert;
    Alert6: TAlert;
    Alert7: TAlert;
    Alert8: TAlert;
    Alert9: TAlert;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Alert1.MakeRounded(Alert1);
  Alert2.MakeRounded(Alert2);
  Alert3.MakeRounded(Alert3);
  Alert4.MakeRounded(Alert4);
  Alert5.MakeRounded(Alert5);
  Alert6.MakeRounded(Alert6);
  Alert7.MakeRounded(Alert7);
  Alert8.MakeRounded(Alert8);

  // Update Styles

  // Bord Rounded
  Alert9.MakeRounded(Alert9);

  // Change the Style Here
  Alert9.StyleAlert := TStyle.Danger;

  // Change Text Alert
  Alert9.TextAlert := 'Delphi Bootstrap';


end;

end.
