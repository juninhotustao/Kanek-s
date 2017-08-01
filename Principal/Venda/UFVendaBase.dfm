inherited FVendaBase: TFVendaBase
  Caption = 'FVendaBase'
  ClientHeight = 486
  ClientWidth = 676
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  ExplicitWidth = 682
  ExplicitHeight = 514
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGrid: TPanel
    Width = 676
    Height = 486
    ExplicitWidth = 676
    ExplicitHeight = 486
    inherited Grid: TDBGrid
      Top = 326
      Width = 676
      Height = 160
      Align = alBottom
    end
    inherited pnlConsulta: TPanel
      Top = 47
      Width = 676
      Height = 10
      ExplicitTop = 47
      ExplicitWidth = 676
      ExplicitHeight = 10
    end
    inherited pnlRodape: TPanel
      Top = 0
      Width = 676
      Align = alTop
      ExplicitTop = 0
      ExplicitWidth = 676
      DesignSize = (
        676
        47)
      inherited BtnNovo: TButton
        OnClick = BtnNovoClick
      end
    end
    object gpCliente: TGroupBox
      Left = 6
      Top = 51
      Width = 659
      Height = 88
      TabOrder = 3
      object lblCliente: TLabel
        Left = 8
        Top = 11
        Width = 56
        Height = 18
        AutoSize = False
        Caption = 'Cliente: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblNomeCliente: TLabel
        Left = 71
        Top = 11
        Width = 575
        Height = 18
        AutoSize = False
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblData: TLabel
        Left = 8
        Top = 40
        Width = 102
        Height = 18
        AutoSize = False
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblNumVenda: TLabel
        Left = 178
        Top = 40
        Width = 97
        Height = 18
        AutoSize = False
        Caption = 'N'#186' Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblDescricaoTotalVenda: TLabel
        Left = 420
        Top = 57
        Width = 116
        Height = 18
        AutoSize = False
        Caption = 'Total da Venda: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotalVenda: TLabel
        Left = 549
        Top = 56
        Width = 180
        Height = 18
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dtDataVenda: TwwDBDateTimePicker
        Left = 8
        Top = 58
        Width = 121
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'Tahoma'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 0
      end
      object dbNumVenda: TDBEdit
        Left = 178
        Top = 58
        Width = 97
        Height = 21
        TabOrder = 1
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DmModelDav.CDS
    Left = 440
    Top = 344
  end
  object DsItem: TDataSource
    Left = 376
    Top = 344
  end
end
