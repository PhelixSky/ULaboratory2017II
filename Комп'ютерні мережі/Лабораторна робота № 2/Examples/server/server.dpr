program server;

uses
  Forms,
  fmuMainWindow in 'fmuMainWindow.pas' {fmMainWindow};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMainWindow, fmMainWindow);
  Application.Run;
end.
