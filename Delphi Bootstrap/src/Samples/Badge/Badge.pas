unit Badge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Badge;

type
  TForm3 = class(TForm)
    Badge1: TBadge;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  Badge1.MakeRounded(Badge1);
  Badge1.MakeRounded(Badge1.Notification);
  Badge1.CountNotification := '10';
end;

end.
