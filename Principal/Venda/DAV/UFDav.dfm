inherited FDav: TFDav
  Caption = 'Documento Auxiliar de Venda'
  ClientHeight = 495
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGrid: TPanel
    Height = 495
    ExplicitHeight = 495
    inherited Grid: TDBGrid
      Top = 311
      Height = 184
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
    inherited gpCliente: TGroupBox
      Top = 53
      Height = 89
      ExplicitTop = 53
      ExplicitHeight = 89
      inherited lblCliente: TLabel
        Width = 62
        ExplicitWidth = 62
      end
      inherited lblNomeCliente: TLabel
        Left = 59
        Width = 324
        ExplicitLeft = 59
        ExplicitWidth = 324
      end
      inherited dtDataVenda: TwwDBDateTimePicker
        Width = 144
        DataField = 'VEN_DATA'
        DataSource = DS
        DisplayFormat = 'dd/mm/yyyy  HH:MM:SS'
        ExplicitWidth = 144
      end
      inherited dbNumVenda: TDBEdit
        DataField = 'VEN_ID'
        DataSource = DS
      end
    end
    inline frameProdutoDav: TframeProduto
      Left = 6
      Top = 159
      Width = 665
      Height = 119
      TabOrder = 4
      ExplicitLeft = 6
      ExplicitTop = 159
      inherited gpProduto: TGroupBox
        Left = 0
        ExplicitLeft = 0
        inherited lblDescProduto: TLabel
          Left = 276
          Width = 375
          ExplicitLeft = 276
          ExplicitWidth = 375
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
  inherited DsItem: TDataSource
    DataSet = DmModelDav.CDSItem
  end
end
