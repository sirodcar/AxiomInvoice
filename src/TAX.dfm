inherited frmTax: TfrmTax
  Caption = 'Tax'
  ClientWidth = 375
  OnShow = FormShow
  ExplicitWidth = 391
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 375
    inherited btnAdd: TcxButton
      OnClick = btnAddClick
    end
    inherited btnedit: TcxButton
      OnClick = btneditClick
    end
    inherited GrBase: TcxGrid
      inherited GrDB: TcxGridDBTableView
        OptionsView.ColumnAutoWidth = True
        object GrDBKODE: TcxGridDBColumn
          Caption = 'CODE'
          DataBinding.FieldName = 'KODE'
          Width = 67
        end
        object GrDBPERSENTAGE: TcxGridDBColumn
          Caption = 'VALUE'
          DataBinding.FieldName = 'PERSENTAGE'
          Width = 418
        end
      end
    end
    inherited cxButton1: TcxButton
      Left = 290
      ExplicitLeft = 290
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
      'SELECT * FROM TAX')
  end
  inherited img: TcxImageList
    FormatVersion = 1
  end
end
