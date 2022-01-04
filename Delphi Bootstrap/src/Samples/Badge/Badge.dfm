object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 264
  ClientWidth = 879
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
    Left = 8
    Top = 24
    Width = 289
    Height = 38
    TabOrder = 0
    StyleBadge = Success
    CountNotification = '100'
    CaptionNotification = ' Vendas realizadas  hoje'
  end
  object Badge2: TBadge
    Left = 174
    Top = 88
    Width = 265
    Height = 38
    TabOrder = 1
    StyleBadge = Primary
    CaptionNotification = ' Notifica'#231#245'es de clientes'
  end
  object Badge3: TBadge
    Left = 280
    Top = 152
    Width = 241
    Height = 38
    TabOrder = 2
    StyleBadge = Danger
    CountNotification = '10'
    CaptionNotification = ' Clientes inadimplentes'
  end
end
