unit FMX.Wait.Frame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Effects, FMX.Ani, FMX.Objects, ALFmxObjects,
  FMX.Layouts, ALFmxLayouts;

type
  TFrameWait = class(TFrame)
    lytContent: TALLayout;
    retContent: TALRectangle;
    CircleContent: TALCircle;
    CircleLoading: TCircle;
    BitmapListAnimation: TBitmapListAnimation;
    sdwCircleContent: TShadowEffect;
  end;

implementation

{$R *.fmx}

end.
