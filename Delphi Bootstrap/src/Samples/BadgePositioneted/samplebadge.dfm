object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Positioned'
  ClientHeight = 236
  ClientWidth = 523
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
  object BadgePositioneted1: TBadgePositioneted
    Left = 8
    Top = 24
    Width = 113
    Height = 56
    TabOrder = 0
    StyleBadge = Primary
    CountNotification = '99+'
  end
  object BadgePositioneted2: TBadgePositioneted
    Left = 152
    Top = 24
    Width = 117
    Height = 56
    TabOrder = 1
    StyleBadge = Warning
    CountNotification = '+111'
    CaptionShape = 'Valor'
  end
  object BadgePositioneted3: TBadgePositioneted
    Left = 291
    Top = 24
    Width = 117
    Height = 56
    TabOrder = 2
    StyleBadge = Success
    CountNotification = '0'
  end
  object BadgePositioneted4: TBadgePositioneted
    Left = 139
    Top = 104
    Width = 174
    Height = 56
    TabOrder = 3
    StyleBadge = Info
    CountNotification = '100000'
    CaptionShape = 'Inbox'
  end
end
