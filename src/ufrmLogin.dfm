object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmLogin'
  ClientHeight = 385
  ClientWidth = 375
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_principal: TPanel
    Left = 0
    Top = 0
    Width = 375
    Height = 385
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnl_usuario: TPanel
      Left = 8
      Top = 96
      Width = 358
      Height = 67
      BevelOuter = bvNone
      TabOrder = 0
      object edt_User: TEdit
        Left = 0
        Top = 0
        Width = 358
        Height = 67
        TabStop = False
        Align = alClient
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvSpace
        BevelWidth = 20
        BorderStyle = bsNone
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'Thiago'
      end
    end
    object pnl_senha: TPanel
      Left = 8
      Top = 184
      Width = 358
      Height = 65
      BevelOuter = bvNone
      TabOrder = 1
      object edt_senha: TEdit
        Left = 0
        Top = 0
        Width = 358
        Height = 65
        TabStop = False
        Align = alClient
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvSpace
        BevelWidth = 20
        BorderStyle = bsNone
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 0
        Text = 'Thiago'
      end
    end
    object pnl_entrar: TPanel
      Left = 8
      Top = 312
      Width = 179
      Height = 53
      BevelOuter = bvNone
      Color = 12477460
      ParentBackground = False
      TabOrder = 2
      object btn_entrar: TSpeedButton
        Left = 0
        Top = 0
        Width = 179
        Height = 53
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Entrar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15790320
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_entrarClick
        ExplicitLeft = -6
      end
    end
    object pnl_cancelar: TPanel
      Left = 187
      Top = 312
      Width = 179
      Height = 53
      BevelOuter = bvNone
      Color = 16119285
      ParentBackground = False
      TabOrder = 3
      object btn_cancelar: TSpeedButton
        Left = 0
        Top = 0
        Width = 179
        Height = 53
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Cancelar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_cancelarClick
        ExplicitLeft = 6
      end
    end
    object Panel_Login: TPanel
      Left = 0
      Top = 0
      Width = 375
      Height = 53
      Align = alTop
      BevelOuter = bvNone
      Caption = 'LOGIN'
      Color = 12477460
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
  end
end
