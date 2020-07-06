inherited frmCurr: TfrmCurr
  Caption = 'CURRANCY'
  ClientWidth = 450
  Position = poOwnerFormCenter
  OnShow = FormShow
  ExplicitWidth = 466
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 450
    inherited btnAdd: TcxButton
      OnClick = btnAddClick
    end
    inherited btnedit: TcxButton
      OnClick = btneditClick
    end
    inherited GrBase: TcxGrid
      inherited GrDB: TcxGridDBTableView
        OptionsView.ColumnAutoWidth = True
        object GrDBCURR_ISO: TcxGridDBColumn
          Caption = 'CURRANCY'
          DataBinding.FieldName = 'CURR_ISO'
          Width = 88
        end
        object GrDBDESC: TcxGridDBColumn
          Caption = 'DESCRIPTION'
          DataBinding.FieldName = 'DESC'
        end
      end
    end
    inherited cxButton1: TcxButton
      Left = 365
      ExplicitLeft = 365
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    inherited GrBtm: TdxLayoutGroup
      Index = 0
    end
    inherited GrHeader: TdxLayoutGroup
      Index = 1
    end
    inherited grMain: TdxLayoutGroup
      Index = 2
    end
    inherited itmBtnok: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl1Item2: TdxLayoutItem
      Index = 1
    end
    inherited itmGr: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl1Item1: TdxLayoutItem
      Index = 2
    end
    inherited dxLayoutControl1Item3: TdxLayoutItem
      Index = 0
    end
    inherited btnClose: TdxLayoutItem
      Index = 3
    end
  end
  inherited Master: TUniQuery
    SQL.Strings = (
      'SELECT * FROM CURR')
  end
  inherited img: TcxImageList
    FormatVersion = 1
  end
end
