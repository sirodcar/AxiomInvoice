object frmINV: TfrmINV
  Left = 0
  Top = 0
  Caption = 'INVOICE'
  ClientHeight = 507
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxInv: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 730
    Height = 507
    Align = alClient
    TabOrder = 0
    object txtinv: TcxDBTextEdit
      Tag = 1
      Left = 75
      Top = 47
      DataBinding.DataField = 'INVNO'
      DataBinding.DataSource = dsmst
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      OnKeyDown = txtinvKeyDown
      Width = 170
    end
    object invdate: TcxDBDateEdit
      Tag = 1
      Left = 326
      Top = 47
      DataBinding.DataField = 'INVDATE'
      DataBinding.DataSource = dsmst
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 170
    end
    object dbcurr: TcxDBLookupComboBox
      Tag = 1
      Left = 75
      Top = 74
      DataBinding.DataField = 'CURR'
      DataBinding.DataSource = dsmst
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'CURR_ISO'
      Properties.ListColumns = <
        item
          Caption = 'Currancy'
          FieldName = 'CURR_ISO'
        end>
      Properties.ListSource = dscurr
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 170
    end
    object txtrate: TcxDBCurrencyEdit
      Left = 326
      Top = 74
      DataBinding.DataField = 'RATE'
      DataBinding.DataSource = dsmst
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 170
    end
    object dbcust: TcxDBLookupComboBox
      Tag = 1
      Left = 75
      Top = 101
      DataBinding.DataField = 'CUSTOMER'
      DataBinding.DataSource = dsmst
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'CUSTOMER'
        end>
      Properties.ListSource = dsCust
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 170
    end
    object dtdate: TcxDBDateEdit
      Tag = 1
      Left = 326
      Top = 101
      DataBinding.DataField = 'DUEDATE'
      DataBinding.DataSource = dsmst
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 170
    end
    object grINV: TcxGrid
      Left = 10
      Top = 128
      Width = 768
      Height = 183
      TabOrder = 10
      object dbINV: TcxGridDBTableView
        PopupMenu = grPmenu
        Navigator.Buttons.CustomButtons = <>
        OnEditChanged = dbINVEditChanged
        DataController.DataSource = dsdtl
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.PullFocusing = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 21
        object dbINVID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object dbINVBARCODE: TcxGridDBColumn
          Caption = 'ITEM NO'
          DataBinding.FieldName = 'BARCODE'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = dbINVBARCODEPropertiesButtonClick
          Width = 54
        end
        object dbINVDESC: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'DESC'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 124
        end
        object dbINVQTY: TcxGridDBColumn
          DataBinding.FieldName = 'QTY'
        end
        object dbINVUNIT: TcxGridDBColumn
          DataBinding.FieldName = 'UNIT'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 51
        end
        object dbINVPRICE: TcxGridDBColumn
          Caption = 'Price'
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,###.00'
          Width = 63
        end
        object dbINVTAXCODE: TcxGridDBColumn
          Caption = 'Vat Code'
          DataBinding.FieldName = 'TAXCODE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'KODE'
          Properties.ListColumns = <
            item
              FieldName = 'KODE'
            end>
          Properties.ListSource = dsTax
        end
        object dbINVLINETOTAL: TcxGridDBColumn
          Caption = 'TOTAL'
          DataBinding.FieldName = 'LINETOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,###.00'
          Properties.ReadOnly = True
          Options.Editing = False
          Width = 117
        end
        object dbINVREMARK: TcxGridDBColumn
          DataBinding.FieldName = 'REMARK'
          Width = 267
        end
        object dbINVIDHEADER: TcxGridDBColumn
          DataBinding.FieldName = 'IDHEADER'
          Visible = False
          Width = 26
        end
        object dbINVColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'TAX'
          Visible = False
        end
      end
      object grINVlvl: TcxGridLevel
        GridView = dbINV
      end
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 657
      Top = 317
      DataBinding.DataField = 'SUBTOTAL'
      DataBinding.DataSource = dsmst
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 657
      Top = 344
      DataBinding.DataField = 'TAX'
      DataBinding.DataSource = dsmst
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Left = 657
      Top = 371
      DataBinding.DataField = 'DISCOUNT'
      DataBinding.DataSource = dsmst
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit
      Left = 657
      Top = 398
      DataBinding.DataField = 'TOTAL'
      DataBinding.DataSource = dsmst
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object btnCurr: TcxButton
      Left = 286
      Top = 443
      Width = 75
      Height = 25
      Caption = '&Currancy'
      TabOrder = 18
      OnClick = btnCurrClick
    end
    object btnNew: TcxButton
      Left = 22
      Top = 443
      Width = 75
      Height = 25
      Caption = '&New Invoice'
      TabOrder = 15
      OnClick = btnNewClick
    end
    object btnPrint: TcxButton
      Left = 103
      Top = 443
      Width = 96
      Height = 25
      Caption = 'Print Tax Inv.'
      TabOrder = 16
      OnClick = btnPrintClick
    end
    object btnSave: TcxButton
      Left = 529
      Top = 443
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 21
      OnClick = btnSaveClick
    end
    object btnCancel: TcxButton
      Left = 610
      Top = 443
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 22
      OnClick = btnCancelClick
    end
    object btnClose: TcxButton
      Left = 691
      Top = 443
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 23
      OnClick = btnCloseClick
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Tag = 1
      Left = 548
      Top = 101
      DataBinding.DataField = 'TAXNO'
      DataBinding.DataSource = dsmst
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 170
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Tag = 1
      Left = 548
      Top = 47
      DataBinding.DataField = 'PONO'
      DataBinding.DataSource = dsmst
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 170
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 548
      Top = 74
      DataBinding.DataField = 'PODATE'
      DataBinding.DataSource = dsmst
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 170
    end
    object cxLabel1: TcxLabel
      Left = 22
      Top = 17
      Caption = 
        'Invoice Register (     Press F3 key in Invoice no for list of in' +
        'voices  )'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btnPrintInv: TcxButton
      Left = 205
      Top = 443
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 17
      OnClick = btnPrintInvClick
    end
    object btnTax: TcxButton
      Left = 367
      Top = 443
      Width = 75
      Height = 25
      Caption = 'VAT'
      TabOrder = 19
      OnClick = btnTaxClick
    end
    object btnInvoices: TcxButton
      Left = 448
      Top = 443
      Width = 75
      Height = 25
      Caption = 'Invoices'
      TabOrder = 20
      OnClick = btnInvoicesClick
    end
    object dxInvGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 4
      ShowBorder = False
      Index = -1
    end
    object dxInvGroup1: TdxLayoutGroup
      Parent = dxInvGroup_Root
      CaptionOptions.Text = 'Header'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxInvGroup2: TdxLayoutGroup
      Parent = dxInvGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Details'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object dxInvGroup3: TdxLayoutGroup
      Parent = dxInvGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      ButtonOptions.Buttons = <>
      ItemIndex = 8
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxInvItem1: TdxLayoutItem
      Parent = dxInvGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Invoice No *'
      Control = txtinv
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxInvItem2: TdxLayoutItem
      Parent = dxInvGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Invoice Date *'
      Control = invdate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxInvItem3: TdxLayoutItem
      Parent = dxInvGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currancy *'
      Control = dbcurr
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxInvItem4: TdxLayoutItem
      Parent = dxInvGroup5
      CaptionOptions.Text = 'Rate'
      Control = txtrate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxInvItem5: TdxLayoutItem
      Parent = dxInvGroup6
      CaptionOptions.Text = 'Customer *'
      Control = dbcust
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxInvItem6: TdxLayoutItem
      Parent = dxInvGroup6
      CaptionOptions.Text = 'Due Date *'
      Control = dtdate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxInvGroup4: TdxLayoutGroup
      Parent = dxInvGroup1
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxInvGroup5: TdxLayoutGroup
      Parent = dxInvGroup1
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxInvGroup6: TdxLayoutGroup
      Parent = dxInvGroup1
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxInvItem7: TdxLayoutItem
      Parent = dxInvGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      Control = grINV
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxInvItem8: TdxLayoutItem
      Parent = dxInvGroup2
      AlignHorz = ahRight
      CaptionOptions.Text = 'Subtotal'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxInvItem11: TdxLayoutItem
      Parent = dxInvGroup2
      AlignHorz = ahRight
      CaptionOptions.Text = 'Vat'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxInvItem14: TdxLayoutItem
      Parent = dxInvGroup2
      AlignHorz = ahRight
      CaptionOptions.Text = 'Discount'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxInvItem15: TdxLayoutItem
      Parent = dxInvGroup2
      AlignHorz = ahRight
      CaptionOptions.Text = 'Total'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxInvItem16: TdxLayoutItem
      Parent = dxInvGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnCurr
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxInvItem17: TdxLayoutItem
      Parent = dxInvGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnNew
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxInvItem19: TdxLayoutItem
      Parent = dxInvGroup3
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnPrint
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxInvItem20: TdxLayoutItem
      Parent = dxInvGroup3
      AlignHorz = ahRight
      CaptionOptions.Text = 'Save'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxInvItem21: TdxLayoutItem
      Parent = dxInvGroup3
      AlignHorz = ahRight
      CaptionOptions.Text = 'Cancel'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxInvItem22: TdxLayoutItem
      Parent = dxInvGroup3
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = btnClose
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxInvItem24: TdxLayoutItem
      Parent = dxInvGroup6
      CaptionOptions.Text = 'Vat No *'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxInvItem25: TdxLayoutItem
      Parent = dxInvGroup4
      CaptionOptions.Text = 'PO NO *'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxInvItem26: TdxLayoutItem
      Parent = dxInvGroup5
      CaptionOptions.Text = 'PO Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxInvGroup9: TdxLayoutGroup
      Parent = dxInvGroup_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = dxLayoutWebLookAndFeel1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxInvItem23: TdxLayoutItem
      Parent = dxInvGroup9
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxInvItem27: TdxLayoutItem
      Parent = dxInvGroup3
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnPrintInv
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxInvItem9: TdxLayoutItem
      Parent = dxInvGroup3
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnTax
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxInvGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnInvoices
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object Mst: TUniQuery
    Connection = Data.DTCon
    SQL.Strings = (
      'SELECT * FROM H_INV')
    Options.DefaultValues = True
    BeforePost = MstBeforePost
    AfterPost = MstAfterPost
    Left = 96
    Top = 352
  end
  object Dtl: TUniQuery
    Connection = Data.DTCon
    SQL.Strings = (
      'SELECT * FROM D_INV WHERE IDHEADER=:p')
    BeforePost = DtlBeforePost
    AfterPost = DtlAfterPost
    AfterCancel = DtlAfterCancel
    AfterDelete = DtlAfterDelete
    Left = 128
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p'
        Value = nil
      end>
    object DtlID: TIntegerField
      FieldName = 'ID'
    end
    object DtlBARCODE: TStringField
      FieldName = 'BARCODE'
    end
    object DtlDESC: TStringField
      FieldName = 'DESC'
      Size = 100
    end
    object DtlUNIT: TStringField
      FieldName = 'UNIT'
      Size = 5
    end
    object DtlPRICE: TStringField
      FieldName = 'PRICE'
      OnChange = DtlPRICEChange
      Size = 8
    end
    object DtlLINETOTAL: TStringField
      FieldName = 'LINETOTAL'
      Size = 8
    end
    object DtlREMARK: TStringField
      FieldName = 'REMARK'
      Size = 100
    end
    object DtlIDHEADER: TIntegerField
      FieldName = 'IDHEADER'
    end
    object DtlTAXCODE: TStringField
      FieldName = 'TAXCODE'
      Required = True
      OnChange = DtlTAXCODEChange
      Size = 5
    end
    object DtlQTY: TStringField
      FieldName = 'QTY'
      OnChange = DtlQTYChange
      Size = 8
    end
    object DtlTAX: TStringField
      FieldName = 'TAX'
      Size = 8
    end
  end
  object Curr: TUniQuery
    Connection = Data.DTCon
    SQL.Strings = (
      'SELECT * FROM CURR')
    Left = 160
    Top = 352
  end
  object dsmst: TUniDataSource
    DataSet = Mst
    OnDataChange = dsmstDataChange
    Left = 96
    Top = 400
  end
  object dsdtl: TUniDataSource
    DataSet = Dtl
    Left = 128
    Top = 400
  end
  object dscurr: TUniDataSource
    DataSet = Curr
    Left = 160
    Top = 400
  end
  object cmdAction: TUniQuery
    Connection = Data.DTCon
    Left = 192
    Top = 352
  end
  object Cust: TUniQuery
    Connection = Data.DTCon
    SQL.Strings = (
      
        'SELECT ID,CUSTOMER,ADDRESS,VAT FROM CUSTOMER ORDER BY CUSTOMER A' +
        'SC')
    Left = 224
    Top = 352
  end
  object dsCust: TUniDataSource
    DataSet = Cust
    Left = 200
    Top = 400
  end
  object lyHeader: TdxLayoutLookAndFeelList
    Left = 56
    Top = 176
    object dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel
      GroupOptions.Color = clGray
      PixelsPerInch = 96
    end
  end
  object PopMenu: TcxGridPopupMenu
    Grid = grINV
    PopupMenus = <
      item
        GridView = dbINV
        HitTypes = []
        Index = 0
        PopupMenu = grPmenu
      end
      item
        HitTypes = []
        Index = 1
      end>
    Left = 376
    Top = 272
  end
  object grPmenu: TPopupMenu
    Left = 416
    Top = 272
    object pmNew: TMenuItem
      Caption = 'New'
      OnClick = pmNewClick
    end
    object pmDel: TMenuItem
      Caption = 'Delete'
    end
  end
  object Tax: TUniQuery
    Connection = Data.DTCon
    SQL.Strings = (
      'SELECT * FROM TAX ORDER BY KODE ASC')
    Left = 264
    Top = 352
  end
  object dsTax: TUniDataSource
    DataSet = Tax
    Left = 240
    Top = 400
  end
  object frxInv: TfrxReport
    Version = '6.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41705.911993738400000000
    ReportOptions.LastChange = 41771.628830590280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 352
    Datasets = <
      item
        DataSet = frxdsCo
        DataSetName = 'frxdbco'
      end
      item
        DataSet = dbCustomer
        DataSetName = 'frxdCust'
      end
      item
        DataSet = dbDetail
        DataSetName = 'frxDDtl'
      end
      item
        DataSet = dbHeader
        DataSetName = 'frxDHdr'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      item
        Name = 'Footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 559.370440000000000000
        Width = 718.110700000000000000
        Child = frxInv.Child1
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795300000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 226.771800000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 49.133890000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 64.252010000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 117.165430000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 222.992270000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 117.165430000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxdbcoTOKO: TfrxMemoView
          AllowVectorExport = True
          Left = 15.795300000000000000
          Top = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'TOKO'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxdbco."TOKO"]')
          ParentFont = False
        end
        object frxdbcoADDRESS1: TfrxMemoView
          AllowVectorExport = True
          Left = 18.574830000000000000
          Top = 30.236240000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ADDRESS1'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."ADDRESS1"]')
        end
        object frxdbcoADDRESS2: TfrxMemoView
          AllowVectorExport = True
          Left = 18.574830000000000000
          Top = 49.133890000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ADDRESS2'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."ADDRESS2"]')
        end
        object frxdbcoADDRESS3: TfrxMemoView
          AllowVectorExport = True
          Left = 18.574830000000000000
          Top = 68.031540000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ADDRESS3'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."ADDRESS3"]')
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 18.897650000000000000
          Width = 129.000000000000000000
          Height = 68.031540000000000000
          BarType = bcCode39
          DataField = 'INVNO'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          Expression = '<frxDHdr."INVNO">'
          Frame.Typ = []
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          ColorBar = clBlack
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.677180000000000000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        DataSet = dbDetail
        DataSetName = 'frxDDtl'
        RowCount = 0
        object frxDBDsDtlTotal_Price: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDsDtl'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
        end
        object frxDDtlDESC: TfrxMemoView
          AllowVectorExport = True
          Left = 37.574830000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'DESC'
          DataSet = dbDetail
          DataSetName = 'frxDDtl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDDtl."DESC"]')
          ParentFont = False
        end
        object frxDDtlQTY: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'QTY'
          DataSet = dbDetail
          DataSetName = 'frxDDtl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDDtl."QTY"]')
          ParentFont = False
        end
        object frxDDtlUNIT: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'UNIT'
          DataSet = dbDetail
          DataSetName = 'frxDDtl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDDtl."UNIT"]')
          ParentFont = False
        end
        object frxDDtlPRICE: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'PRICE'
          DataSet = dbDetail
          DataSetName = 'frxDDtl'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDDtl."PRICE"]')
          ParentFont = False
        end
        object frxDDtlLINETOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'LINETOTAL'
          DataSet = dbDetail
          DataSetName = 'frxDDtl'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDDtl."LINETOTAL"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 257.008040000000000000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 3.779530000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'INVOICE')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 36.472480000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'INVOICE DATE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 62.929190000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DUE DATE')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 89.385900000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CURRANCY')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 317.748300000000000000
          Top = 61.811070000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PO DATE')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 36.472480000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 62.929190000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 89.385900000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 412.236550000000000000
          Top = 61.811070000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object frxDHdrINVDATE: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 36.472480000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'INVDATE'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDHdr."INVDATE"]')
          ParentFont = False
        end
        object frxDHdrDUEDATE: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 62.929190000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'DUEDATE'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDHdr."DUEDATE"]')
          ParentFont = False
        end
        object frxDHdrCURR: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 89.385900000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CURR'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDHdr."CURR"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 317.748300000000000000
          Top = 35.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PO NO')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 412.236550000000000000
          Top = 35.795300000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 431.134200000000000000
          Top = 35.795300000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDHdr."PONO"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 115.842610000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RATE')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 115.842610000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object frxDHdrRATE: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 115.842610000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'RATE'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDHdr."RATE"]')
          ParentFont = False
        end
        object frxDHdrPODATE: TfrxMemoView
          AllowVectorExport = True
          Left = 431.134200000000000000
          Top = 60.472480000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'PODATE'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDHdr."PODATE"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 317.748300000000000000
          Top = 90.708720000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TAX NO')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 412.236550000000000000
          Top = 90.708720000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object frxDHdrTAXNO: TfrxMemoView
          AllowVectorExport = True
          Left = 431.134200000000000000
          Top = 88.708720000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'TAXNO'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDHdr."TAXNO"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 317.748300000000000000
          Top = 115.165430000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CUSTOMER')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 412.236550000000000000
          Top = 115.385900000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object frxdCustCUSTOMER: TfrxMemoView
          AllowVectorExport = True
          Left = 431.134200000000000000
          Top = 114.165430000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'CUSTOMER'
          DataSet = dbCustomer
          DataSetName = 'frxdCust'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdCust."CUSTOMER"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 476.220780000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPTION')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'QTY')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIT')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIT PRICE')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'AMOUNT')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 436.323130000000000000
        Top = 653.858690000000000000
        Width = 718.110700000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 1.677180000000000000
          Width = 222.992270000000000000
          Height = 128.504020000000000000
          GroupIndex = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 1.677180000000000000
          Width = 718.110700000000000000
          Height = 434.645950000000000000
          GroupIndex = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 103.724490000000000000
          Width = 340.157700000000000000
          Height = 26.456710000000000000
          GroupIndex = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 1.677180000000000000
          Width = 117.165430000000000000
          Height = 128.504020000000000000
          GroupIndex = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Top = 1.677180000000000000
          Width = 377.953000000000000000
          Height = 128.504020000000000000
          GroupIndex = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 7.559060000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sub Total')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 35.905535000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Discount')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 64.252010000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tax')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Grand Total')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 151.622140000000000000
          Width = 332.598640000000000000
          Height = 170.078850000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Please remit the above amount to :')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 143.622140000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sincerely Yours ')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 313.700990000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Accounting')
          ParentFont = False
        end
        object frxdbcoINVOICESIGN: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 291.023810000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'INVOICESIGN'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbco."INVOICESIGN"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 166.299320000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          DataField = 'TOKO'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbco."TOKO"]')
          ParentFont = False
        end
        object frxDHdrSUBTOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 6.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'SUBTOTAL'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDHdr."SUBTOTAL"]')
          ParentFont = False
        end
        object frxDHdrDISCOUNT: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 35.236240000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'DISCOUNT'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDHdr."DISCOUNT"]')
          ParentFont = False
        end
        object frxDHdrTAX: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 64.252010000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'TAX'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDHdr."TAX"]')
          ParentFont = False
        end
        object frxdbcoBANK: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 176.519790000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'BANK'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."BANK"]')
          ParentFont = False
        end
        object frxdbcoACCOUNT: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 199.196970000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'ACCOUNT'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."ACCOUNT"]')
          ParentFont = False
        end
        object frxdbcoBANKTYPE: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 221.874150000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'BANKTYPE'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."BANKTYPE"]')
          ParentFont = False
        end
        object frxdbcoBANK1: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 253.228510000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DataField = 'BANK1'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."BANK1"]')
          ParentFont = False
        end
        object frxdbcoACCOUNT1: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 272.126160000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'ACCOUNT1'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."ACCOUNT1"]')
          ParentFont = False
        end
        object frxdbcoBANKTYPE1: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 291.023810000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'BANKTYPE1'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."BANKTYPE1"]')
          ParentFont = False
        end
        object frxDHdrTOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 105.826840000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDHdr."TOTAL"]')
          ParentFont = False
        end
      end
    end
  end
  object objBar: TfrxBarCodeObject
    Left = 32
    Top = 400
  end
  object dbHeader: TfrxDBDataset
    UserName = 'frxDHdr'
    CloseDataSource = False
    DataSet = Mst
    BCDToCurrency = False
    Left = 72
    Top = 368
  end
  object dbDetail: TfrxDBDataset
    UserName = 'frxDDtl'
    CloseDataSource = False
    DataSet = Dtl
    BCDToCurrency = False
    Left = 72
    Top = 416
  end
  object dbCustomer: TfrxDBDataset
    UserName = 'frxdCust'
    CloseDataSource = False
    DataSet = Cust
    BCDToCurrency = False
    Left = 104
    Top = 424
  end
  object Co: TUniQuery
    Connection = Data.DTCon
    SQL.Strings = (
      'SELECT * FROM COMPANY')
    BeforePost = MstBeforePost
    AfterPost = MstAfterPost
    Left = 304
    Top = 400
  end
  object frxdsCo: TfrxDBDataset
    UserName = 'frxdbco'
    CloseDataSource = False
    DataSet = Co
    BCDToCurrency = False
    Left = 136
    Top = 424
  end
  object frxTaxInv: TfrxReport
    Version = '6.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41705.911993738400000000
    ReportOptions.LastChange = 41771.638672800920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 336
    Top = 368
    Datasets = <
      item
        DataSet = frxdsCo
        DataSetName = 'frxdbco'
      end
      item
        DataSet = dbCustomer
        DataSetName = 'frxdCust'
      end
      item
        DataSet = dbDetail
        DataSetName = 'frxDDtl'
      end
      item
        DataSet = dbHeader
        DataSetName = 'frxDHdr'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      item
        Name = 'Footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 657.638220000000000000
        Width = 718.110700000000000000
        Child = frxTaxInv.Child1
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 302.362400000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 340.157700000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 120.944960000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.677180000000000000
        Top = 616.063390000000000000
        Width = 718.110700000000000000
        DataSet = dbDetail
        DataSetName = 'frxDDtl'
        RowCount = 0
        object frxDBdsHeaderINVINV_No: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 0.779530000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBdsHeaderINV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            '[frxDDtl."DESC"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          AllowVectorExport = True
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
        end
        object frxDBDsDtlTotal_Price: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDsDtl'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
        end
        object frxDBDsDtlTotal_Price1: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDsDtl'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDDtl."PRICE"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 340.157700000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 340.157700000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            ' Tax Invoice Code Number and Series:')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 0.220470000000000000
          Top = 22.677180000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '  Taxable Customer')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 45.913420000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Name')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 68.031540000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Address')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 132.724490000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VAT')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 132.724490000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 68.031540000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 45.354360000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 1.220470000000000000
          Top = 172.401670000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '  Buyer of Taxable Goods / Recipient of Taxable Services')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 203.858380000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Name')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 232.976500000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Address')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 305.669450000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VAT')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 305.669450000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 232.976500000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 203.858380000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object frxdbcoTOKO: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 45.354360000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'TOKO'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."TOKO"]')
          ParentFont = False
        end
        object frxdbcoADDRESS1: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 68.031540000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ADDRESS1'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."ADDRESS1"]')
          ParentFont = False
        end
        object frxdbcoADDRESS2: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 90.708720000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ADDRESS2'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."ADDRESS2"]')
          ParentFont = False
        end
        object frxdbcoADDRESS3: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 113.385900000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ADDRESS3'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."ADDRESS3"]')
          ParentFont = False
        end
        object frxdbcoNPWP: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 132.283550000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'VAT'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbco."VAT"]')
          ParentFont = False
        end
        object frxDHdrTAXNO: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'TAXNO'
          DataSet = dbHeader
          DataSetName = 'frxDHdr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDHdr."TAXNO"]')
          ParentFont = False
        end
        object frxdCustCUSTOMER: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 204.094620000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CUSTOMER'
          DataSet = dbCustomer
          DataSetName = 'frxdCust'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdCust."CUSTOMER"]')
          ParentFont = False
        end
        object frxdCustADDRESS: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 233.551330000000000000
          Width = 400.630180000000000000
          Height = 60.472480000000000000
          DataField = 'ADDRESS'
          DataSet = dbCustomer
          DataSetName = 'frxdCust'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdCust."ADDRESS"]')
        end
        object frxdCustNPWP: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 306.141930000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'VAT'
          DataSet = dbCustomer
          DataSetName = 'frxdCust'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdCust."VAT"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 563.149970000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 302.362400000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Taxable Goods Name /'
            'Taxable services')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No'
            'Sort')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 340.157700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Selling price / Replacement /'
            'Down payment')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 340.157700000000000000
        Top = 752.126470000000000000
        Width = 718.110700000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 359.055350000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 332.598640000000000000
          Height = 113.385900000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  Selling price / Replacement / Down payment')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  Reduced price discount')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  Deducted advances that have been received ')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 68.031540000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  Tax base')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 90.708720000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  Vat on goods')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 34.750000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SAR.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 70.031540000000000000
          Width = 34.750000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SAR.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 92.708720000000000000
          Width = 34.750000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SAR.')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 26.456710000000000000
          Width = 34.750000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SAR.')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 45.354360000000000000
          Width = 34.750000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SAR.')
          ParentFont = False
        end
        object frxDBdsHeaderINVAddtnl_Disc_Amt: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 26.456710000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBdsHeaderINV'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDHdr."DISCOUNT"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 49.133890000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBdsHeaderINV'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 71.811070000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBdsHeaderINV'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 328.819110000000000000
          Height = 173.858380000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 109.606370000000000000
          Height = 151.181200000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 136.063080000000000000
          Width = 109.606370000000000000
          Height = 173.858380000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 328.819110000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 139.842610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tarif')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 139.842610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DPP')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 139.842610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PPN-BM')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 173.858380000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '.....................%')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '.....................%')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 215.433210000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '.....................%')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 237.110390000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '.....................%')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 173.858380000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SAR....................')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SAR....................')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 215.433210000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SAR....................')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 237.110390000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SAR....................')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 173.858380000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SAR....................')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SAR....................')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 215.433210000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SAR....................')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 234.330860000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SAR....................')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 286.685220000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '  Amount')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 287.244280000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '....................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SAR....................')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 317.480520000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '*) Cross the unnecessary ones')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 124.724490000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Date')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 124.724490000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 124.724490000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'mmmm dd, yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object frxDBdsHeaderINVPaid_Amount: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 71.811070000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBdsHeaderINV'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDHdr."SUBTOTAL"]')
          ParentFont = False
        end
        object frxDBdsHeaderINVPaid_PPN: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 94.488250000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBdsHeaderINV'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDHdr."TAX"]')
          ParentFont = False
        end
        object frxDBdsHeaderINVItem_Price: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBdsHeaderINV'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDHdr."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 113.385900000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object frxdbcoINVOICESIGN: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 226.771800000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'INVOICESIGN'
          DataSet = frxdsCo
          DataSetName = 'frxdbco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbco."INVOICESIGN"]')
          ParentFont = False
        end
      end
    end
  end
end
