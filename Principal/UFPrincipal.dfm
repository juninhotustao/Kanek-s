object UFrmPrincipal: TUFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Kanek'#39's'
  ClientHeight = 370
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 590
    Height = 370
    Align = alClient
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 240
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes: TMenuItem
        Caption = 'Clientes'
        OnClick = ClientesClick
      end
      object Produtos: TMenuItem
        Caption = 'Produtos'
        OnClick = ProdutosClick
      end
      object Fornecedores: TMenuItem
        Caption = 'Fornecedores'
        OnClick = FornecedoresClick
      end
      object Unidades: TMenuItem
        Caption = 'Unidade'
        OnClick = UnidadesClick
      end
    end
    object Movimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object Venda: TMenuItem
        Caption = 'Venda'
        OnClick = VendaClick
      end
    end
  end
end
