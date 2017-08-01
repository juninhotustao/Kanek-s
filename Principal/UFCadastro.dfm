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
    Height = 35
    Align = alTop
    TabOrder = 1
    DesignSize = (
      563
      35)
    object btnConfirma: TButton
      Left = 3
      Top = 2
      Width = 86
      Height = 30
      Hint = 'Gravar Registro'
      Anchors = [akLeft, akBottom]
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      HotImageIndex = 2
      ImageIndex = 2
      Images = DmImagens.Img
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnConfirmaClick
    end
    object btnCancela: TButton
      Left = 103
      Top = 2
      Width = 86
      Height = 30
      Hint = 'Cancelar Altera'#231#245'es'
      Anchors = [akLeft, akBottom]
      Caption = 'Cancelar'
      HotImageIndex = 17
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
    Top = 35
    Width = 563
    Height = 271
    Align = alClient
    TabOrder = 0
  end
  object DS: TDataSource
    Left = 328
    Top = 16
  end
end
