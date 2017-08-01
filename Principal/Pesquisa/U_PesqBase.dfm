object frm_PesqBase: Tfrm_PesqBase
  Left = 624
  Top = 162
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frm_PesqBase'
  ClientHeight = 415
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 415
    Align = alClient
    BevelOuter = bvNone
    Color = cl3DLight
    TabOrder = 0
    object Grid: TDBGrid
      Left = 0
      Top = 0
      Width = 687
      Height = 343
      Align = alClient
      Color = 16056319
      DataSource = DS
      FixedColor = cl3DLight
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = GridDrawColumnCell
      OnDblClick = GridDblClick
      OnKeyPress = GridKeyPress
    end
    object Panel2: TPanel
      Left = 0
      Top = 343
      Width = 687
      Height = 72
      Align = alBottom
      Color = cl3DLight
      TabOrder = 1
      DesignSize = (
        687
        72)
      object lblBusca: TLabel
        Left = 197
        Top = 42
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edt_pesq: TEdit
        Left = 234
        Top = 41
        Width = 376
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyDown = edt_pesqKeyDown
        OnKeyPress = edt_pesqKeyPress
      end
      object cmbTipoBusca: TComboBox
        Left = 285
        Top = 14
        Width = 192
        Height = 21
        TabOrder = 0
        OnClick = cmbTipoBuscaClick
      end
      object btnPesquisar: TButton
        Left = 8
        Top = 14
        Width = 100
        Height = 48
        Anchors = [akLeft, akBottom]
        Caption = '&Pesquisar'
        HotImageIndex = 11
        ImageIndex = 11
        TabOrder = 2
        OnClick = btnPesquisarClick
      end
    end
  end
  object DS: TDataSource
    Left = 354
    Top = 154
  end
end
