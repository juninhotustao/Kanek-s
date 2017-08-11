inherited FCadastroUnidade: TFCadastroUnidade
  Caption = 'Cadastro Unidade'
  ClientHeight = 181
  ExplicitWidth = 411
  ExplicitHeight = 209
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodape: TPanel
    Top = 124
    inherited btnConfirma: TButton
      Top = 8
      ExplicitTop = 8
    end
    inherited btnCancela: TButton
      Top = 8
      ExplicitTop = 8
    end
  end
  inherited pnlPrincipal: TPanel
    Height = 124
    ExplicitTop = 0
    ExplicitWidth = 405
    object lblCodigo: TLabel
      Left = 23
      Top = 34
      Width = 45
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object lblDescricao: TLabel
      Left = 7
      Top = 74
      Width = 61
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object dbCodigo: TDBEdit
      Left = 74
      Top = 31
      Width = 87
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'UN_CODIGO'
      DataSource = DS
      TabOrder = 0
    end
    object dbDescricao: TDBEdit
      Left = 74
      Top = 71
      Width = 317
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'UN_DESCRICAO'
      DataSource = DS
      TabOrder = 1
    end
  end
  inherited DS: TDataSource
    DataSet = DmModelUnidade.CDS
    Left = 344
    Top = 8
  end
end
