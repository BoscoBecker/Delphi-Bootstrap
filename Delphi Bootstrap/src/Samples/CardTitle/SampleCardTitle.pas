unit SampleCardTitle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Cardtitle, Vcl.Imaging.jpeg;

type
  TForm5 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure TCardTitle1ButtonClick(Sender: TObject);
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
  TCardTitle1.Image.Picture.LoadFromFile('C:\Users\DevDelphi\Desktop\473b6384fa.jpg');

end;

procedure TForm5.TCardTitle1ButtonClick(Sender: TObject);
begin
  ShowMessage('hey');
end;

end.
