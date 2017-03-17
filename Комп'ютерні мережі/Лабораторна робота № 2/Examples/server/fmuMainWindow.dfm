object fmMainWindow: TfmMainWindow
  Left = 192
  Top = 124
  Width = 500
  Height = 427
  Caption = 'fmuMainWindow'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    484
    389)
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 32
    Width = 289
    Height = 324
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 363
    Width = 394
    Height = 21
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
  end
  object chkActive: TCheckBox
    Left = 8
    Top = 8
    Width = 97
    Height = 17
    Caption = 'chkActive'
    TabOrder = 2
    OnClick = chkActiveClick
  end
  object btnSend: TButton
    Left = 409
    Top = 363
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'btnSend'
    TabOrder = 3
    OnClick = btnSendClick
  end
  object ListBox1: TListBox
    Left = 320
    Top = 32
    Width = 161
    Height = 201
    ItemHeight = 13
    TabOrder = 4
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 12345
    ServerType = stNonBlocking
    OnClientConnect = ServerSocket1ClientConnect
    OnClientRead = ServerSocket1ClientRead
    Left = 256
    Top = 136
  end
end
