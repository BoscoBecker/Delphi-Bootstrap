unit Classe.Alert;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

{$SCOPEDENUMS ON}
 Type
  TStyle = (Primary, Secondary, Success, Danger, Warning, Info, Light, Dark);
{$SCOPEDENUMS OFF}

type
  TAlert = class(TFrame)
    shape: TPanel;
  private
    FStyleAlert: TStyle;
    FTextAlert: String;
    procedure SetStyleAlert(const Value: TStyle);
    procedure SetTextAlert(const Value: String);
  strict protected
    procedure Primary;
    procedure Secondary;
    procedure Success;
    procedure Danger;
    procedure Warning;
    procedure Info;
    procedure Ligth;
    procedure Dark;
  public
    procedure MakeRounded(Control: TWinControl);
  published
    property StyleAlert: TStyle read FStyleAlert write SetStyleAlert;
    property TextAlert: String read FTextAlert write SetTextAlert;
  end;


procedure Register;

implementation

{$R *.dfm}

procedure Register;
begin
  RegisterComponents('Delphi Bootsrap',[TAlert]);
end;

procedure TAlert.Danger;
begin
  shape.Color:= $00DAD7F8;
  shape.Font.Color:= $00292084;
  self.Color:= $00C7C2F5;
end;

procedure TAlert.Dark;
begin
  shape.Color:= $00D4D3D3;
  shape.Font.Color:= $00191614;
  self.Color:= $00BFBEBC;
end;

procedure TAlert.Info;
begin
  shape.Color:= $00FCF4CF ;
  shape.Font.Color:= $00605105 ;
  self.Color:= $00FBEFB6;
end;

procedure TAlert.Ligth;
begin
  shape.Color:= $00FEFEFE;
  shape.Font.Color:= $00646463;
  self.Color:= $00FEFDFD;
end;

procedure TAlert.Primary;
begin
  shape.Color:= $00FFE2CF;
  shape.Font.Color:= $00984208;
  self.Color:= $00FED4B6;
end;

procedure TAlert.Secondary;
begin
  shape.Color:= $00E2E3E5;
  shape.Font.Color:= $0041464B;
  self.Color:= $00D8D6D3;
end;

procedure TAlert.Success;
begin
  shape.color:= $00D1E7DD;
  shape.Font.Color:= $0032510F;
  Self.Color:= $00CCDBBA;
end;

procedure TAlert.Warning;
begin
  shape.color:= $00CDF3FF;
  shape.Font.Color:= $00034D66;
  self.Color:= $00B5ECFF;
end;

procedure TAlert.SetStyleAlert(const Value: TStyle);
begin
  case value of
    TStyle.primary: Primary ;
    TStyle.secondary: Secondary;
    TStyle.success: Success;
    TStyle.danger: Danger;
    TStyle.warning: Warning;
    TStyle.info: Info;
    TStyle.light: Ligth;
    TStyle.dark: Dark;
  end;

  FStyleAlert := Value;
end;

procedure TAlert.SetTextAlert(const Value: String);
begin
  shape.Caption:= Value;
  FTextAlert := Value;
end;

procedure TAlert.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 5, 5);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(r, - 5, - 5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;
  end;
end;


end.
