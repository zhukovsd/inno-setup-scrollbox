object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 263
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 200
    Width = 97
    Height = 25
    Caption = 'Create scrollbox'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 200
    Width = 113
    Height = 25
    Caption = 'Destroy scollbox'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 200
    Width = 145
    Height = 25
    Caption = 'Set scrollbox content size'
    TabOrder = 2
    OnClick = Button3Click
  end
  object SpinEdit1: TSpinEdit
    Left = 248
    Top = 231
    Width = 65
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 100
  end
  object SpinEdit2: TSpinEdit
    Left = 328
    Top = 231
    Width = 65
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 100
  end
end
