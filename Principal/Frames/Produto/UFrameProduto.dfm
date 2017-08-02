object frameProduto: TframeProduto
  Left = 0
  Top = 0
  Width = 665
  Height = 119
  TabOrder = 0
  object gpProduto: TGroupBox
    Left = 2
    Top = 1
    Width = 659
    Height = 113
    TabOrder = 0
    object lblDescProduto: TLabel
      Left = 251
      Top = 17
      Width = 393
      Height = 18
      AutoSize = False
      Caption = '...'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblRefProduto: TLabel
      Left = 8
      Top = 17
      Width = 102
      Height = 18
      AutoSize = False
      Caption = 'Refer'#234'ncia: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblQuantidade: TLabel
      Left = 8
      Top = 54
      Width = 102
      Height = 18
      AutoSize = False
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblUnidade: TLabel
      Left = 126
      Top = 77
      Width = 46
      Height = 18
      AutoSize = False
      Caption = 'UN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescricaoValorUnit: TLabel
      Left = 178
      Top = 54
      Width = 102
      Height = 18
      AutoSize = False
      Caption = 'Valor Unit.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDesconto: TLabel
      Left = 284
      Top = 54
      Width = 102
      Height = 18
      AutoSize = False
      Caption = 'Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDescricaoValorTotal: TLabel
      Left = 433
      Top = 54
      Width = 116
      Height = 18
      AutoSize = False
      Caption = 'Valor Total Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnPesqProduto: TBitBtn
      Left = 204
      Top = 14
      Width = 24
      Height = 21
      Caption = '...'
      TabOrder = 4
    end
    object dbDesconto: TDBEdit
      Left = 284
      Top = 76
      Width = 112
      Height = 21
      TabOrder = 2
      OnExit = dbDescontoExit
    end
    object dbQuantidade: TDBEdit
      Left = 8
      Top = 76
      Width = 112
      Height = 21
      TabOrder = 0
      OnExit = dbQuantidadeExit
    end
    object dbTotalItem: TDBEdit
      Left = 433
      Top = 76
      Width = 112
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object dbVlrVenda: TDBEdit
      Left = 178
      Top = 76
      Width = 89
      Height = 21
      TabOrder = 1
      OnExit = dbVlrVendaExit
    end
    object dbReferencia: TDBEdit
      Left = 83
      Top = 14
      Width = 112
      Height = 21
      TabOrder = 5
      OnExit = dbReferenciaExit
    end
  end
end
