object DeleteForm: TDeleteForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Usu'#324
  ClientHeight = 114
  ClientWidth = 388
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
  object lbl_delete: TLabel
    Left = 32
    Top = 24
    Width = 46
    Height = 13
    Caption = 'lbl_delete'
  end
  object btn_yes: TButton
    Left = 112
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Tak'
    TabOrder = 0
    OnClick = btn_yesClick
  end
  object btn_no: TButton
    Left = 208
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Nie'
    TabOrder = 1
    OnClick = btn_noClick
  end
end
