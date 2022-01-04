program SampleAlertLive;

uses
  Vcl.Forms,
  AlertLive in 'AlertLive.pas' {Form2},
  Classe.Alert.Live in '..\..\AlertLive\Classe.Alert.Live.pas' {LiveAlert: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
