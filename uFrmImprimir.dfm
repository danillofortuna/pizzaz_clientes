object frmImprimir: TfrmImprimir
  Left = 0
  Top = 0
  BorderStyle = bsNone
  BorderWidth = 2
  Caption = 'frmImprimir'
  ClientHeight = 245
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 212
    Width = 461
    Height = 33
    Align = alBottom
    TabOrder = 0
    object lbl1: TLabel
      Left = 24
      Top = 6
      Width = 79
      Height = 13
      Caption = '[ESC] - Cancelar'
    end
    object lbl2: TLabel
      Left = 328
      Top = 6
      Width = 119
      Height = 13
      Caption = '[Ctrl + ENTER] - Imprimir'
    end
  end
  object Livre: TMemo
    Left = 0
    Top = 0
    Width = 461
    Height = 212
    TabOrder = 1
    OnKeyPress = LivreKeyPress
  end
  object actlst1: TActionList
    Left = 256
    Top = 136
    object actImp: TAction
      Caption = 'actImp'
      ShortCut = 16397
      OnExecute = actImpExecute
    end
    object actCancel: TAction
      Caption = 'actCancel'
      ShortCut = 27
      OnExecute = actCancelExecute
    end
  end
end
