inherited frm_PesqProduto: Tfrm_PesqProduto
  Left = 484
  Top = 40
  Caption = 'Consulta de Produto'
  ClientHeight = 315
  ClientWidth = 579
  OnKeyDown = FormKeyDown
  ExplicitWidth = 585
  ExplicitHeight = 343
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel4: TPanel
    Width = 579
    Height = 315
    ExplicitWidth = 579
    ExplicitHeight = 315
    inherited Grid: TDBGrid
      Width = 579
      Height = 240
      Columns = <
        item
          Expanded = False
          FieldName = 'PRO_REFERENCIA'
          Title.Caption = 'Refer'#234'ncia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 312
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_ESTOQUE'
          Title.Caption = 'Estoque'
          Width = 82
          Visible = True
        end>
    end
    inherited Panel2: TPanel
      Top = 240
      Width = 579
      Height = 75
      ExplicitTop = 240
      ExplicitWidth = 579
      ExplicitHeight = 75
      inherited lblBusca: TLabel
        Left = 138
        Width = 50
        Caption = 'Descricao:'
        ExplicitLeft = 138
        ExplicitWidth = 50
      end
      inherited edt_pesq: TEdit
        Left = 194
        Width = 327
        ExplicitLeft = 194
        ExplicitWidth = 327
      end
      inherited cmbTipoBusca: TComboBox
        Left = 261
        Width = 104
        Style = csDropDownList
        ItemIndex = 0
        Text = 'Descricao'
        Items.Strings = (
          'Descricao'
          'Refer'#234'ncia')
        ExplicitLeft = 261
        ExplicitWidth = 104
      end
      inherited btnPesquisar: TButton
        Left = 19
        ExplicitLeft = 19
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DmModelPesqProduto.CDS
    Left = 314
    Top = 146
  end
end
