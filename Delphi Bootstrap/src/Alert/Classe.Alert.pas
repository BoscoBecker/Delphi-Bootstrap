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
    procedure SetStyleAlert(const Value: TStyle);
  protected
    procedure Primary;
    procedure Secondary;
    procedure Success;
    procedure Danger;

  public
    constructor create;reintroduce;
    procedure MakeRounded(Control: TWinControl);
  published
    property StyleAlert : TStyle read FStyleAlert write SetStyleAlert;
  end;


procedure Register;

implementation

{$R *.dfm}

procedure Register;
begin
  RegisterComponents('Delphi Bootsrap',[TAlert]);
end;

constructor TAlert.create;
begin
  MakeRounded(self);
end;

procedure TAlert.Danger;
begin
  shape.Color:= $00DAD7F8;
  shape.Font.Color:= $00292084;
end;

procedure TAlert.Primary;
begin
  shape.Color:= $00FFE2CF;
  shape.Font.Color:= $00984208;
end;

procedure TAlert.Secondary;
begin
  shape.Color:= $00E2E3E5;
  shape.Font.Color:= $0041464B;
end;

procedure TAlert.Success;
begin
  shape.color:= $00D1E7DD;
  shape.Font.Color:= $0032510F
end;

procedure TAlert.SetStyleAlert(const Value: TStyle);
begin
  case value of
    TStyle.primary: Primary ;
    TStyle.secondary: Secondary;
    TStyle.success: Success;
    TStyle.danger: Danger;
    TStyle.warning: ;
    TStyle.info: ;
    TStyle.light: ;
    TStyle.dark: ;
  end;

  FStyleAlert := Value;
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
