unit ScrollBoxUnit;

interface

uses
  System.SysUtils, Winapi.Windows, Winapi.Messages, VCL.Controls, VCL.Forms, VCL.StdCtrls,
  VCL.Dialogs;

function CreateScrollBox(ParentHandle: HWND; Left, Top, Width, Height: integer): HWND; stdcall;
procedure DestroyScrollBox; stdcall;
procedure SetScrollBoxContentSize(Width, Height: integer); stdcall;

implementation

var
  ScrollBox: TScrollBox = nil;
  Button: TButton = nil;

function CreateScrollBox(ParentHandle: HWND; Left, Top, Width, Height: integer): HWND; stdcall;
begin
  ScrollBox := TScrollBox.Create(nil);

  ScrollBox.ParentWindow := ParentHandle;
  SetParent(ScrollBox.Handle, ParentHandle);

  ScrollBox.SetBounds(Left, Top, Width, Height);

  Button := TButton.Create(ScrollBox);
  Button.Parent := ScrollBox;
  Button.SetBounds(0, 0, 0, 0);

  Result := ScrollBox.Handle;
end;

procedure DestroyScrollBox; stdcall;
begin
  if Assigned(ScrollBox) then begin
    FreeAndNil(Button);
    FreeAndNil(ScrollBox);
  end;
end;

procedure SetScrollBoxContentSize(Width, Height: integer); stdcall;
begin
  if Assigned(ScrollBox) then begin
    Button.SetBounds(Width, Height, 0, 0);
  end;
end;

end.
