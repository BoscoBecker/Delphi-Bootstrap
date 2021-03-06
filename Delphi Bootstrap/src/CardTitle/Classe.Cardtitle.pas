unit Classe.Cardtitle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

{$SCOPEDENUMS ON}
Type
  TStyle = (Primary, Secondary, Success, Danger, Warning, Info, Light, Dark);
{$SCOPEDENUMS OFF}


type
  TTCardTitle = class(TFrame)
    shape: TPanel;
    Image: TImage;
    shapeInterno: TPanel;
    captionCard: TLabel;
    msgCard: TLabel;
    button: TPanel;
  private
    ICanvas: TCanvas;
    FCardPicture: TPicture;
    fOnButtonClick: TNotifyEvent;
    FStyleCard: TStyle;
    FButtonVisible: boolean;
    FCapionButton: String;

    procedure CreateParams(var Params: TCreateParams); override;
    procedure PaintWindow(DC: HDC); override;

    procedure EmbeddedButtonClick(Sender: TObject);
    procedure SetCardPicture(const Value: TPicture);
    procedure SetStyleCard(const Value: TStyle);
    procedure Primary;
    procedure Secondary;
    procedure Success;
    procedure Danger;
    procedure Warning;
    procedure Info;
    procedure Ligth;
    procedure Dark;
    procedure SetButtonVisible(const Value: boolean);
    procedure SetCapionButton(const Value: String);

  protected
    procedure DoEmbeddedButtonClick; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    procedure MakeRounded(Control: TWinControl);
  published
    property CardPicture: TPicture read FCardPicture write SetCardPicture;
    property OnButtonClick: TNotifyEvent read fOnButtonClick write fOnButtonClick;
    property StyleCard: TStyle read FStyleCard write SetStyleCard;
    property ButtonVisible: boolean read FButtonVisible write SetButtonVisible;
    property CapionButton: String read FCapionButton write SetCapionButton;
  end;

procedure register;

implementation

{$R *.dfm}

procedure register;
begin
  RegisterComponents('Delphi Bootstrap', [TTCardTitle]);
end;

{ TCardTitle }

constructor TTCardTitle.Create(AOwner: TComponent);
begin
  inherited;
  FCardPicture := TPicture.Create;
  button.OnClick := EmbeddedButtonClick;
end;

procedure TTCardTitle.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_TRANSPARENT or WS_EX_COMPOSITED;
end;

procedure TTCardTitle.Danger;
begin
  button.Color:= $004535DC;
end;

procedure TTCardTitle.Dark;
begin
  button.Color:= clBlack;
  button.Font.Color:= clwhite;
end;

procedure TTCardTitle.DoEmbeddedButtonClick;
begin
  if Assigned(fOnButtonClick) then
    fOnButtonClick(Self);
end;

procedure TTCardTitle.EmbeddedButtonClick(Sender: TObject);
begin
  DoEmbeddedButtonClick;
end;

procedure TTCardTitle.Info;
begin
  button.Color:= $00F0CA0D;
  button.Font.Color:= clBlack;
end;

procedure TTCardTitle.Ligth;
begin
  button.Color:= clwhite;
  button.Font.Color:= clgray;
end;

procedure TTCardTitle.MakeRounded(Control: TWinControl);
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

procedure TTCardTitle.PaintWindow(DC: HDC);
begin
  inherited;
    // Do not remove this comment to keep transparancy
end;

procedure TTCardTitle.Primary;
begin
  button.Color:= $00FD6E0D;
end;

procedure TTCardTitle.Secondary;
begin
  button.Color:= $007D756C;
end;

procedure TTCardTitle.SetButtonVisible(const Value: boolean);
begin
  button.Visible:= Value;

  FButtonVisible := Value;
end;

procedure TTCardTitle.SetCapionButton(const Value: String);
begin
  FCapionButton := Value;
  Button.Caption:= FCapionButton;
end;

procedure TTCardTitle.SetCardPicture(const Value: TPicture);
begin
  Image.Picture.Assign(Value);

  FCardPicture:= Image.Picture;
end;

procedure TTCardTitle.SetStyleCard(const Value: TStyle);
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

  FStyleCard := Value;
end;

procedure TTCardTitle.Success;
begin
  button.color:= $00548719;
end;

procedure TTCardTitle.Warning;
begin
  button.color:= $0007C1FF;
end;

end.
