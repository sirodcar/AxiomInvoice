inherited frmConfigure: TfrmConfigure
  Caption = 'Configure'
  ClientHeight = 534
  ClientWidth = 555
  OnShow = FormShow
  ExplicitWidth = 571
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxly: TdxLayoutControl
    Width = 555
    Height = 534
    ExplicitWidth = 555
    ExplicitHeight = 534
    inherited btnOK: TcxButton
      Left = 389
      Top = 499
      ExplicitLeft = 389
      ExplicitTop = 499
    end
    inherited btnCancel: TcxButton
      Left = 470
      Top = 499
      ExplicitLeft = 470
      ExplicitTop = 499
    end
    object cxDBTextEdit1: TcxDBTextEdit [2]
      Left = 76
      Top = 39
      DataBinding.DataField = 'TOKO'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 2
      Width = 457
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 76
      Top = 66
      DataBinding.DataField = 'ADDRESS1'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 3
      Width = 457
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 76
      Top = 93
      DataBinding.DataField = 'ADDRESS2'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 4
      Width = 457
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 76
      Top = 120
      DataBinding.DataField = 'ADDRESS3'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 5
      Width = 457
    end
    object cxDBTextEdit5: TcxDBTextEdit [6]
      Left = 76
      Top = 147
      DataBinding.DataField = 'CITY'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 6
      Width = 457
    end
    object cxDBTextEdit6: TcxDBTextEdit [7]
      Left = 76
      Top = 174
      DataBinding.DataField = 'VAT'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 7
      Width = 457
    end
    object cxDBTextEdit7: TcxDBTextEdit [8]
      Left = 139
      Top = 219
      DataBinding.DataField = 'BANK'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 8
      Width = 382
    end
    object cxDBTextEdit8: TcxDBTextEdit [9]
      Left = 139
      Top = 246
      DataBinding.DataField = 'ACCOUNT'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 9
      Width = 382
    end
    object cxDBTextEdit9: TcxDBTextEdit [10]
      Left = 139
      Top = 273
      DataBinding.DataField = 'BANKTYPE'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 10
      Width = 382
    end
    object cxDBTextEdit10: TcxDBTextEdit [11]
      Left = 139
      Top = 300
      DataBinding.DataField = 'BANK1'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 11
      Width = 382
    end
    object cxDBTextEdit11: TcxDBTextEdit [12]
      Left = 139
      Top = 327
      DataBinding.DataField = 'ACCOUNT1'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 12
      Width = 382
    end
    object cxDBTextEdit12: TcxDBTextEdit [13]
      Left = 139
      Top = 354
      DataBinding.DataField = 'BANKTYPE1'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 13
      Width = 382
    end
    object cxDBTextEdit13: TcxDBTextEdit [14]
      Left = 139
      Top = 381
      DataBinding.DataField = 'INVOICESIGN'
      DataBinding.DataSource = dsBase
      Style.HotTrack = False
      TabOrder = 14
      Width = 382
    end
    object dxlyItem1: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'COMPANY'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlyItem3: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'ADDRESS'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlyItem4: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = '.'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlyItem5: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = '.'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxlyItem6: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'CITY'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxlyItem7: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'VAT'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxlyGroup1: TdxLayoutGroup
      Parent = grMain
      CaptionOptions.Text = 'Invoice Setting'
      ButtonOptions.Buttons = <>
      Index = 6
    end
    object dxlyItem8: TdxLayoutItem
      Parent = dxlyGroup1
      CaptionOptions.Text = 'BANK'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlyItem9: TdxLayoutItem
      Parent = dxlyGroup1
      CaptionOptions.Text = 'ACCOUNT'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlyItem10: TdxLayoutItem
      Parent = dxlyGroup1
      CaptionOptions.Text = 'TYPE'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlyItem11: TdxLayoutItem
      Parent = dxlyGroup1
      CaptionOptions.Text = 'BANK 1'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxlyItem12: TdxLayoutItem
      Parent = dxlyGroup1
      CaptionOptions.Text = 'ACCOUNT 1'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxlyItem13: TdxLayoutItem
      Parent = dxlyGroup1
      CaptionOptions.Text = 'TYPE 1'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxlyItem14: TdxLayoutItem
      Parent = dxlyGroup1
      CaptionOptions.Text = 'INVOICE SIGN NAME'
      Control = cxDBTextEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
  end
  inherited LyBase: TdxLayoutLookAndFeelList
    Top = 104
    inherited LyFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object Master: TUniQuery
    Connection = Data.DTCon
    SQL.Strings = (
      'SELECT * FROM COMPANY')
    Left = 272
    Top = 256
  end
  object dsBase: TUniDataSource
    DataSet = Master
    Left = 240
    Top = 256
  end
end
