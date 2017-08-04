object FCadastro: TFCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FCadastro'
  ClientHeight = 306
  ClientWidth = 405
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
    Top = 249
    Width = 405
    Height = 57
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = 280
    ExplicitWidth = 563
    DesignSize = (
      405
      57)
    object btnConfirma: TButton
      Left = 121
      Top = 7
      Width = 67
      Height = 41
      Hint = 'Gravar Registro'
      Anchors = [akLeft, akBottom]
      Caption = 'Confimar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      HotImageIndex = 2
      ImageAlignment = iaTop
      ImageIndex = 2
      Images = DmImagens.Img
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnConfirmaClick
    end
    object btnCancela: TButton
      Left = 227
      Top = 7
      Width = 67
      Height = 41
      Hint = 'Cancelar Altera'#231#245'es'
      Anchors = [akLeft, akBottom]
      Caption = 'Cancelar'
      HotImageIndex = 17
      ImageAlignment = iaTop
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
    Top = 0
    Width = 405
    Height = 249
    Align = alClient
    TabOrder = 0
    ExplicitTop = -143
    ExplicitWidth = 563
  end
  object DS: TDataSource
    Left = 328
    Top = 16
  end
end
