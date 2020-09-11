unit FMX.Wait.Intf;

interface

uses
  System.SysUtils, System.Classes, FMX.Types;

type
  IWait = interface
    ['{3BFB4B95-8DE3-4326-98B1-906D576181B1}']
    procedure Wait(const AProc: TProc); overload;
    procedure Wait(const AParent: TFmxObject; const AProc: TProc); overload;
  end;

implementation

end.
