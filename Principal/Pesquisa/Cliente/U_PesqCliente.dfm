inherited frm_PesqCliente: Tfrm_PesqCliente
  Caption = 'Pesquisa de Clientes'
  ClientWidth = 681
  ExplicitWidth = 687
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 681
    ExplicitWidth = 593
    ExplicitHeight = 406
    inherited Grid: TDBGrid
      Width = 681
      Columns = <
        item
          Expanded = False
          Title.Caption = 'ID'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Nome'
          Width = 297
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'CPF/CNPJ'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end>
    end
    inherited pnlBusca: TPanel
      Width = 681
      ExplicitWidth = 593
    end
  end
end
