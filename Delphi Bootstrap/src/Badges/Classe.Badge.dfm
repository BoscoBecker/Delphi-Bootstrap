object Badge: TBadge
  Left = 0
  Top = 0
  Width = 158
  Height = 41
  TabOrder = 0
  object Shape: TPanel
    Left = 0
    Top = 0
    Width = 158
    Height = 41
    Cursor = crHandPoint
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
    DesignSize = (
      158
      41)
    object Notification: TPanel
      Left = 105
      Top = 8
      Width = 42
      Height = 25
      Cursor = crHandPoint
      Anchors = [akBottom]
      BevelOuter = bvNone
      Caption = '4'
      Color = 8222060
      ParentBackground = False
      TabOrder = 0
    end
  end
end
