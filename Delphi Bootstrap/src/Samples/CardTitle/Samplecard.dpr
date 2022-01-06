program Samplecard;

uses
  Vcl.Forms,
  SampleCardTitle in 'SampleCardTitle.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
