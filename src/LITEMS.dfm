inherited frmLookupItems: TfrmLookupItems
  Caption = 'Lookup Items'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxly: TdxLayoutControl
    object grItems: TcxGrid [2]
      Left = 22
      Top = 39
      Width = 642
      Height = 365
      TabOrder = 2
      object grItemsDB: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsLitems
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grItemsDBID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Width = 28
        end
        object grItemsDBBARCODE: TcxGridDBColumn
          DataBinding.FieldName = 'BARCODE'
          Width = 90
        end
        object grItemsDBITEM_DESC: TcxGridDBColumn
          Caption = 'DESCRIPTION'
          DataBinding.FieldName = 'ITEM_DESC'
          Width = 374
        end
        object grItemsDBUNIT: TcxGridDBColumn
          DataBinding.FieldName = 'UNIT'
          Width = 44
        end
        object grItemsDBPRICESELL: TcxGridDBColumn
          Caption = 'SELLING PRICE'
          DataBinding.FieldName = 'PRICESELL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###'
          Width = 120
        end
      end
      object grItemsLvl: TcxGridLevel
        GridView = grItemsDB
      end
    end
    object dxlyItem1: TdxLayoutItem
      Parent = grMain
      AlignHorz = ahClient
      AlignVert = avClient
      Control = grItems
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited LyBase: TdxLayoutLookAndFeelList
    inherited LyFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cmdItems: TUniQuery
    Connection = Data.DTCon
    SQL.Strings = (
      'SELECT * FROM v_items')
    Left = 304
    Top = 176
  end
  object dsLitems: TUniDataSource
    DataSet = cmdItems
    Left = 336
    Top = 176
  end
end
