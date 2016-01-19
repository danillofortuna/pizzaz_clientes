object frmMasterDetalhe: TfrmMasterDetalhe
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 293
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 479
    Height = 35
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -340
    ExplicitWidth = 797
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 97
      Height = 25
      Align = alClient
      Alignment = taCenter
      Caption = 'Inserir ...'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object grdDetalhe: TDBGrid
    Left = 0
    Top = 162
    Width = 479
    Height = 131
    Align = alBottom
    DataSource = dsDetalhe
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 130
    Width = 479
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 106
    object btnExcluir: TButton
      Left = 404
      Top = 0
      Width = 75
      Height = 32
      Action = actExcluir
      Align = alRight
      Caption = 'Excluir [F7]'
      TabOrder = 0
      OnClick = btnExcluirClick
      ExplicitLeft = 392
      ExplicitTop = 1
      ExplicitHeight = 25
    end
    object btnCancelar: TButton
      Left = 329
      Top = 0
      Width = 75
      Height = 32
      Action = actCancelar
      Align = alRight
      Caption = 'Cancelar [F6]'
      Enabled = False
      TabOrder = 1
      OnClick = btnCancelarClick
      ExplicitLeft = 335
      ExplicitTop = -6
    end
    object btnNovo: TButton
      Left = 167
      Top = 0
      Width = 81
      Height = 32
      Action = actNovo
      Align = alRight
      Caption = 'Novo [F4]'
      TabOrder = 2
      ExplicitLeft = 160
      ExplicitTop = -6
    end
    object btnGravar: TButton
      Left = 248
      Top = 0
      Width = 81
      Height = 32
      Action = actGravar
      Align = alRight
      Caption = 'Gravar [F5]'
      Enabled = False
      TabOrder = 3
      OnClick = btnGravarClick
      ExplicitLeft = 242
      ExplicitTop = -6
    end
  end
  object qryDetalhe: TFDQuery
    AfterEdit = qryDetalheAfterEdit
    Left = 248
    Top = 208
  end
  object dsDetalhe: TDataSource
    DataSet = qryDetalhe
    Left = 352
    Top = 208
  end
  object ActBase: TActionList
    Left = 171
    Top = 193
    object actNovo: TAction
      Caption = 'actNovo'
      OnExecute = actNovoExecute
    end
    object actCancelar: TAction
      Caption = 'actCancelar'
    end
    object actGravar: TAction
      Caption = 'actGravar'
    end
    object actExcluir: TAction
      Caption = 'actExcluir'
    end
    object actEdit: TAction
      Caption = 'actEdit'
      OnExecute = actEditExecute
    end
  end
end
