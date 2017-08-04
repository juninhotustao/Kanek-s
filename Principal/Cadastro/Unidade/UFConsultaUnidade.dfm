inherited FConsultaUnidade: TFConsultaUnidade
  Caption = 'Consulta Unidades'
  ClientHeight = 376
  ClientWidth = 563
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  ExplicitWidth = 569
  ExplicitHeight = 404
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGrid: TPanel
    Width = 563
    Height = 376
    inherited Grid: TDBGrid
      Width = 563
      Height = 232
      DataSource = DS
      Columns = <
        item
          Expanded = False
          FieldName = 'UN_ID'
          Title.Caption = 'ID'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UN_CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UN_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 368
          Visible = True
        end>
    end
    inherited pnlConsulta: TPanel
      Width = 563
      object groupPesquisa: TGroupBox
        Left = 0
        Top = 0
        Width = 563
        Height = 97
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 728
        object lblPesquisar: TLabel
          Left = 154
          Top = 43
          Width = 53
          Height = 13
          Caption = 'Pesquisar: '
        end
        object lblTipoPesquisa: TLabel
          Left = 7
          Top = 22
          Width = 90
          Height = 13
          Caption = 'Tipo de Pesquisa : '
        end
        object btnPesquisar: TButton
          Left = 454
          Top = 22
          Width = 100
          Height = 48
          Caption = '&Pesquisar'
          HotImageIndex = 11
          ImageIndex = 11
          TabOrder = 1
          OnClick = btnPesquisarClick
        end
        object edtPesquisa: TEdit
          Left = 209
          Top = 40
          Width = 236
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyPress = edtPesquisaKeyPress
        end
        object Cmb_TipoPesquisa: TComboBox
          Left = 7
          Top = 40
          Width = 142
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = 'C'#243'digo'
          Items.Strings = (
            'C'#243'digo'
            'Descri'#231#227'o')
        end
      end
    end
    inherited pnlRodape: TPanel
      Top = 329
      Width = 563
      inherited BtnNovo: TButton
        OnClick = BtnNovoClick
      end
      inherited btnAlterar: TButton
        OnClick = btnAlterarClick
      end
      inherited btnExcluir: TButton
        OnClick = btnExcluirClick
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DmModelUnidade.CDS
  end
end
