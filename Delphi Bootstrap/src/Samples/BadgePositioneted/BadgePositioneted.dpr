program BadgePositioneted;

uses
  Vcl.Forms,
  samplebadge in 'samplebadge.pas' {Form4},
  Classe.Badge in '..\..\Badges\Classe.Badge.pas' {Badge: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
