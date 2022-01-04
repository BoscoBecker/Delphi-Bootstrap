object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Live example'
  ClientHeight = 512
  ClientWidth = 510
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LiveAlert2: TLiveAlert
    Left = 48
    Top = 176
    Width = 409
    Height = 49
    Color = 11922687
    Padding.Left = 2
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    ParentColor = False
    TabOrder = 0
    StyleAlert = Warning
    ShowALert = True
  end
  object LiveAlert3: TLiveAlert
    Left = 48
    Top = 231
    Width = 409
    Height = 49
    Color = 13091573
    Padding.Left = 2
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    StyleAlert = Danger
    ShowALert = True
  end
  object LiveAlert4: TLiveAlert
    Left = 48
    Top = 286
    Width = 409
    Height = 49
    Color = 12566204
    Padding.Left = 2
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    ParentColor = False
    TabOrder = 2
    StyleAlert = Dark
    ShowALert = True
  end
  object LiveAlert5: TLiveAlert
    Left = 48
    Top = 339
    Width = 409
    Height = 49
    Color = 16510902
    Padding.Left = 2
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    StyleAlert = Info
    ShowALert = True
  end
  object LiveAlert6: TLiveAlert
    Left = 48
    Top = 394
    Width = 409
    Height = 49
    Color = 13425594
    Padding.Left = 2
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    StyleAlert = Success
    ShowALert = True
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 8
    Width = 449
    Height = 137
    TabOrder = 5
    object LiveAlert1: TLiveAlert
      Left = 24
      Top = 32
      Width = 409
      Height = 49
      Color = 11922687
      Padding.Left = 2
      Padding.Top = 2
      Padding.Right = 2
      Padding.Bottom = 2
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      StyleAlert = Warning
      ShowALert = True
    end
    object btnShow: TButton
      Left = 136
      Top = 87
      Width = 129
      Height = 33
      Caption = 'Show Live Alert Again'
      TabOrder = 1
      OnClick = btnShowClick
    end
  end
end
