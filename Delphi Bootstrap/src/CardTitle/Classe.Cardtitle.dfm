object TCardTitle: TTCardTitle
  Left = 0
  Top = 0
  Width = 256
  Height = 369
  Color = clWhite
  Padding.Left = 5
  Padding.Top = 5
  Padding.Right = 10
  Padding.Bottom = 5
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object shape: TPanel
    Left = 5
    Top = 5
    Width = 241
    Height = 359
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Image: TImage
      Left = 0
      Top = 0
      Width = 241
      Height = 184
      Cursor = crHandPoint
      Align = alTop
      Center = True
      ParentShowHint = False
      Proportional = True
      ShowHint = False
      Stretch = True
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 297
    end
    object shapeInterno: TPanel
      Left = 0
      Top = 184
      Width = 241
      Height = 171
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object captionCard: TLabel
        Left = 8
        Top = 9
        Width = 77
        Height = 19
        Caption = 'Card title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object msgCard: TLabel
        Left = 8
        Top = 39
        Width = 217
        Height = 75
        AutoSize = False
        Caption = 
          'Some quick example text to build on the card title and make up t' +
          'he bulk of the card'#39's content.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object button: TPanel
        Left = 8
        Top = 120
        Width = 145
        Height = 41
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Go Somewhere'
        Color = 16608781
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
    end
  end
end
