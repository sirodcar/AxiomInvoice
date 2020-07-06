inherited frmECust: TfrmECust
  Caption = 'EDIT'
  ClientHeight = 405
  ClientWidth = 475
  KeyPreview = False
  ExplicitWidth = 491
  ExplicitHeight = 444
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxly: TdxLayoutControl
    Width = 475
    Height = 405
    ExplicitWidth = 475
    ExplicitHeight = 405
    inherited btnOK: TcxButton
      Left = 309
      Top = 370
      ExplicitLeft = 309
      ExplicitTop = 370
    end
    inherited btnCancel: TcxButton
      Left = 390
      Top = 370
      ExplicitLeft = 390
      ExplicitTop = 370
    end
    object cxDBTextEdit1: TcxDBTextEdit [2]
      Left = 82
      Top = 39
      DataBinding.DataField = 'CUSTOMER'
      DataBinding.DataSource = frmCust.dsBase
      Style.HotTrack = False
      TabOrder = 2
      Width = 371
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 82
      Top = 66
      DataBinding.DataField = 'CONTACT'
      DataBinding.DataSource = frmCust.dsBase
      Style.HotTrack = False
      TabOrder = 3
      Width = 371
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 82
      Top = 188
      DataBinding.DataField = 'PHONE'
      DataBinding.DataSource = frmCust.dsBase
      Style.HotTrack = False
      TabOrder = 5
      Width = 371
    end
    object cxDBTextEdit5: TcxDBTextEdit [5]
      Left = 82
      Top = 215
      DataBinding.DataField = 'FAX'
      DataBinding.DataSource = frmCust.dsBase
      Style.HotTrack = False
      TabOrder = 6
      Width = 371
    end
    object cxDBTextEdit6: TcxDBTextEdit [6]
      Left = 82
      Top = 242
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = frmCust.dsBase
      Style.HotTrack = False
      TabOrder = 7
      Width = 371
    end
    object cxDBTextEdit7: TcxDBTextEdit [7]
      Left = 82
      Top = 269
      DataBinding.DataField = 'VAT'
      DataBinding.DataSource = frmCust.dsBase
      Style.HotTrack = False
      TabOrder = 8
      Width = 371
    end
    object cxDBMemo1: TcxDBMemo [8]
      Left = 82
      Top = 93
      DataBinding.DataField = 'ADDRESS'
      DataBinding.DataSource = frmCust.dsBase
      Style.HotTrack = False
      TabOrder = 4
      Height = 89
      Width = 371
    end
    object dxlyItem1: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'CUSTOMER'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlyItem3: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'CONTACT'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlyItem5: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'PHONE'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxlyItem6: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'FAX'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxlyItem7: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'EMAIL'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxlyItem8: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'VAT'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxlyItem9: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'ADDRESS'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited LyBase: TdxLayoutLookAndFeelList
    inherited LyFeel: TdxLayoutCxLookAndFeel
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      PixelsPerInch = 96
    end
  end
end
