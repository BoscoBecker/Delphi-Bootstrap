unit Badge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Badge, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Badge1: TBadge;
    Badge2: TBadge;
    procedure FormCreate(Sender: TObject);
    procedure Badge1ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Badge1ButtonClick(Sender: TObject);
begin
  Showmessage('Notification');
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Badge1.MakeRounded(Badge1);
  Badge1.MakeRounded(Badge1.Notification);
  Badge1.OnClick:= Badge1.OnButtonClick;


  Badge2.MakeRounded(Badge2);
  Badge2.MakeRounded(Badge2.Notification);



end;

end.
