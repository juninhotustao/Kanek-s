inherited FDav: TFDav
  Caption = 'Documento Auxiliar de Venda'
  ClientHeight = 552
  ClientWidth = 688
  ExplicitWidth = 694
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGrid: TPanel
    Width = 688
    Height = 552
    ExplicitHeight = 525
    object lblMenuItem: TLabel [0]
      Left = 273
      Top = 206
      Width = 406
      Height = 13
      Caption = 
        'F1 - Novo Item       F2 - Alterar Item       F3 - Excluir Item  ' +
        '     F4 - Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited lblDescricaoTotalVenda: TLabel
      Left = 448
      Top = 345
      ExplicitLeft = 448
      ExplicitTop = 345
    end
    inherited lblTotalVenda: TLabel
      Left = 570
      Top = 345
      ExplicitLeft = 570
      ExplicitTop = 345
    end
    inherited Grid: TDBGrid
      Top = 368
      Width = 688
      Height = 184
      DataSource = DsItem
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Columns = <
        item
          Expanded = False
          FieldName = 'ITV_REFER'
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITV_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 242
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITV_UN'
          Title.Caption = 'UN'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITV_QTDE'
          Title.Caption = 'Qtde.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITV_DESCONTO'
          Title.Caption = 'Desconto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITV_PRECOVENDA'
          Title.Caption = 'Pre'#231'o Item'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITV_VALORTOTAL'
          Title.Caption = 'Total Item'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end>
    end
    inherited pnlConsulta: TPanel
      Width = 688
      TabOrder = 3
    end
    inherited pnlRodape: TPanel
      Width = 688
      TabOrder = 0
      inherited btnAlterar: TButton
        OnClick = btnAlterarClick
      end
      inherited btnExcluir: TButton
        OnClick = btnExcluirClick
      end
      inherited btnSalvar: TButton
        OnClick = btnSalvarClick
      end
    end
    inherited gpCliente: TGroupBox
      Left = 20
      Height = 117
      Enabled = False
      TabOrder = 1
      ExplicitLeft = 20
      ExplicitHeight = 117
      inherited lblCliente: TLabel
        Left = 22
        Width = 47
        ExplicitLeft = 22
        ExplicitWidth = 47
      end
      inherited lblNomeCliente: TLabel
        Left = 139
        Width = 465
        Caption = ''
        ExplicitLeft = 139
        ExplicitWidth = 465
      end
      inherited lblData: TLabel
        Left = 196
        Top = 59
        Width = 36
        Caption = 'Data: '
        ExplicitLeft = 196
        ExplicitTop = 59
        ExplicitWidth = 36
      end
      inherited lblNumVenda: TLabel
        Left = 8
        Top = 59
        Width = 61
        Caption = 'N'#186' Venda: '
        ExplicitLeft = 8
        ExplicitTop = 59
        ExplicitWidth = 61
      end
      inherited dtDataVenda: TwwDBDateTimePicker
        Left = 232
        Width = 144
        DataField = 'VEN_DATA'
        DataSource = DS
        Date = 42949.000000000000000000
        Time = 0.423706793983001300
        TabOrder = 1
        DisplayFormat = 'dd/mm/yyyy  HH:MM:SS'
        ExplicitLeft = 232
        ExplicitWidth = 144
      end
      inherited dbNumVenda: TDBEdit
        Left = 71
        DataField = 'VEN_ID'
        DataSource = DS
        Enabled = False
        TabOrder = 2
        ExplicitLeft = 71
      end
      inherited dbIdCliente: TDBEdit
        Left = 71
        Enabled = True
        TabOrder = 0
        ExplicitLeft = 71
      end
      inherited dbObservacao: TDBMemo
        Left = 390
        Top = 35
        Width = 261
        Height = 74
        BevelInner = bvNone
        BevelOuter = bvNone
        DataField = 'VEN_OBSERVACAO'
        DataSource = DS
        OnExit = dbObservacaoExit
        ExplicitLeft = 390
        ExplicitTop = 35
        ExplicitWidth = 261
        ExplicitHeight = 74
      end
    end
    inline frameProdutoDav: TframeProduto
      Left = 20
      Top = 222
      Width = 665
      Height = 117
      Enabled = False
      TabOrder = 2
      ExplicitLeft = 20
      ExplicitTop = 222
      ExplicitHeight = 117
      inherited gpProduto: TGroupBox
        Left = 0
        Top = 2
        ExplicitLeft = 0
        ExplicitTop = 2
        inherited lblDescProduto: TLabel
          Left = 253
          Width = 386
          ExplicitLeft = 253
          ExplicitWidth = 386
        end
        inherited lblRefProduto: TLabel
          Left = 11
          Top = 18
          Width = 71
          ExplicitLeft = 11
          ExplicitTop = 18
          ExplicitWidth = 71
        end
        inherited lblDescricaoValorUnit: TLabel
          Left = 208
          ExplicitLeft = 208
        end
        inherited lblDesconto: TLabel
          Left = 355
          ExplicitLeft = 355
        end
        inherited lblDescricaoValorTotal: TLabel
          Left = 510
          ExplicitLeft = 510
        end
        inherited dbDesconto: TDBEdit
          Left = 355
          Width = 94
          DataField = 'ITV_DESCONTO'
          DataSource = DsItem
          OnExit = frameProdutoDavdbDescontoExit
          ExplicitLeft = 355
          ExplicitWidth = 94
        end
        inherited dbQuantidade: TDBEdit
          Width = 94
          DataField = 'ITV_QTDE'
          DataSource = DsItem
          ExplicitWidth = 94
        end
        inherited dbTotalItem: TDBEdit
          Left = 510
          Width = 94
          DataField = 'ITV_VALORTOTAL'
          DataSource = DsItem
          ExplicitLeft = 510
          ExplicitWidth = 94
        end
        inherited dbVlrVenda: TDBEdit
          Left = 208
          Width = 94
          DataField = 'ITV_PRECOVENDA'
          DataSource = DsItem
          ExplicitLeft = 208
          ExplicitWidth = 94
        end
        inherited dbReferencia: TDBEdit
          Top = 16
          DataField = 'ITV_REFER'
          DataSource = DsItem
          ExplicitTop = 16
        end
      end
    end
    object btnNovoItem: TButton
      Left = 306
      Top = 179
      Width = 24
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 75
      Images = DmImagens.Img
      TabOrder = 5
      OnClick = btnNovoItemClick
    end
    object btnAlterarItem: TButton
      Left = 410
      Top = 179
      Width = 24
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 91
      Images = DmImagens.Img
      TabOrder = 6
      OnClick = btnAlterarItemClick
    end
    object btnExcluirItem: TButton
      Left = 529
      Top = 179
      Width = 24
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 83
      Images = DmImagens.Img
      TabOrder = 7
      OnClick = btnExcluirItemClick
    end
    object btnCancelarItem: TButton
      Left = 637
      Top = 179
      Width = 24
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 17
      Images = DmImagens.Img
      TabOrder = 8
      OnClick = btnCancelarItemClick
    end
  end
  inherited DS: TDataSource
    Top = 374
  end
  inherited DsItem: TDataSource
    DataSet = DmModelDav.CDSItem
    Top = 374
  end
  inherited PopMenu: TPopupMenu
    Left = 504
    Top = 376
    object Novo: TMenuItem
      Caption = 'Novo Item'
      ShortCut = 112
      OnClick = NovoClick
    end
    object Alterar: TMenuItem
      Caption = 'Alterar Item'
      ShortCut = 113
    end
    object Excluir: TMenuItem
      Caption = 'Excluir Item'
      ShortCut = 114
    end
    object Cancelar: TMenuItem
      Caption = 'Cancelar Item'
      ShortCut = 115
    end
  end
end
