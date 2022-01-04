object BadgePositioneted: TBadgePositioneted
  Left = 0
  Top = 0
  Width = 126
  Height = 58
  Cursor = crHandPoint
  TabOrder = 0
  object shape: TPanel
    Left = 19
    Top = 13
    Width = 77
    Height = 38
    Cursor = crHandPoint
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Caption = 'Inbox'
    Color = 16608781
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 69
  end
  object notifications: TPanel
    Left = 65
    Top = 2
    Width = 45
    Height = 20
    Cursor = crHandPoint
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Caption = '99+'
    Color = 4535772
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 37
  end
end
