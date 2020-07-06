inherited frmItems: TfrmItems
  Caption = 'ITEMS'
  ClientHeight = 482
  ClientWidth = 911
  OnShow = FormShow
  ExplicitWidth = 927
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 911
    Height = 482
    ExplicitWidth = 911
    ExplicitHeight = 482
    inherited btnAdd: TcxButton
      Top = 447
      OnClick = btnAddClick
      ExplicitTop = 447
    end
    inherited btnedit: TcxButton
      Top = 447
      OnClick = btneditClick
      ExplicitTop = 447
    end
    inherited GrBase: TcxGrid
      Width = 891
      Height = 401
      ExplicitWidth = 891
      ExplicitHeight = 401
      inherited GrDB: TcxGridDBTableView
        OnCellDblClick = GrDBCellDblClick
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        object GrDBID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Width = 33
        end
        object GrDBBARCODE: TcxGridDBColumn
          Caption = 'CODE'
          DataBinding.FieldName = 'BARCODE'
          Width = 85
        end
        object GrDBITEM_DESC: TcxGridDBColumn
          Caption = 'DESCRIPTION'
          DataBinding.FieldName = 'ITEM_DESC'
          Width = 293
        end
        object GrDBTYPE: TcxGridDBColumn
          Caption = 'ITEM/SERVICE'
          DataBinding.FieldName = 'TYPE'
          Width = 121
        end
        object GrDBPRICESTD: TcxGridDBColumn
          Caption = 'STANDARD PRICE'
          DataBinding.FieldName = 'PRICESTD'
          Width = 182
        end
        object GrDBPRICESELL: TcxGridDBColumn
          Caption = 'SELLING PRICE'
          DataBinding.FieldName = 'PRICESELL'
          Width = 183
        end
      end
    end
    inherited btnDel: TcxButton
      Top = 447
      OnClick = btnDelClick
      ExplicitTop = 447
    end
    inherited txtCari: TcxButtonEdit
      OnKeyDown = txtCariKeyDown
      ExplicitHeight = 24
    end
    inherited cxButton1: TcxButton
      Left = 826
      Top = 447
      ExplicitLeft = 826
      ExplicitTop = 447
    end
    inherited dxLayoutControl1Item3: TdxLayoutItem
      ControlOptions.OriginalHeight = 24
    end
  end
  inherited LyBase: TdxLayoutLookAndFeelList
    Top = 208
    inherited LyFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited dsBase: TUniDataSource
    Left = 208
  end
  inherited Master: TUniQuery
    SQL.Strings = (
      'SELECT * FROM ITEM')
  end
  inherited img: TcxImageList
    FormatVersion = 1
  end
end
