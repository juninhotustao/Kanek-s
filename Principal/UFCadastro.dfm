object FCadastro: TFCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FCadastro'
  ClientHeight = 306
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRodape: TPanel
    Left = 0
    Top = 0
    Width = 563
    Height = 43
    Align = alTop
    TabOrder = 1
    DesignSize = (
      563
      43)
    object btnConfirma: TButton
      Left = 5
      Top = 8
      Width = 47
      Height = 27
      Hint = 'Gravar Registro'
      Anchors = [akLeft, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      HotImageIndex = 2
      ImageAlignment = iaCenter
      ImageIndex = 2
      Images = DmImagens.Img
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnConfirmaClick
    end
    object btnCancela: TButton
      Left = 61
      Top = 8
      Width = 47
      Height = 27
      Hint = 'Cancelar Altera'#231#245'es'
      Anchors = [akLeft, akBottom]
      HotImageIndex = 17
      ImageAlignment = iaCenter
      ImageIndex = 17
      Images = DmImagens.Img
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnCancelaClick
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 563
    Height = 263
    Align = alClient
    TabOrder = 0
    ExplicitTop = 35
    ExplicitHeight = 271
  end
  object DS: TDataSource
    Left = 328
    Top = 16
  end
end
