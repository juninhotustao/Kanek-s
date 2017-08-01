inherited FCadastroProduto: TFCadastroProduto
  Caption = 'Cadastro de Produto'
  ClientHeight = 245
  ClientWidth = 466
  OnShow = FormShow
  ExplicitWidth = 472
  ExplicitHeight = 273
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodape: TPanel
    Top = 212
    Width = 466
    Height = 33
    Align = alBottom
    ExplicitTop = 212
    ExplicitWidth = 466
    ExplicitHeight = 33
    DesignSize = (
      466
      33)
    inherited btnConfirma: TButton
      Left = 7
      Top = 1
      ExplicitLeft = 7
      ExplicitTop = 1
    end
    inherited btnCancela: TButton
      Left = 104
      Top = 1
      ExplicitLeft = 104
      ExplicitTop = 1
    end
  end
  inherited pnlPrincipal: TPanel
    Top = 0
    Width = 466
    Height = 212
    ExplicitTop = 0
    ExplicitWidth = 466
    ExplicitHeight = 212
    object Label3: TLabel
      Left = 10
      Top = 81
      Width = 65
      Height = 13
      Caption = 'Descri'#231#227'o: '
    end
    object lblReferencia: TLabel
      Left = 7
      Top = 48
      Width = 66
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object lblData: TLabel
      Left = 36
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Data:'
    end
    object lblCusto: TLabel
      Left = 31
      Top = 121
      Width = 42
      Height = 13
      Caption = 'Custo: '
    end
    object lblMedio: TLabel
      Left = 14
      Top = 158
      Width = 58
      Height = 13
      Caption = 'Pr. M'#233'dio:'
    end
    object lblVenda: TLabel
      Left = 233
      Top = 159
      Width = 61
      Height = 13
      Caption = 'Pr. Venda:'
    end
    object lblCustoReal: TLabel
      Left = 223
      Top = 122
      Width = 71
      Height = 13
      Caption = 'Custo Real: '
    end
    object lblEstoque: TLabel
      Left = 240
      Top = 16
      Width = 54
      Height = 13
      Caption = 'Estoque: '
    end
    object lblEan: TLabel
      Left = 266
      Top = 48
      Width = 28
      Height = 13
      Caption = 'EAN:'
    end
    object edtVenda: TDBEdit
      Left = 298
      Top = 155
      Width = 82
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PRO_PRECO_VENDA'
      DataSource = DS
      TabOrder = 7
    end
    object edtCustoReal: TDBEdit
      Left = 298
      Top = 118
      Width = 82
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PRO_PRECO_CUSTO_REAL'
      DataSource = DS
      TabOrder = 5
    end
    object edtEstoque: TDBEdit
      Left = 298
      Top = 13
      Width = 92
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PRO_ESTOQUE'
      DataSource = DS
      Enabled = False
      TabOrder = 8
    end
    object edtCusto: TDBEdit
      Left = 74
      Top = 118
      Width = 82
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PRO_PRECO_CUSTO'
      DataSource = DS
      TabOrder = 4
    end
    object edtMedio: TDBEdit
      Left = 74
      Top = 155
      Width = 82
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PRO_PRECO_MEDIO_COMPRA'
      DataSource = DS
      TabOrder = 6
    end
    object edtDescricao: TDBEdit
      Left = 74
      Top = 78
      Width = 371
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'PRO_DESCRICAO'
      DataSource = DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object edtReferencia: TDBEdit
      Left = 74
      Top = 45
      Width = 147
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PRO_REFERENCIA'
      DataSource = DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnExit = edtReferenciaExit
    end
    object edtEan: TDBEdit
      Left = 298
      Top = 45
      Width = 147
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PRO_EAN'
      DataSource = DS
      TabOrder = 2
      OnExit = edtReferenciaExit
    end
    object data_lancto: TwwDBDateTimePicker
      Left = 74
      Top = 13
      Width = 107
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      DataField = 'PRO_DATA_CADASTRO'
      DataSource = DS
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  inherited DS: TDataSource
    DataSet = DmModelProduto.CDS
    Left = 408
    Top = 112
  end
end
