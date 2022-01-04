object Badge: TBadge
  Left = 0
  Top = 0
  Width = 143
  Height = 38
  TabOrder = 0
  object Shape: TPanel
    Left = 0
    Top = 0
    Width = 143
    Height = 38
    Align = alClient
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Notifications'
    Color = 16608781
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Notification: TPanel
      Left = 98
      Top = 7
      Width = 41
      Height = 25
      BevelOuter = bvNone
      Caption = '4'
      Color = 8222060
      ParentBackground = False
      TabOrder = 0
    end
  end
end
