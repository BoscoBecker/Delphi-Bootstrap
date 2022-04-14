unit SampleCardTitle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Cardtitle, Vcl.Imaging.jpeg;

type
  TForm5 = class(TForm)
    TCardTitle1: TTCardTitle;
    TCardTitle2: TTCardTitle;
    procedure FormCreate(Sender: TObject);
    procedure TCardTitle1ButtonClick(Sender: TObject);
    procedure TCardTitle2ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation


{$R *.dfm}


procedure TForm5.FormCreate(Sender: TObject);
begin
  TCardTitle1.MakeRounded(TCardTitle1);
  TCardTitle1.MakeRounded(TCardTitle1.shapeInterno);
  TCardTitle1.MakeRounded(TCardTitle1.shape);
  TCardTitle1.MakeRounded(TCardTitle1.button);
  TCardTitle1.OnClick:= TCardTitle1.OnButtonClick;
  //Showmessage();Exit;
  TCardTitle1.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'cocacola.jpg');

  TCardTitle2.MakeRounded(TCardTitle2);
  TCardTitle2.MakeRounded(TCardTitle2.shapeInterno);
  TCardTitle2.MakeRounded(TCardTitle2.shape);
  TCardTitle2.MakeRounded(TCardTitle2.button);
  TCardTitle2.OnClick:= TCardTitle2.OnButtonClick;
  TCardTitle2.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'pepsi.jpg');

end;

procedure TForm5.TCardTitle1ButtonClick(Sender: TObject);
begin
  ShowMessage('Button 1');
end;

procedure TForm5.TCardTitle2ButtonClick(Sender: TObject);
begin
  ShowMessage('Button 2');
end;

end.
