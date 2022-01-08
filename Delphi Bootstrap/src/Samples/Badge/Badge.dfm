object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Badges'
  ClientHeight = 264
  ClientWidth = 644
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
  object Badge1: TBadge
    Left = 16
    Top = 40
    Width = 158
    Height = 41
    TabOrder = 0
    StyleBadge = Dark
    CaptionNotification = 'Notify'
    OnButtonClick = Badge1ButtonClick
  end
  object Badge2: TBadge
    Left = 272
    Top = 176
    Width = 158
    Height = 41
    TabOrder = 1
    StyleBadge = Primary
  end
end
