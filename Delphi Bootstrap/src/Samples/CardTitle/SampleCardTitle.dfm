object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Card Title'
  ClientHeight = 541
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TCardTitle1: TTCardTitle
    Left = 56
    Top = 32
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
    OnButtonClick = TCardTitle1ButtonClick
    StyleCard = Danger
    ButtonVisible = True
    CapionButton = 'Get Coke'
  end
  object TCardTitle2: TTCardTitle
    Left = 360
    Top = 128
    Width = 256
    Height = 369
    Color = clWhite
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    OnButtonClick = TCardTitle2ButtonClick
    StyleCard = Primary
    ButtonVisible = True
    CapionButton = 'Get Pepsi'
  end
end
