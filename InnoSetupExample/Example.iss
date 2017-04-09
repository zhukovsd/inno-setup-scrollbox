[Setup]
AppName=InnoSetupScollBoxTest
AppVersion=0.1
DefaultDirName={tmp}\..\InnoSetupScollBoxTest

Uninstallable=no
CreateUninstallRegKey=no

[Files]
Source: "..\Win32\Release\ScrollBox.dll"; Flags: dontcopy;

[Code]
function CreateScrollBox(ParentHandle: cardinal; Left, Top, Width, Height: integer): cardinal; external 'CreateScrollBox@files:ScrollBox.dll stdcall';
procedure DestroyScrollBox; external 'DestroyScrollBox@files:ScrollBox.dll stdcall';
procedure SetScrollBoxContentSize(Width, Height: integer); external 'SetScrollBoxContentSize@files:ScrollBox.dll stdcall';

const
  ScrollBoxPageID = wpSelectDir;

procedure CurPageChanged(CurPageID: Integer);
begin
  if (CurPageID = ScrollBoxPageID) then begin
    // CreateScrollBox(WizardForm.TWizardPage.Surface.Handle, 50, 300, 100, 100);
    CreateScrollBox(PageFromID(ScrollBoxPageID).Surface.Handle, 0, 100, 100, 100);
  end;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := true;

  if CurPageID = ScrollBoxPageID then begin
    DestroyScrollBox;
  end;
end;