unit Classe.badge.positioned;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls;

{$SCOPEDENUMS ON}
Type
  TStyle = (Primary, Secondary, Success, Danger, Warning, Info, Light, Dark);
{$SCOPEDENUMS OFF}

type
  TBadgePositioneted = class(TFrame)
    shape: TPanel;
    notifications: TPanel;
  private
    FStyleBadge: TStyle;
    FCountNotification: string;
    FCaptionShape: string;
    fOnButtonClick: TNotifyEvent;
    procedure EmbeddedButtonClick(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure PaintWindow(DC: HDC); override;
    procedure SetStyleABadge(const Value: TStyle);

    procedure Primary;
    procedure Secondary;
    procedure Success;
    procedure Danger;
    procedure Warning;
    procedure Info;
    procedure Ligth;
    procedure Dark;
    procedure SetCountNotification(const Value: string);
    procedure SetCaptionShape(const Value: string);
  protected
     procedure DoEmbeddedButtonClick; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    procedure MakeRounded(Control: TWinControl);
  published
    property StyleBadge: TStyle read FStyleBadge write SetStyleABadge;
    property CountNotification: string read FCountNotification write SetCountNotification;
    property CaptionShape: string read FCaptionShape write SetCaptionShape;
    property OnButtonClick: TNotifyEvent read fOnButtonClick write fOnButtonClick;
  end;

procedure register;

implementation

{$R *.dfm}

procedure register;
begin
  RegisterComponents('Delphi Bootstrap', [TBadgePositioneted]);
end;

constructor TBadgePositioneted.Create(AOwner: TComponent);
begin
  inherited;
  Brush.Style := bsClear;
  shape.OnClick := EmbeddedButtonClick;
end;

procedure TBadgePositioneted.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_TRANSPARENT or WS_EX_COMPOSITED;
end;

procedure TBadgePositioneted.Danger;
begin
  shape.Color:= $004535DC;
end;

procedure TBadgePositioneted.Dark;
begin
  shape.Color:= clBlack;
  shape.Font.Color:= clwhite;
end;

procedure TBadgePositioneted.DoEmbeddedButtonClick;
begin
  if Assigned(fOnButtonClick) then
    fOnButtonClick(Self);
end;

procedure TBadgePositioneted.EmbeddedButtonClick(Sender: TObject);
begin
  DoEmbeddedButtonClick;
end;

procedure TBadgePositioneted.Info;
begin
  shape.Color:= $00F0CA0D;
  shape.Font.Color:= clBlack;
end;

procedure TBadgePositioneted.Ligth;
begin
  shape.Color:= clwhite;
  shape.Font.Color:= clgray;
end;

procedure TBadgePositioneted.Primary;
begin
  shape.Color:= $00FD6E0D;
end;

procedure TBadgePositioneted.Secondary;
begin
  shape.Color:= $007D756C;
end;


procedure TBadgePositioneted.Success;
begin
  shape.color:= $00548719;
end;

procedure TBadgePositioneted.Warning;
begin
  shape.color:= $0007C1FF;
end;

procedure TBadgePositioneted.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    Rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 5, 5);
    Perform(EM_GETRECT, 0, lParam(@R));
    InflateRect(R, -5, -5);
    Perform(EM_SETRECTNP, 0, lParam(@R));
    SetWindowRgn(Handle, Rgn, True);
    Invalidate;
  end;
end;

procedure TBadgePositioneted.PaintWindow(DC: HDC);
begin
  // Do not remove this comment to keep transparancy
end;



procedure TBadgePositioneted.SetCaptionShape(const Value: string);
begin
  shape.Caption := Value;
  FCaptionShape := Value;
end;

procedure TBadgePositioneted.SetCountNotification(const Value: string);
begin
  notifications.Caption:= Value;
  FCountNotification := Value;
end;

procedure TBadgePositioneted.SetStyleABadge(const Value: TStyle);
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



end.

