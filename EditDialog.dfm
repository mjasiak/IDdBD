object EditForm: TEditForm
  Left = 0
  Top = 0
  Caption = 'Edytuj'
  ClientHeight = 359
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grpbox_personal: TGroupBox
    Left = 8
    Top = 8
    Width = 305
    Height = 161
    Caption = 'Dane personalne'
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 40
      Width = 20
      Height = 13
      Caption = 'Imi'#281
    end
    object Label2: TLabel
      Left = 48
      Top = 88
      Width = 44
      Height = 13
      Caption = 'Nazwisko'
    end
    object tbox_name: TEdit
      Left = 128
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object tbox_lastname: TEdit
      Left = 128
      Top = 85
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object grpbox_settings: TGroupBox
    Left = 8
    Top = 175
    Width = 305
    Height = 170
    Caption = 'Ustawienia konta'
    TabOrder = 1
    object Label3: TLabel
      Left = 48
      Top = 48
      Width = 48
      Height = 13
      Caption = 'Pracownik'
    end
    object lbl_reset: TLabel
      Left = 48
      Top = 125
      Width = 57
      Height = 13
      Caption = 'Reset has'#322'a'
    end
    object Label4: TLabel
      Left = 48
      Top = 96
      Width = 52
      Height = 13
      Caption = 'Usu'#324' kart'#281
    end
    object cbox_isworker: TCheckBox
      Left = 176
      Top = 47
      Width = 97
      Height = 17
      TabOrder = 0
    end
    object btn_resetpass: TButton
      Left = 144
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Resetuj'
      TabOrder = 1
    end
    object btn_deletecard: TButton
      Left = 144
      Top = 89
      Width = 75
      Height = 25
      Caption = 'Usu'#324
      TabOrder = 2
    end
  end
  object btn_save: TButton
    Left = 338
    Top = 35
    Width = 97
    Height = 41
    Caption = 'Zapisz'
    TabOrder = 2
    OnClick = btn_saveClick
  end
  object btn_cancel: TButton
    Left = 352
    Top = 82
    Width = 65
    Height = 25
    Caption = 'Wr'#243#263
    TabOrder = 3
    OnClick = btn_cancelClick
  end
end
