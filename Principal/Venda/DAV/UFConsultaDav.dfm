inherited FConsultaDav: TFConsultaDav
  Caption = 'Consulta DAV'
  ClientHeight = 433
  ClientWidth = 671
  OnCreate = FormCreate
  ExplicitWidth = 677
  ExplicitHeight = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGrid: TPanel
    Width = 671
    Height = 433
    inherited Grid: TDBGrid
      Top = 155
      Width = 671
      Height = 231
      Columns = <
        item
          Expanded = False
          Title.Caption = 'N'#186' Venda'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Data'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Total'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Cliente'
          Width = 341
          Visible = True
        end>
    end
    inherited pnlConsulta: TPanel
      Width = 671
      Height = 155
      ExplicitWidth = 618
      ExplicitHeight = 155
      object groupPesquisa: TGroupBox
        Left = 8
        Top = 8
        Width = 649
        Height = 133
        TabOrder = 0
        object lblNumero: TLabel
          Left = 9
          Top = 80
          Width = 44
          Height = 13
          Caption = 'N'#250'mero: '
          Enabled = False
        end
        object lblDataInicial: TLabel
          Left = 179
          Top = 78
          Width = 57
          Height = 13
          Caption = 'Data Inicial:'
        end
        object lblDataFinal: TLabel
          Left = 338
          Top = 78
          Width = 48
          Height = 13
          Caption = 'Data Final'
        end
        object btnPesquisar: TButton
          Left = 534
          Top = 70
          Width = 100
          Height = 48
          Caption = '&Pesquisar'
          HotImageIndex = 11
          ImageIndex = 11
          TabOrder = 0
          OnClick = btnPesquisarClick
        end
        inline FrameDavCliente: TFrameCliente
          Left = -27
          Top = 9
          Width = 508
          Height = 62
          Enabled = False
          TabOrder = 1
          ExplicitLeft = -27
          ExplicitTop = 9
          ExplicitWidth = 508
          ExplicitHeight = 62
          inherited gpCliente: TGroupBox
            Left = 36
            Top = 1
            Width = 468
            ExplicitLeft = 36
            ExplicitTop = 1
            ExplicitWidth = 468
            inherited lblCodCliente: TLabel
              Left = 8
              Top = 19
              ExplicitLeft = 8
              ExplicitTop = 19
            end
            inherited btnPesqCliente: TBitBtn
              Left = 131
              Top = 18
              OnClick = FrameDavClientebtnPesqClienteClick
              ExplicitLeft = 131
              ExplicitTop = 18
            end
            inherited dbCodCliente: TEdit
              Left = 54
              Top = 17
              ExplicitLeft = 54
              ExplicitTop = 17
            end
            inherited dbNomeCliente: TEdit
              Left = 160
              Top = 17
              Width = 302
              Enabled = False
              ExplicitLeft = 160
              ExplicitTop = 17
              ExplicitWidth = 302
            end
          end
        end
        object chkClientes: TCheckBox
          Left = 483
          Top = 29
          Width = 51
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = chkClientesClick
        end
        object edtNumero: TEdit
          Left = 9
          Top = 97
          Width = 104
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 3
        end
        object dtInicial: TwwDBDateTimePicker
          Left = 179
          Top = 97
          Width = 139
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Tahoma'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 4
        end
        object dtFinal: TwwDBDateTimePicker
          Left = 338
          Top = 97
          Width = 139
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Tahoma'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 5
        end
        object chkNumero: TCheckBox
          Left = 119
          Top = 99
          Width = 50
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 6
          OnClick = chkNumeroClick
        end
      end
    end
    inherited pnlRodape: TPanel
      Top = 386
      Width = 671
    end
  end
  inherited DS: TDataSource
    DataSet = DmModelDav.CDS
    Top = 232
  end
end
