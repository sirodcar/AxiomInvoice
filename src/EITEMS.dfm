inherited frmEItems: TfrmEItems
  Caption = 'ITEMS'
  ClientHeight = 359
  ClientWidth = 452
  OnShow = FormShow
  ExplicitWidth = 468
  ExplicitHeight = 398
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxly: TdxLayoutControl
    Width = 452
    Height = 359
    ExplicitWidth = 452
    ExplicitHeight = 359
    inherited btnOK: TcxButton
      Left = 286
      Top = 324
      TabOrder = 2
      ExplicitLeft = 286
      ExplicitTop = 324
    end
    inherited btnCancel: TcxButton
      Left = 367
      Top = 324
      TabOrder = 3
      ExplicitLeft = 367
      ExplicitTop = 324
    end
    object txtcode: TcxDBTextEdit [2]
      Left = 114
      Top = 66
      DataBinding.DataField = 'BARCODE'
      DataBinding.DataSource = frmItems.dsBase
      Style.HotTrack = False
      TabOrder = 5
      Width = 316
    end
    object txtdesc: TcxDBTextEdit [3]
      Left = 114
      Top = 93
      DataBinding.DataField = 'ITEM_DESC'
      DataBinding.DataSource = frmItems.dsBase
      Style.HotTrack = False
      TabOrder = 6
      Width = 316
    end
    object cxDBCheckBox1: TcxDBCheckBox [4]
      Left = 22
      Top = 39
      Caption = 'ITEM/SERVICE'
      DataBinding.DataField = 'TYPE'
      DataBinding.DataSource = frmItems.dsBase
      Style.HotTrack = False
      TabOrder = 4
    end
    object txtstd: TcxDBCurrencyEdit [5]
      Left = 114
      Top = 120
      DataBinding.DataField = 'PRICESTD'
      DataBinding.DataSource = frmItems.dsBase
      Properties.DisplayFormat = '#,###'
      Style.HotTrack = False
      TabOrder = 7
      Width = 316
    end
    object txtsell: TcxDBCurrencyEdit [6]
      Left = 114
      Top = 147
      DataBinding.DataField = 'PRICESELL'
      DataBinding.DataSource = frmItems.dsBase
      Properties.DisplayFormat = '#,###'
      Style.HotTrack = False
      TabOrder = 8
      Width = 316
    end
    object dbunt: TcxDBLookupComboBox [7]
      Left = 114
      Top = 174
      DataBinding.DataField = 'UNIT'
      DataBinding.DataSource = frmItems.dsBase
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'UNIT'
        end>
      Properties.ListSource = dsUnit
      Style.HotTrack = False
      TabOrder = 9
      Width = 316
    end
    object dbcat: TcxDBLookupComboBox [8]
      Left = 114
      Top = 201
      DataBinding.DataField = 'CATEGORY'
      DataBinding.DataSource = frmItems.dsBase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'CATEGORY'
        end>
      Properties.ListSource = dsCat
      Style.HotTrack = False
      TabOrder = 10
      Width = 316
    end
    object btnUnit: TcxButton [9]
      Left = 10
      Top = 324
      Width = 75
      Height = 25
      Caption = 'Unit'
      TabOrder = 0
      OnClick = btnUnitClick
    end
    object btnCat: TcxButton [10]
      Left = 91
      Top = 324
      Width = 75
      Height = 25
      Caption = 'Category'
      TabOrder = 1
      OnClick = btnCatClick
    end
    inherited itmBtnok: TdxLayoutItem
      Index = 2
    end
    inherited dxlyItem2: TdxLayoutItem
      Index = 3
    end
    object dxlyItem1: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'CODE'
      Control = txtcode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlyItem3: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'DESCRIPTION'
      Control = txtdesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlyItem4: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlyItem5: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'STANDARD PRICE'
      Control = txtstd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxlyItem6: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'SELLING PRICE'
      Control = txtsell
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxlyItem7: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'UNIT'
      Control = dbunt
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxlyItem8: TdxLayoutItem
      Parent = grMain
      CaptionOptions.Text = 'CATEGORY'
      Control = dbcat
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxlyItem9: TdxLayoutItem
      Parent = GrBtm
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnUnit
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlyItem10: TdxLayoutItem
      Parent = GrBtm
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnCat
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited LyBase: TdxLayoutLookAndFeelList
    Left = 48
    Top = 248
    inherited LyFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object CmdUnit: TUniQuery
    Connection = Data.DTCon
    SQL.Strings = (
      'SELECT * FROM UNIT')
    Left = 112
    Top = 224
  end
  object dsUnit: TUniDataSource
    DataSet = CmdUnit
    Left = 144
    Top = 224
  end
  object CmdCategory: TUniQuery
    Connection = Data.DTCon
    SQL.Strings = (
      'SELECT * FROM CATEGORY')
    Left = 176
    Top = 224
  end
  object dsCat: TUniDataSource
    DataSet = CmdCategory
    Left = 208
    Top = 224
  end
end
