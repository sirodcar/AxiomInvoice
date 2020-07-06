inherited frmCategory: TfrmCategory
  Caption = 'CATEGORY'
  ClientWidth = 361
  Position = poOwnerFormCenter
  OnShow = FormShow
  ExplicitWidth = 377
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 361
    inherited btnAdd: TcxButton
      OnClick = btnAddClick
    end
    inherited btnedit: TcxButton
      OnClick = btneditClick
    end
    inherited GrBase: TcxGrid
      Width = 250
      Height = 200
      ExplicitWidth = 250
      ExplicitHeight = 200
      inherited GrDB: TcxGridDBTableView
        OptionsView.ColumnAutoWidth = True
        object GrDBID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object GrDBCATEGORY: TcxGridDBColumn
          DataBinding.FieldName = 'CATEGORY'
        end
      end
    end
    inherited txtCari: TcxButtonEdit
      OnKeyDown = txtCariKeyDown
    end
    inherited cxButton1: TcxButton
      Left = 276
      ExplicitLeft = 276
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
      'SELECT * FROM CATEGORY')
  end
  inherited img: TcxImageList
    FormatVersion = 1
  end
end
