unit samplebadge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.badge.positioned, Classe.Badge;

type
  TForm4 = class(TForm)
    BadgePositioneted1: TBadgePositioneted;
    BadgePositioneted2: TBadgePositioneted;
    BadgePositioneted3: TBadgePositioneted;
    BadgePositioneted4: TBadgePositioneted;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
  BadgePositioneted1.MakeRounded(BadgePositioneted1.shape);
  BadgePositioneted1.MakeRounded(BadgePositioneted1.notifications);

  BadgePositioneted2.MakeRounded(BadgePositioneted2.shape);
  BadgePositioneted2.MakeRounded(BadgePositioneted2.notifications);

  BadgePositioneted3.MakeRounded(BadgePositioneted3.shape);
  BadgePositioneted3.MakeRounded(BadgePositioneted3.notifications);

  BadgePositioneted4.MakeRounded(BadgePositioneted4.shape);
  BadgePositioneted4.MakeRounded(BadgePositioneted4.notifications);

end;

end.
