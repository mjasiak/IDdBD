object WorkerForm: TWorkerForm
  Left = 0
  Top = 0
  Caption = 'Menu g'#322#243'wne'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbGrid: TDBGrid
    Left = 8
    Top = 8
    Width = 529
    Height = 252
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn_edit: TButton
    Left = 8
    Top = 266
    Width = 75
    Height = 25
    Caption = 'Edytuj'
    TabOrder = 1
  end
  object btn_delete: TButton
    Left = 89
    Top = 266
    Width = 75
    Height = 25
    Caption = 'Usu'#324
    TabOrder = 2
  end
  object btn_mycard: TButton
    Left = 552
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Moja karta'
    TabOrder = 3
    OnClick = btn_mycardClick
  end
  object btn_discount: TButton
    Left = 462
    Top = 266
    Width = 75
    Height = 25
    Caption = 'Nadaj znizk'#281
    TabOrder = 4
  end
end
