unit Views.Menu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects, FMX.Filter.Effects, FMX.StdCtrls, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, ALFmxObjects, ALFmxLayouts, FMX.Wait;

type
  TFrmMenu = class(TForm)
    retHeader: TALRectangle;
    Label1: TLabel;
    Label2: TLabel;
    LayoutProfile: TLayout;
    imgUser: TALCircle;
    lytHeader: TLayout;
    btnVoltar: TSpeedButton;
    imgVoltar: TPath;
    btnOpcoes: TSpeedButton;
    imgOpcoes: TPath;
    ALLayout1: TALLayout;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    vsbContent: TVertScrollBox;
    Rectangle1: TRectangle;
    Path1: TPath;
    Label7: TLabel;
    Path2: TPath;
    Rectangle2: TRectangle;
    Path3: TPath;
    Label8: TLabel;
    Path4: TPath;
    Rectangle3: TRectangle;
    Path5: TPath;
    Label9: TLabel;
    Path6: TPath;
    Rectangle4: TRectangle;
    Path7: TPath;
    Label10: TLabel;
    Path8: TPath;
    Rectangle5: TRectangle;
    Path9: TPath;
    Label11: TLabel;
    Path10: TPath;
    Rectangle6: TRectangle;
    Path11: TPath;
    Label12: TLabel;
    Path12: TPath;
    Rectangle7: TRectangle;
    Path13: TPath;
    Label13: TLabel;
    Path14: TPath;
    Rectangle8: TRectangle;
    Path15: TPath;
    Label14: TLabel;
    Path16: TPath;
    Label15: TLabel;
    Label16: TLabel;
    Rectangle11: TRectangle;
    Path19: TPath;
    Label19: TLabel;
    Path20: TPath;
    Rectangle9: TRectangle;
    Path17: TPath;
    Label17: TLabel;
    Path18: TPath;
    Rectangle10: TRectangle;
    Path21: TPath;
    Label18: TLabel;
    Path23: TPath;
    Rectangle12: TRectangle;
    Path22: TPath;
    Label20: TLabel;
    Path24: TPath;
    Rectangle13: TRectangle;
    Path25: TPath;
    Label21: TLabel;
    Path26: TPath;
    procedure imgUserClick(Sender: TObject);
    procedure btnOpcoesClick(Sender: TObject);
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.fmx}

procedure TFrmMenu.btnOpcoesClick(Sender: TObject);
begin
  TWait.Start(vsbContent,
    procedure
    begin
      Sleep(2000);
    end);
end;

procedure TFrmMenu.imgUserClick(Sender: TObject);
begin
  TWait.Start(
    procedure
    begin
      Sleep(2000);
    end);
end;

end.
