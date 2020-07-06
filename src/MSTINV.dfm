inherited frmCust: TfrmCust
  Caption = 'Customer'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited btnAdd: TcxButton
      OnClick = btnAddClick
    end
    inherited btnedit: TcxButton
      OnClick = btneditClick
    end
    inherited GrBase: TcxGrid
      Width = 512
      Height = 355
      ExplicitWidth = 512
      ExplicitHeight = 355
      inherited GrDB: TcxGridDBTableView
        OnCellDblClick = GrDBCellDblClick
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        object GrDBID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object GrDBCUSTOMER: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTOMER'
        end
        object GrDBCONTACT: TcxGridDBColumn
          DataBinding.FieldName = 'CONTACT'
        end
        object GrDBADDRESS: TcxGridDBColumn
          DataBinding.FieldName = 'ADDRESS'
        end
        object GrDBPHONE: TcxGridDBColumn
          DataBinding.FieldName = 'PHONE'
        end
        object GrDBFAX: TcxGridDBColumn
          DataBinding.FieldName = 'FAX'
        end
        object GrDBEMAIL: TcxGridDBColumn
          DataBinding.FieldName = 'EMAIL'
        end
        object GrDBCreateWho: TcxGridDBColumn
          DataBinding.FieldName = 'CreateWho'
          Visible = False
        end
        object GrDBCreateDate: TcxGridDBColumn
          DataBinding.FieldName = 'CreateDate'
          Visible = False
        end
        object GrDBUpdateWho: TcxGridDBColumn
          DataBinding.FieldName = 'UpdateWho'
          Visible = False
        end
        object GrDBUpdateDate: TcxGridDBColumn
          DataBinding.FieldName = 'UpdateDate'
          Visible = False
        end
        object GrDBDeleteFlag: TcxGridDBColumn
          DataBinding.FieldName = 'DeleteFlag'
          Visible = False
        end
        object GrDBVAT: TcxGridDBColumn
          DataBinding.FieldName = 'VAT'
          Width = 64
        end
      end
    end
    inherited btnDel: TcxButton
      OnClick = btnDelClick
    end
    inherited txtCari: TcxButtonEdit
      Properties.OnButtonClick = txtCariPropertiesButtonClick
      OnKeyDown = txtCariKeyDown
      ExplicitHeight = 24
    end
    inherited dxLayoutControl1Item3: TdxLayoutItem
      ControlOptions.OriginalHeight = 24
    end
  end
  inherited LyBase: TdxLayoutLookAndFeelList
    inherited LyFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited Master: TUniQuery
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
  end
  inherited img: TcxImageList
    FormatVersion = 1
  end
end
