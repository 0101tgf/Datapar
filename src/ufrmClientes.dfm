object frmClientes: TfrmClientes
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manuten'#231#227'o de Clientes'
  ClientHeight = 461
  ClientWidth = 884
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_Botom: TPanel
    Left = 0
    Top = 396
    Width = 884
    Height = 65
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel_Botoes: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 1
      Width = 510
      Height = 64
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 15
        Width = 90
        Height = 34
        Margins.Top = 15
        Margins.Bottom = 15
        Align = alLeft
        BevelOuter = bvNone
        Color = 12477460
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12477460
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object btn_Novo: TSpeedButton
          Left = 0
          Top = 0
          Width = 90
          Height = 34
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Novo'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_NovoClick
          ExplicitTop = -7
        end
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 205
        Top = 15
        Width = 90
        Height = 34
        Margins.Top = 15
        Margins.Bottom = 15
        Align = alLeft
        BevelOuter = bvNone
        Color = 12477460
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12477460
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object btn_Cancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 90
          Height = 34
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_CancelarClick
          ExplicitTop = -9
        end
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 99
        Top = 15
        Width = 100
        Height = 34
        Margins.Top = 15
        Margins.Bottom = 15
        Align = alLeft
        BevelOuter = bvNone
        Color = 12477460
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12477460
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object btn_Salvar: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 34
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Salvar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_SalvarClick
          ExplicitTop = -7
        end
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 301
        Top = 15
        Width = 90
        Height = 34
        Margins.Top = 15
        Margins.Bottom = 15
        Align = alLeft
        BevelOuter = bvNone
        Color = 12477460
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12477460
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object SpeedButton_Pesquisar: TSpeedButton
          Left = 0
          Top = 0
          Width = 90
          Height = 34
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Pesquisar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton_PesquisarClick
          ExplicitTop = -7
        end
      end
      object Panel8: TPanel
        AlignWithMargins = True
        Left = 397
        Top = 15
        Width = 90
        Height = 34
        Margins.Top = 15
        Margins.Bottom = 15
        Align = alLeft
        BevelOuter = bvNone
        Color = 12477460
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12477460
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        object SpeedButton_Excluir: TSpeedButton
          Left = 0
          Top = 0
          Width = 90
          Height = 34
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Excluir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton_ExcluirClick
          ExplicitTop = -7
        end
      end
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 784
      Top = 16
      Width = 90
      Height = 34
      Margins.Left = 5
      Margins.Top = 15
      Margins.Right = 10
      Margins.Bottom = 15
      Align = alRight
      BevelOuter = bvNone
      Color = 12477460
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12477460
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object btn_Fechar: TSpeedButton
        Left = 0
        Top = 0
        Width = 90
        Height = 34
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Fechar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_FecharClick
        ExplicitTop = -9
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 884
      Height = 1
      Align = alTop
      BevelOuter = bvNone
      Color = 15395562
      ParentBackground = False
      TabOrder = 2
    end
  end
  object PageControl_Cad: TPageControl
    Left = 0
    Top = 0
    Width = 884
    Height = 396
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    object TabSheet_Cadastro: TTabSheet
      Caption = 'Cadastro'
      object pnl_Cadastro: TPanel
        Left = 0
        Top = 0
        Width = 876
        Height = 368
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 3
          Top = 56
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label3: TLabel
          Left = 132
          Top = 56
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label4: TLabel
          Left = 328
          Top = 56
          Width = 55
          Height = 13
          Caption = 'CPF / Cnpj:'
        end
        object Panel_Top: TPanel
          Left = 0
          Top = 0
          Width = 876
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lbl_Titulo: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 159
            Height = 34
            Align = alLeft
            Caption = 'Cadastro de Clientes:'
            Color = 12477460
            Font.Charset = ANSI_CHARSET
            Font.Color = 12477460
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 18
          end
          object pnl_barra: TPanel
            Left = 0
            Top = 40
            Width = 876
            Height = 1
            Align = alBottom
            BevelOuter = bvNone
            Color = 15395562
            ParentBackground = False
            TabOrder = 0
          end
        end
        object edt_CodCliente: TEdit
          Left = 3
          Top = 75
          Width = 121
          Height = 21
          TabStop = False
          Color = clBtnFace
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edt_NomeCliente: TEdit
          Left = 132
          Top = 75
          Width = 186
          Height = 21
          MaxLength = 35
          TabOrder = 2
        end
        object Edit_CPFCNPJ: TEdit
          Left = 328
          Top = 75
          Width = 183
          Height = 21
          MaxLength = 18
          TabOrder = 3
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 876
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 199
          Height = 34
          Align = alLeft
          Caption = 'Informe o nome do cliente:'
          Color = 12477460
          Font.Charset = ANSI_CHARSET
          Font.Color = 12477460
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 18
        end
        object btn_ConCliente: TSpeedButton
          AlignWithMargins = True
          Left = 458
          Top = 5
          Width = 50
          Height = 30
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alLeft
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000120B0000120B00000001000048000000BE641400FAF2
            EC00D9A57700EACDB300C77A3500E1B89400F5E6D900D08F5500C0681A00EFDA
            C700C36F2500FFFFFF00D3966000CD874900E4C09F00DCAB7F00EED6C100D7A0
            6F00F7ECE200C5742D00E6C3A500DDAF8500FCF7F300CA824100DBAA7E00C16A
            1D00BF651600E3BD9B00CE8A4D00E7C6A800F1DFCE00F6E9DE00D1925A00C572
            2A00FDFBF900C97E3C00DEB08700F9F0E900C6773100C16C2000EBCFB500D193
            5800F0DCCA00DCAC8100E4BF9E00FFFFFF00C0691C00D8A37300E8C8AC00CF8C
            5000DAA67800BF641600F5E7DA00DEB18900E3BB9700FCF8F500D2945D00C36E
            2200F7E9DF00C3712700BF661800F9EDE500DDAD8300C7783200EBD0B700E5C1
            A100EED7C300C16A1C00F1DFCF00F5E7D900DFB1870000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000B0B0B0B0B0B
            0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
            0B0B0B0B0B0B1F0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B151910
            0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B2B0000191F0B0B0B0B0B0B0B
            0B0B0B0B0B0B0B0B0B0B0B15000000180B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
            0B0B15000000180B0B0B0B0B0B0B0B0B2240022007111D370B2B0000003E0B0B
            0B0B0B0B0B0B0B03260000000000000A380000003E0B0B0B0B0B0B0B0B0B2400
            0031142A1E300C00000000150B0B0B0B0B0B0B0B0B0E0027030B0B0B0B0B0B2A
            13001C0B0B0B0B0B0B0B0B0B25273C420B0B0B0B0B0B0B0B34391A1E0B0B0B0B
            0B0B0B0B1500320B0B0B0B0B0B0B0B0B0B1B000C0B0B0B0B0B0B0B0B2300060B
            0B0B0B0B0B0B0B0B0B372E19220B0B0B0B0B0B0B3C0A0B0B0B0B0B0B0B0B0B0B
            0B0B0D00340B0B0B0B0B0B16003F0B0B0B0B0B0B0B0B0B0B0B0B20001E0B0B0B
            0B0B0B0B2E270B0B0B0B0B0B0B0B0B0B0B0B1700120B0B0B0B0B0B0B0D002A0B
            0B0B0B0B0B0B0B0B0B013C3B0B0B0B0B0B0B0B0B36000C0B0B0B0B0B0B0B0B0B
            0B2B002F0B0B0B0B0B0B0B0B372100410B0B0B0B0B0B0B0B103C08120B0B0B0B
            0B0B0B0B0B103C1A35220B0B0B0B0B0E2E00410B0B0B0B0B0B0B0B0B0B0B0319
            0021021B410F04003C050B0B0B0B0B0B0B0B0B0B0B0B0B06200000000000000D
            090B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B3D1435152C340B0B0B0B0B0B0B0B0B
            0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B}
          OnClick = btn_ConClienteClick
          ExplicitTop = 3
        end
        object Panel9: TPanel
          Left = 0
          Top = 40
          Width = 876
          Height = 1
          Align = alBottom
          BevelOuter = bvNone
          Color = 15395562
          ParentBackground = False
          TabOrder = 0
        end
        object edt_ConsultaCliente: TEdit
          AlignWithMargins = True
          Left = 210
          Top = 8
          Width = 238
          Height = 24
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 5
          Margins.Bottom = 8
          Align = alLeft
          TabOrder = 1
          OnKeyPress = edt_ConsultaClienteKeyPress
          ExplicitHeight = 21
        end
      end
      object dbg_registrosCab: TDBGrid
        Left = 0
        Top = 41
        Width = 876
        Height = 334
        Align = alTop
        BorderStyle = bsNone
        DataSource = ds_Consulta
        DrawingStyle = gdsGradient
        GradientEndColor = 15329769
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbg_registrosCabDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Caption = 'C'#243'digo Cliente'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cpf_Cnpj'
            Title.Caption = 'CPF - CNPJ'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ativo'
            Width = 100
            Visible = True
          end>
      end
    end
  end
  object qry_Consulta: TFDQuery
    SQL.Strings = (
      'select * from TAB_CLIENTES where 1=2')
    Left = 548
    Top = 224
    object qry_ConsultaCodEmp: TIntegerField
      FieldName = 'CodEmp'
      Origin = 'CodEmp'
    end
    object qry_ConsultaCodigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_ConsultaNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 35
    end
    object qry_ConsultaCpf_Cnpj: TStringField
      FieldName = 'Cpf_Cnpj'
      Origin = 'Cpf_Cnpj'
      Required = True
      Size = 18
    end
    object qry_ConsultaAtivo: TStringField
      FieldName = 'Ativo'
      Origin = 'Ativo'
      FixedChar = True
      Size = 1
    end
  end
  object ds_Consulta: TDataSource
    DataSet = qry_Consulta
    Left = 548
    Top = 168
  end
  object qry_Cadastro: TFDQuery
    SQL.Strings = (
      'select * from TAB_CLIENTES where 1=2')
    Left = 420
    Top = 224
    object qry_CadastroCodEmp: TIntegerField
      FieldName = 'CodEmp'
      Origin = 'CodEmp'
    end
    object qry_CadastroCodigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_CadastroNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 35
    end
    object qry_CadastroCpf_Cnpj: TStringField
      FieldName = 'Cpf_Cnpj'
      Origin = 'Cpf_Cnpj'
      Required = True
      Size = 18
    end
    object qry_CadastroAtivo: TStringField
      FieldName = 'Ativo'
      Origin = 'Ativo'
      FixedChar = True
      Size = 1
    end
  end
end
