object Card: TCard
  Left = 0
  Top = 0
  Caption = 'Karta klienta'
  ClientHeight = 174
  ClientWidth = 428
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 295
    Height = 13
    Caption = 'Do Twojego konta nie zosta'#322'a przypisana jeszcze '#380'adna karta'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 400
    Height = 13
    Caption = 
      'Je'#380'eli masz kart'#281' wpisz jej numer w polu ni'#380'ej, je'#380'eli nie klikn' +
      'ij przycisk "Nowa karta"'
  end
  object lbl_cardnumber: TLabel
    Left = 8
    Top = 75
    Width = 59
    Height = 13
    Caption = 'Numer karty'
  end
  object tbox_cardnumber: TEdit
    Left = 72
    Top = 72
    Width = 336
    Height = 21
    TabOrder = 0
  end
  object btn_accept: TButton
    Left = 333
    Top = 109
    Width = 75
    Height = 25
    Caption = 'Zatwierd'#378
    TabOrder = 1
  end
  object btn_newcard: TButton
    Left = 8
    Top = 140
    Width = 75
    Height = 25
    Caption = 'Nowa karta'
    TabOrder = 2
    OnClick = btn_newcardClick
  end
  object btn_cancel: TButton
    Left = 360
    Top = 140
    Width = 48
    Height = 26
    Caption = 'Anuluj'
    TabOrder = 3
    OnClick = btn_cancelClick
  end
end