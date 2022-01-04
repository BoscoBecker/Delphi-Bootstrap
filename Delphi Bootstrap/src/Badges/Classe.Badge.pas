unit Classe.Badge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TBadge = class(TFrame)
    Shape: TPanel;
    Notification: TPanel;
  private
    FCountNotification: string;
    procedure SetCountNotification(const Value: string);
  public
    { Public declarations }
  published
    procedure MakeRounded(Control: TWinControl);
    procedure DrawShadow(Canvas: TCanvas; Painel: TPanel; Cor: TColor = clBlack);
    property CountNotification: string read FCountNotification write SetCountNotification;
  end;


procedure register;

implementation

{$R *.dfm}

procedure register ;
begin
  RegisterComponents('Delphi Bootstrap',[TBadge]);
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

procedure TBadge.SetCountNotification(const Value: string);
begin
  Notification.Caption:= Value;
  FCountNotification := Value;
end;

end.
