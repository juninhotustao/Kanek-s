inherited FDav: TFDav
  Caption = 'Documento Auxiliar de Venda'
  ClientHeight = 495
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGrid: TPanel
    Height = 495
    ExplicitHeight = 495
    object lblMenuItem: TLabel [0]
      Left = 9
      Top = 176
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
    inherited Grid: TDBGrid
      Top = 311
      Height = 184
      DataSource = DsItem
      Font.Style = [fsBold]
      ParentFont = False
      Columns = <
        item
          Expanded = False
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
    inherited pnlRodape: TPanel
      inherited btnSalvar: TButton
        OnClick = btnSalvarClick
      end
    end
    inherited gpCliente: TGroupBox
      Top = 53
      Height = 89
      Enabled = False
      ExplicitTop = 53
      ExplicitHeight = 89
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
      inherited lblDescricaoTotalVenda: TLabel
        Left = 433
        ExplicitLeft = 433
      end
      inherited lblTotalVenda: TLabel
        Left = 562
        ExplicitLeft = 562
      end
      inherited dtDataVenda: TwwDBDateTimePicker
        Left = 232
        Width = 144
        DataField = 'VEN_DATA'
        DataSource = DS
        TabOrder = 1
        DisplayFormat = 'dd/mm/yyyy  HH:MM:SS'
        OnExit = dtDataVendaExit
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
    end
    inline frameProdutoDav: TframeProduto
      Left = 6
      Top = 192
      Width = 665
      Height = 117
      Enabled = False
      TabOrder = 4
      ExplicitLeft = 6
      ExplicitTop = 192
      ExplicitHeight = 117
      inherited gpProduto: TGroupBox
        Left = 0
        ExplicitLeft = 0
        inherited lblDescProduto: TLabel
          Left = 253
          Width = 386
          ExplicitLeft = 253
          ExplicitWidth = 386
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
        inherited edtReferencia: TEdit
          OnExit = frameProdutoDavedtReferenciaExit
        end
        inherited dbDesconto: TDBEdit
          Left = 355
          Width = 94
          DataField = 'ITV_DESCONTO'
          DataSource = DsItem
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
      end
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
