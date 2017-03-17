object fmMainWindow: TfmMainWindow
  Left = 192
  Top = 124
  Width = 554
  Height = 428
  Caption = 'fmMainWindow'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    538
    390)
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 40
    Width = 523
    Height = 309
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 359
    Width = 443
    Height = 21
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
    OnKeyDown = Edit1KeyDown
  end
  object btnSend: TButton
    Left = 459
    Top = 359
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'btnSend'
    TabOrder = 2
    OnClick = btnSendClick
  end
  object Edit2: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 144
    Top = 8
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 12345
    OnRead = ClientSocket1Read
    Left = 264
    Top = 72
  end
end
