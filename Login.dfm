object LoginForm: TLoginForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Logowanie'
  ClientHeight = 180
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 35
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Has'#322'o'
  end
  object lbl_register: TLabel
    Left = 112
    Top = 143
    Width = 53
    Height = 13
    Caption = 'Zarejestruj'
    Color = clBtnFace
    ParentColor = False
    OnMouseEnter = lbl_registerMouseEnter
    OnMouseLeave = lbl_registerMouseLeave
  end
  object Edit1: TEdit
    Left = 88
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn_login: TButton
    Left = 96
    Top = 112
    Width = 89
    Height = 25
    Caption = 'Zaloguj'
    TabOrder = 2
    OnClick = btn_loginClick
  end
end
