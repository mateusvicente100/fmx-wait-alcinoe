unit Views.MainMenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Wait, FMX.Objects,
  FMX.Layouts, ALFmxObjects;

type
  TFrmMainMenu = class(TForm)
    btnShow: TButton;
    lytShowHere: TLayout;
    txtShowHere: TText;
    retShowHere: TALRectangle;
    procedure btnShowClick(Sender: TObject);
    procedure txtShowHereClick(Sender: TObject);
  end;

var
  FrmMainMenu: TFrmMainMenu;

implementation

{$R *.fmx}

procedure TFrmMainMenu.btnShowClick(Sender: TObject);
begin
  TWait.Start(
    procedure
    begin
      // Do your process.
      Sleep(2000);
    end);
end;

procedure TFrmMainMenu.txtShowHereClick(Sender: TObject);
begin
  TWait.Start(retShowHere,
    procedure
    begin
      // Do your process.
      Sleep(2000);
    end);
end;

end.
