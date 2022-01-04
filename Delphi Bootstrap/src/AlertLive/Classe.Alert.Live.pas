unit Classe.Alert.Live;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

{$SCOPEDENUMS ON}
Type
  TStyle = (Primary, Secondary, Success, Danger, Warning, Info, Light, Dark);
{$SCOPEDENUMS OFF}

type
  TLiveAlert = class (TFrame)
    Shape: TPanel;
    Close: TImage;
    procedure CloseClick(Sender: TObject);
  private
    FTextAlert: String;
    FStyleAlert: TStyle;
    FCloseAlert: Boolean;
    FShowALert: boolean;
    procedure SetStyleAlert(const Value: TStyle);
    procedure SetTextAlert(const Value: String);
    procedure SetShowALert(const Value: boolean);
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
    property ShowALert: boolean read FShowALert write SetShowALert;
  end;

procedure Register;

implementation

{$R *.dfm}

procedure register;
begin
  RegisterComponents('Delphi Bootsrap',[TLiveAlert]);
end;

procedure TLiveAlert.CloseClick(Sender: TObject);
begin
  self.Visible := False;
end;

procedure TLiveAlert.Danger;
begin
  shape.Color:= $00DAD7F8;
  shape.Font.Color:= $00292084;
  self.Color:= $00C7C2F5;
end;

procedure TLiveAlert.Dark;
begin
  shape.Color:= $00D4D3D3;
  shape.Font.Color:= $00191614;
  self.Color:= $00BFBEBC;
end;

procedure TLiveAlert.Info;
begin
  shape.Color:= $00FCF4CF ;
  shape.Font.Color:= $00605105 ;
  self.Color:= $00FBEFB6;
end;

procedure TLiveAlert.Ligth;
begin
  shape.Color:= $00FEFEFE;
  shape.Font.Color:= $00646463;
  self.Color:= $00FEFDFD;
end;

procedure TLiveAlert.Primary;
begin
  shape.Color:= $00FFE2CF;
  shape.Font.Color:= $00984208;
  self.Color:= $00FED4B6;
end;

procedure TLiveAlert.Secondary;
begin
  shape.Color:= $00E2E3E5;
  shape.Font.Color:= $0041464B;
  self.Color:= $00D8D6D3;
end;

procedure TLiveAlert.Success;
begin
  shape.color:= $00D1E7DD;
  shape.Font.Color:= $0032510F;
  Self.Color:= $00CCDBBA;
end;

procedure TLiveAlert.Warning;
begin
  shape.color:= $00CDF3FF;
  shape.Font.Color:= $00034D66;
  self.Color:= $00B5ECFF;
end;

procedure TLiveAlert.SetShowALert(const Value: boolean);
begin
  self.Visible := Value;
  FShowALert := Value;
end;

procedure TLiveAlert.SetStyleAlert(const Value: TStyle);
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

procedure TLiveAlert.SetTextAlert(const Value: String);
begin
  FTextAlert := Value;
end;

procedure TLiveAlert.MakeRounded(Control: TWinControl);
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
