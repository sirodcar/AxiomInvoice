inherited frmListINV: TfrmListINV
  Caption = 'Invoice List'
  ClientWidth = 850
  OnCreate = FormCreate
  ExplicitWidth = 866
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxly: TdxLayoutControl
    Width = 850
    ExplicitWidth = 850
    inherited btnOK: TcxButton
      Left = 684
      ExplicitLeft = 684
    end
    inherited btnCancel: TcxButton
      Left = 765
      ExplicitLeft = 765
    end
    object grLINV: TcxGrid [2]
      Left = 22
      Top = 55
      Width = 806
      Height = 349
      TabOrder = 3
      object grLINVDB: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsMaster
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grLINVDBID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object grLINVDBINVNO: TcxGridDBColumn
          Caption = 'INVOICE NO'
          DataBinding.FieldName = 'INVNO'
          Width = 87
        end
        object grLINVDBINVDATE: TcxGridDBColumn
          Caption = 'DATE'
          DataBinding.FieldName = 'INVDATE'
          Width = 65
        end
        object grLINVDBDUEDATE: TcxGridDBColumn
          DataBinding.FieldName = 'DUEDATE'
          Width = 61
        end
        object grLINVDBCURR: TcxGridDBColumn
          Caption = 'CURRANCY'
          DataBinding.FieldName = 'CURR'
          Width = 61
        end
        object grLINVDBRATE: TcxGridDBColumn
          DataBinding.FieldName = 'RATE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.00'
          Width = 75
        end
        object grLINVDBCUSTOMER: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTOMER'
          Visible = False
        end
        object grLINVDBADDRESS: TcxGridDBColumn
          DataBinding.FieldName = 'ADDRESS'
          Visible = False
        end
        object grLINVDBSUBTOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'SUBTOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.00'
          Width = 90
        end
        object grLINVDBTAX: TcxGridDBColumn
          DataBinding.FieldName = 'TAX'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.00'
          Width = 83
        end
        object grLINVDBISTAX: TcxGridDBColumn
          DataBinding.FieldName = 'ISTAX'
          Visible = False
        end
        object grLINVDBTAXPERSEN: TcxGridDBColumn
          DataBinding.FieldName = 'TAXPERSEN'
          Visible = False
        end
        object grLINVDBDISCOUNT: TcxGridDBColumn
          DataBinding.FieldName = 'DISCOUNT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.00'
          Width = 72
        end
        object grLINVDBISDISC: TcxGridDBColumn
          DataBinding.FieldName = 'ISDISC'
          Visible = False
        end
        object grLINVDBDISCPERSEN: TcxGridDBColumn
          DataBinding.FieldName = 'DISCPERSEN'
          Visible = False
        end
        object grLINVDBTOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.00'
          Width = 96
        end
        object grLINVDBCREATEWHO: TcxGridDBColumn
          DataBinding.FieldName = 'CREATEWHO'
          Visible = False
        end
        object grLINVDBCREATEDATE: TcxGridDBColumn
          DataBinding.FieldName = 'CREATEDATE'
          Visible = False
        end
        object grLINVDBUPDATEWHO: TcxGridDBColumn
          DataBinding.FieldName = 'UPDATEWHO'
          Visible = False
        end
        object grLINVDBUPDATEDATE: TcxGridDBColumn
          DataBinding.FieldName = 'UPDATEDATE'
          Visible = False
        end
        object grLINVDBTAXNO: TcxGridDBColumn
          DataBinding.FieldName = 'TAXNO'
          Visible = False
          Width = 42
        end
        object grLINVDBPONO: TcxGridDBColumn
          DataBinding.FieldName = 'PONO'
          Visible = False
          Width = 40
        end
        object grLINVDBPODATE: TcxGridDBColumn
          DataBinding.FieldName = 'PODATE'
          Visible = False
          Width = 20
        end
      end
      object grLINVlvl: TcxGridLevel
        GridView = grLINVDB
      end
    end
    object btnSearch: TcxButtonEdit [3]
      Left = 10
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Text = 'Search ....'
      Width = 239
    end
    inherited GrHeader: TdxLayoutGroup
      Parent = dxlyGroup1
      AlignHorz = ahClient
      Index = 0
    end
    object dxlyItem1: TdxLayoutItem
      Parent = grMain
      AlignHorz = ahClient
      AlignVert = avClient
      Control = grLINV
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlyItem3: TdxLayoutItem
      Parent = GrHeader
      AlignHorz = ahLeft
      Control = btnSearch
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 239
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlyGroup1: TdxLayoutGroup
      Parent = dxlyGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited LyBase: TdxLayoutLookAndFeelList
    inherited LyFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object Master: TUniQuery
    Connection = Data.DTCon
    SQL.Strings = (
      'SELECT * FROM H_INV')
    Left = 144
    Top = 240
  end
  object dsMaster: TUniDataSource
    DataSet = Master
    Left = 184
    Top = 240
  end
end
