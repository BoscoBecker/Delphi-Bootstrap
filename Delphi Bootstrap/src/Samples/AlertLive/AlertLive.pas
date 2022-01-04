unit AlertLive;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Alert.Live, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    LiveAlert2: TLiveAlert;
    LiveAlert3: TLiveAlert;
    LiveAlert4: TLiveAlert;
    LiveAlert5: TLiveAlert;
    LiveAlert6: TLiveAlert;
    GroupBox1: TGroupBox;
    LiveAlert1: TLiveAlert;
    btnShow: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnShowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnShowClick(Sender: TObject);
begin
  LiveAlert1.ShowALert:= True;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  LiveAlert1.MakeRounded(LiveAlert1);
end;

end.
