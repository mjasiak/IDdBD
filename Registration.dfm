object Register: TRegister
  Left = 0
  Top = 0
  Caption = 'Rejestracja'
  ClientHeight = 311
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grp_konto: TGroupBox
    Left = 8
    Top = 8
    Width = 329
    Height = 145
    Caption = 'Dane konta'
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 43
      Width = 25
      Height = 13
      Caption = 'Login'
    end
    object Label2: TLabel
      Left = 64
      Top = 83
      Width = 27
      Height = 13
      Caption = 'Has'#322'o'
    end
    object tbox_login: TEdit
      Left = 120
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object tbox_password: TEdit
      Left = 120
      Top = 80
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  object grp_personal: TGroupBox
    Left = 8
    Top = 158
    Width = 329
    Height = 145
    Caption = 'Dane personalne'
    TabOrder = 1
    object Label3: TLabel
      Left = 64
      Top = 52
      Width = 20
      Height = 13
      Caption = 'Imi'#281
    end
    object Label4: TLabel
      Left = 64
      Top = 92
      Width = 44
      Height = 13
      Caption = 'Nazwisko'
    end
    object tbox_name: TEdit
      Left = 120
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object tbox_lastname: TEdit
      Left = 120
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object btn_register: TButton
    Left = 416
    Top = 91
    Width = 89
    Height = 45
    Caption = 'Rejestruj'
    TabOrder = 2
    OnClick = btn_registerClick
  end
  object btn_cancel: TButton
    Left = 422
    Top = 159
    Width = 75
    Height = 25
    Caption = 'Anuluj'
    TabOrder = 3
    OnClick = btn_cancelClick
  end
end
