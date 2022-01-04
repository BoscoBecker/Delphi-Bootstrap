program SampleAlert;

uses
  Vcl.Forms,
  Sample in 'Sample.pas' {Form1},
  Classe.Alert in '..\Alert\Classe.Alert.pas' {Alert: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
