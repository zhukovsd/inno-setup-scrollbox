unit ExampleForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

function CreateScrollBox(ParentHandle: HWND; Left, Top, Width, Height: integer): HWND; stdcall;
  external 'ScrollBox.dll';

procedure DestroyScrollBox; stdcall;
  external 'ScrollBox.dll';

procedure SetScrollBoxContentSize(Width, Height: integer); stdcall;
  external 'ScrollBox.dll';

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  CreateScrollBox(self.Handle, 0, 0, 100, 100);
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  DestroyScrollBox;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  SetScrollBoxContentSize(self.SpinEdit1.Value, self.SpinEdit2.Value);
end;

end.
