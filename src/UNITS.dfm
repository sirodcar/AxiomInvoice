inherited frmUnits: TfrmUnits
  Caption = 'UNITS'
  ClientWidth = 353
  Position = poOwnerFormCenter
  OnShow = FormShow
  ExplicitWidth = 369
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 353
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
        object GrDBUNIT: TcxGridDBColumn
          DataBinding.FieldName = 'UNIT'
        end
      end
    end
    inherited txtCari: TcxButtonEdit
      OnKeyDown = txtCariKeyDown
    end
    inherited cxButton1: TcxButton
      Left = 268
      ExplicitLeft = 268
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
      'SELECT * FROM UNIT')
  end
  inherited img: TcxImageList
    FormatVersion = 1
  end
end
