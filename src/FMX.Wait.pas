unit FMX.Wait;

interface

uses
  System.Classes, System.SysUtils, FMX.Wait.Intf, FMX.Forms, System.Threading, FMX.Types, FMX.Wait.Frame;

type
  TWait = class(TInterfacedObject, IWait)
  private
    procedure Wait(const AProc: TProc); overload;
    procedure Wait(const AParent: TFmxObject; const AProc: TProc); overload;
    class function New: IWait;
  public
    class procedure Start(const AProc: TProc); overload;
    class procedure Start(const AParent: TFmxObject; const AProc: TProc); overload;
    class procedure Run(const AProc: TProc);
    class procedure Synchronize(const AProc: TProc);
    class procedure WaitFor(const AProc: TProc; const ASleepTime: Integer = 50);
  end;

implementation

class function TWait.New: IWait;
begin
  Result := TWait.Create;
end;

procedure TWait.Wait(const AParent: TFmxObject; const AProc: TProc);
begin
{$WARN SYMBOL_PLATFORM OFF}
  if (DebugHook = 1) then
  begin
    AProc;
    Exit;
  end;
{$WARN SYMBOL_PLATFORM ON}

  TThread.CreateAnonymousThread(
    procedure
    var
      LFrame: TFrameWait;
    begin
      try
        TWait.Synchronize(
          procedure
          begin
            if Assigned(AParent) then
            begin
              LFrame := TFrameWait.Create(AParent);
              LFrame.Parent := AParent;
            end
            else
            begin
              LFrame := TFrameWait.Create(Screen.ActiveForm);
              LFrame.Parent := Screen.ActiveForm;
            end;
            LFrame.Align := TAlignLayout.Contents;
            LFrame.BitmapListAnimation.Start;
          end);
        if Assigned(AProc) then
          AProc;
      finally
        TWait.Synchronize(
          procedure
          begin
            LFrame.Owner.RemoveComponent(LFrame);
            LFrame.DisposeOf;
          end);
      end;
    end).Start;
end;

class procedure TWait.WaitFor(const AProc: TProc; const ASleepTime: Integer);
begin
{$WARN SYMBOL_PLATFORM OFF}
  if (DebugHook = 1) then
  begin
    Sleep(ASleepTime);
    AProc;
    Exit;
  end;
{$WARN SYMBOL_PLATFORM ON}

  TThread.CreateAnonymousThread(
    procedure
    begin
      Sleep(ASleepTime);
      TThread.Synchronize(TThread.Current,
        procedure
        begin
          AProc;
        end);
    end).Start;
end;

procedure TWait.Wait(const AProc: TProc);
begin
  Self.Wait(nil, AProc);
end;

class procedure TWait.Run(const AProc: TProc);
begin
{$WARN SYMBOL_PLATFORM OFF}
  if (DebugHook = 1) then
  begin
    AProc;
    Exit;
  end;
{$WARN SYMBOL_PLATFORM ON}

  TThread.CreateAnonymousThread(
    procedure
    begin
      if Assigned(AProc) then
        AProc;
    end).Start;
end;

class procedure TWait.Start(const AParent: TFmxObject; const AProc: TProc);
begin
  TWait.New.Wait(AParent, AProc);
end;

class procedure TWait.Start(const AProc: TProc);
begin
  TWait.New.Wait(AProc);
end;

class procedure TWait.Synchronize(const AProc: TProc);
begin
  TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      AProc;
    end);
end;

end.
