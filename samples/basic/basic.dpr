program basic;

uses
  System.StartUpCopy,
  FMX.Forms,
  Views.MainMenu in 'src\Views.MainMenu.pas' {FrmMainMenu},
  FMX.Wait.Frame in '..\..\src\FMX.Wait.Frame.pas' {FrameWait: TFrame},
  FMX.Wait.Intf in '..\..\src\FMX.Wait.Intf.pas',
  FMX.Wait in '..\..\src\FMX.Wait.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMainMenu, FrmMainMenu);
  Application.Run;
end.
