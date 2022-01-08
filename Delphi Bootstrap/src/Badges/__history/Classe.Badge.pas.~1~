unit Classe.Badge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

{$SCOPEDENUMS ON}
Type
  TStyle = (Primary, Secondary, Success, Danger, Warning, Info, Light, Dark);
{$SCOPEDENUMS OFF}

type
  TBadge = class(TFrame)
    Shape: TPanel;
    Notification: TPanel;
  private
    FCountNotification: string;
    FCaptionNotification: string;
    FStyleBadge: TStyle;
    procedure SetCountNotification(const Value: string);
    procedure SetCaptionNotification(const Value: string);
    procedure Primary;
    procedure Secondary;
    procedure Success;
    procedure Danger;
    procedure Warning;
    procedure Info;
    procedure Ligth;
    procedure Dark;
    procedure SetStyleABadge(const Value: TStyle);

  public
    { Public declarations }
  published
    property StyleBadge: TStyle read FStyleBadge write SetStyleABadge;
    procedure MakeRounded(Control: TWinControl);
    procedure DrawShadow(Canvas: TCanvas; Painel: TPanel; Cor: TColor = clBlack);
    property CountNotification: string read FCountNotification write SetCountNotification;
    property CaptionNotification: string read FCaptionNotification write SetCaptionNotification;
  end;


procedure register;

implementation

{$R *.dfm}

procedure register ;
begin
  RegisterComponents('Delphi Bootstrap',[TBadge]);
end;


procedure TBadge.Danger;
begin
  shape.Color:= $004535DC;
end;

procedure TBadge.Dark;
begin
  shape.Color:= clBlack;
  shape.Font.Color:= clwhite;
end;

procedure TBadge.DrawShadow(Canvas: TCanvas; Painel: TPanel; Cor: TColor = clBlack);
var
  r: TRect;
begin
  r.Top      := Painel.Top  + 5;
  r.Left     := Painel.Left + 5;
  r.Right    := Painel.Left + Painel.Width  + 5;
  r.Bottom   := Painel.Top  + Painel.Height + 5;
  Canvas.Pen.Color   := Cor;
  Canvas.Brush.Color := Cor;
  Canvas.Rectangle(r);
end;

procedure TBadge.Info;
begin
  shape.Color:= $00F0CA0D;
  shape.Font.Color:= clBlack;
end;

procedure TBadge.Ligth;
begin
  shape.Color:= clwhite;
  shape.Font.Color:= clgray;
end;

procedure TBadge.MakeRounded(Control: TWinControl);
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

procedure TBadge.Primary;
begin
  shape.Color:= $00FD6E0D;
end;

procedure TBadge.Secondary;
begin
  shape.Color:= $007D756C;
end;

procedure TBadge.SetCaptionNotification(const Value: string);
begin
  Shape.Caption := Value;
  FCaptionNotification := Value;
end;

procedure TBadge.SetCountNotification(const Value: string);
begin
  Notification.Caption:= Value;
  FCountNotification := Value;
end;

procedure TBadge.SetStyleABadge(const Value: TStyle);
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

  FStyleBadge := Value;
end;

procedure TBadge.Success;
begin
  shape.color:= $00548719;
end;

procedure TBadge.Warning;
begin
  shape.color:= $0007C1FF;
end;

end.
