object FConsulta: TFConsulta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 311
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 539
    Height = 311
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Grid: TDBGrid
      Left = 0
      Top = 97
      Width = 539
      Height = 167
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = btnAlterarClick
    end
    object pnlConsulta: TPanel
      Left = 0
      Top = 0
      Width = 539
      Height = 97
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
    end
    object pnlRodape: TPanel
      Left = 0
      Top = 264
      Width = 539
      Height = 47
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        539
        47)
      object BtnNovo: TButton
        Left = 3
        Top = 4
        Width = 72
        Height = 39
        Anchors = [akLeft, akBottom]
        Caption = '&Novo'
        DisabledImageIndex = 4
        HotImageIndex = 75
        ImageAlignment = iaTop
        ImageIndex = 75
        Images = DmImagens.Img
        TabOrder = 0
      end
      object btnSair: TButton
        Left = 241
        Top = 4
        Width = 77
        Height = 39
        Anchors = [akLeft, akBottom]
        Caption = '&Sair'
        HotImageIndex = 17
        ImageAlignment = iaTop
        ImageIndex = 17
        Images = DmImagens.Img
        TabOrder = 1
        OnClick = btnSairClick
      end
      object btnAlterar: TButton
        Left = 79
        Top = 4
        Width = 78
        Height = 39
        Anchors = [akLeft, akBottom]
        Caption = '&Alterar'
        HotImageIndex = 92
        ImageAlignment = iaTop
        ImageIndex = 92
        Images = DmImagens.Img
        TabOrder = 2
        OnClick = btnAlterarClick
      end
      object btnExcluir: TButton
        Left = 161
        Top = 4
        Width = 78
        Height = 39
        Anchors = [akLeft, akBottom]
        Caption = '&Excluir'
        HotImageIndex = 84
        ImageAlignment = iaTop
        ImageIndex = 84
        Images = DmImagens.Img
        TabOrder = 3
      end
    end
  end
  object DS: TDataSource
    Left = 240
    Top = 160
  end
end
