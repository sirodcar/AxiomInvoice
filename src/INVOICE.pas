unit INVOICE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxCurrencyEdit, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxSpinEdit,
  cxCheckBox, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  MemDS, DBAccess, Uni,DateUtils, dxGDIPlusClasses, cxImage,
  dxLayoutLookAndFeels, cxLabel, cxMemo, cxRichEdit, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxButtonEdit, frxClass, frxDBSet, frxBarcode, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBarBuiltInMenu;

type
  TfrmINV = class(TForm)
    dxInvGroup_Root: TdxLayoutGroup;
    dxInv: TdxLayoutControl;
    dxInvGroup1: TdxLayoutGroup;
    dxInvGroup2: TdxLayoutGroup;
    dxInvGroup3: TdxLayoutGroup;
    txtinv: TcxDBTextEdit;
    dxInvItem1: TdxLayoutItem;
    invdate: TcxDBDateEdit;
    dxInvItem2: TdxLayoutItem;
    dbcurr: TcxDBLookupComboBox;
    dxInvItem3: TdxLayoutItem;
    txtrate: TcxDBCurrencyEdit;
    dxInvItem4: TdxLayoutItem;
    dbcust: TcxDBLookupComboBox;
    dxInvItem5: TdxLayoutItem;
    dtdate: TcxDBDateEdit;
    dxInvItem6: TdxLayoutItem;
    dxInvGroup4: TdxLayoutGroup;
    dxInvGroup5: TdxLayoutGroup;
    dxInvGroup6: TdxLayoutGroup;
    dbINV: TcxGridDBTableView;
    grINVlvl: TcxGridLevel;
    grINV: TcxGrid;
    dxInvItem7: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxInvItem8: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxInvItem11: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxInvItem14: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxInvItem15: TdxLayoutItem;
    btnCurr: TcxButton;
    dxInvItem16: TdxLayoutItem;
    btnNew: TcxButton;
    dxInvItem17: TdxLayoutItem;
    btnPrint: TcxButton;
    dxInvItem19: TdxLayoutItem;
    btnSave: TcxButton;
    dxInvItem20: TdxLayoutItem;
    btnCancel: TcxButton;
    dxInvItem21: TdxLayoutItem;
    btnClose: TcxButton;
    dxInvItem22: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxInvItem24: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxInvItem25: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxInvItem26: TdxLayoutItem;
    Mst: TUniQuery;
    Dtl: TUniQuery;
    Curr: TUniQuery;
    dsmst: TUniDataSource;
    dsdtl: TUniDataSource;
    dscurr: TUniDataSource;
    dbINVID: TcxGridDBColumn;
    dbINVBARCODE: TcxGridDBColumn;
    dbINVDESC: TcxGridDBColumn;
    dbINVUNIT: TcxGridDBColumn;
    dbINVPRICE: TcxGridDBColumn;
    dbINVLINETOTAL: TcxGridDBColumn;
    dbINVREMARK: TcxGridDBColumn;
    dbINVIDHEADER: TcxGridDBColumn;
    cmdAction: TUniQuery;
    Cust: TUniQuery;
    dsCust: TUniDataSource;
    dxInvGroup9: TdxLayoutGroup;
    lyHeader: TdxLayoutLookAndFeelList;
    dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel;
    cxLabel1: TcxLabel;
    dxInvItem23: TdxLayoutItem;
    btnPrintInv: TcxButton;
    dxInvItem27: TdxLayoutItem;
    btnTax: TcxButton;
    dxInvItem9: TdxLayoutItem;
    PopMenu: TcxGridPopupMenu;
    grPmenu: TPopupMenu;
    pmNew: TMenuItem;
    pmDel: TMenuItem;
    dbINVQTY: TcxGridDBColumn;
    Tax: TUniQuery;
    dsTax: TUniDataSource;
    dbINVTAXCODE: TcxGridDBColumn;
    dbINVColumn3: TcxGridDBColumn;
    frxInv: TfrxReport;
    objBar: TfrxBarCodeObject;
    dbHeader: TfrxDBDataset;
    dbDetail: TfrxDBDataset;
    dbCustomer: TfrxDBDataset;
    Co: TUniQuery;
    frxdsCo: TfrxDBDataset;
    frxTaxInv: TfrxReport;
    DtlID: TIntegerField;
    DtlBARCODE: TStringField;
    DtlDESC: TStringField;
    DtlUNIT: TStringField;
    DtlPRICE: TStringField;
    DtlLINETOTAL: TStringField;
    DtlREMARK: TStringField;
    DtlIDHEADER: TIntegerField;
    DtlTAXCODE: TStringField;
    DtlQTY: TStringField;
    DtlTAX: TStringField;
    btnInvoices: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    procedure btnCloseClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsmstDataChange(Sender: TObject; Field: TField);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnTaxClick(Sender: TObject);
    procedure pmNewClick(Sender: TObject);
    procedure DtlBeforePost(DataSet: TDataSet);
    procedure btnPrintInvClick(Sender: TObject);
    procedure DtlAfterPost(DataSet: TDataSet);
    procedure MstBeforePost(DataSet: TDataSet);
    procedure dbINVBARCODEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MstAfterPost(DataSet: TDataSet);
    procedure DtlAfterCancel(DataSet: TDataSet);
    procedure DtlAfterDelete(DataSet: TDataSet);
    procedure btnCurrClick(Sender: TObject);
    procedure txtinvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPrintClick(Sender: TObject);
    procedure dbINVEditChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure DtlQTYChange(Sender: TField);
    procedure DtlTAXCODEChange(Sender: TField);
    procedure DtlPRICEChange(Sender: TField);
    procedure btnInvoicesClick(Sender: TObject);
    procedure pmDelClick(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshDs;
    function GetInvoiceNo:string;
    procedure UpdateInvoiceSeq;
    procedure ButtonState(st :Byte);
    procedure ValidateEdit;
    function GetSubtotal :Double;
    function GetRateTax (TaxCode :string):Double;
    function GetTaxAmount :Double;
    function GetGrandTotal :Double;
    procedure CheckEmptyRecord;
    procedure CalculateLineTotal;
    function GetLastAutoinc :int64;
  public
    { Public declarations }
  end;

var
  frmINV: TfrmINV;

implementation

{$R *.dfm}

uses DM, TAX, LITEMS, CURRANCY, LINV;

var
  vLastID: Integer;

procedure TfrmINV.btnNewClick(Sender: TObject);
begin
  txtinv.SetFocus;
  with Mst do
  begin
    Insert;
    FieldByName('INVNO').AsString :=GetInvoiceNo ;
    FieldByName('INVDATE').AsDateTime :=Date;
    FieldByName('DUEDATE').AsDateTime := IncDay(Date,30);
    FieldByName('SUBTOTAL').AsFloat :=0;
    FieldByName('TAX').AsFloat :=0;
    FieldByName('DISCOUNT').AsFloat :=0;
    Post ;
//    Mst.FieldByName('ID').AsInteger := GetLastAutoinc ;
 //   vLastID := Mst.FieldByName('ID').AsInteger ;
  end;
  with DTL do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM D_INV WHERE IDHEADER=:p';
    ParamByName('p').AsInteger :=Mst.FieldByName('ID').AsInteger;
    Open;
  end;
end;

procedure TfrmINV.btnPrintClick(Sender: TObject);
var
  InvNo :string;
begin
  InvNo :=txtinv.Text;

  with Mst do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM H_INV WHERE INVNO='+QuotedStr(InvNo);
    Open;
  end;
  with DTL do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM D_INV WHERE IDHEADER=:p';
    ParamByName('p').AsInteger :=Mst.FieldByName('ID').AsInteger;
    Open;
  end;

  with Cust do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT ID,CUSTOMER,ADDRESS,VAT FROM CUSTOMER WHERE ID='+QuotedStr(Mst.FieldByName('Customer').AsString);
    Open;
  end;
  frxTaxInv.ShowReport();
  RefreshDs;
end;

procedure TfrmINV.btnPrintInvClick(Sender: TObject);
var
  InvNo :string;
begin
  InvNo :=txtinv.Text;
  with Mst do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM H_INV WHERE INVNO='+QuotedStr(InvNo);
 //   ShowMessage(SQL.Text);
    Open;
  end;
  with DTL do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM D_INV WHERE IDHEADER=:p';
    ParamByName('p').AsInteger :=Mst.FieldByName('ID').AsInteger;
    Open;
  end;

  with Cust do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT ID,CUSTOMER,ADDRESS,VAT FROM CUSTOMER WHERE ID='+QuotedStr(Mst.FieldByName('Customer').AsString);
    Open;
  end;
  frxInv.ShowReport();
  //RefreshDs;
end;

procedure TfrmINV.btnSaveClick(Sender: TObject);
begin
  ValidateEdit;
  if MessageDlg('are you sure to update this data?',mtConfirmation,mbYesNo,0)=mrYes then
  begin
    if Mst.State=dsInsert then
    begin
      Mst.Post;
      UpdateInvoiceSeq;
    end
    else
    Mst.Post;

  end;
end;

procedure TfrmINV.btnTaxClick(Sender: TObject);
begin
  Application.CreateForm(TfrmTax,frmTax);
  frmTax.ShowModal;
end;

procedure TfrmINV.ButtonState(st: Byte);
begin
  if st=0 then
  begin
    btnNew.Enabled :=True;
    //btnEdit.Enabled :=True;
    btnSave.Enabled :=False;
    btnCancel.Enabled:=False;
  end;
  if st=1 then
  begin
    btnNew.Enabled :=False;
   // btnEdit.Enabled :=False;
    btnSave.Enabled :=True;
    btnCancel.Enabled:=True;
  end;
  
end;

procedure TfrmINV.CalculateLineTotal;
begin
  if (Dtl.State in [dsEdit, dsInsert])
    and (LENGTH(Dtl.FieldByName('TAXCODE').AsString)>0 )  then
  begin
    Dtl.FieldByName('LINETOTAL').AsFloat := Dtl.FieldByName('QTY').NewValue  * Dtl.FieldByName('PRICE').AsFloat;
    Dtl.FieldByName('TAX').AsFloat :=(GetRateTax(Dtl.FieldByName('TAXCODE').AsString)/100)*Dtl.FieldByName('LINETOTAL').AsFloat;
  end;
end;

procedure TfrmINV.CheckEmptyRecord;
begin
   if not dbINV.NewItemRow.Visible then
  begin
    if (Dtl.State in [dsEdit, dsInsert]) then
      Exit;
    if dbINV.DataController.DataSetRecordCount = 0 then
      dbINV.DataController.Append;
  end;

end;

procedure TfrmINV.dbINVBARCODEPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  pmNewClick(Sender);
end;

procedure TfrmINV.dbINVEditChanged(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem);
begin
//  Sender.Controller.EditingController.Edit.PostEditValue;
end;

procedure TfrmINV.dsmstDataChange(Sender: TObject; Field: TField);
begin
if Mst.State in [dsInsert,dsEdit] then
   ButtonState(1)
else
   ButtonState(0);
end;

procedure TfrmINV.DtlAfterCancel(DataSet: TDataSet);
begin
  CheckEmptyRecord
end;

procedure TfrmINV.DtlAfterDelete(DataSet: TDataSet);
begin
  CheckEmptyRecord;
end;

procedure TfrmINV.DtlAfterPost(DataSet: TDataSet);
begin
  if (Mst.State <>dsInsert) or (Mst.State<> dsedit) then
  begin
    Mst.Edit;
    Mst.FieldByName('SUBTOTAL').AsFloat :=GetSubtotal;
    Mst.FieldByName('TAX').AsFloat :=GetTaxAmount;
    Mst.Post;
  end
  else
  begin
    Mst.FieldByName('SUBTOTAL').AsFloat :=GetSubtotal;
    Mst.FieldByName('TAX').AsFloat :=GetTaxAmount;
  end;
end;

procedure TfrmINV.DtlBeforePost(DataSet: TDataSet);
begin
  if LENGTH(Dtl.FieldByName('TAXCODE').AsString)=0 then
  begin
    MessageDlg('Tax Code not complete entry!!',mtError,[mbOK],0);
    Abort;
  end;
end;

procedure TfrmINV.DtlPRICEChange(Sender: TField);
begin
  CalculateLineTotal;
end;

procedure TfrmINV.DtlQTYChange(Sender: TField);
begin
  CalculateLineTotal
end;

procedure TfrmINV.DtlTAXCODEChange(Sender: TField);
begin
    CalculateLineTotal;
end;

procedure TfrmINV.btnCancelClick(Sender: TObject);
begin
  Mst.Cancel;
end;

procedure TfrmINV.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmINV.btnCurrClick(Sender: TObject);
begin
   Application.CreateForm(TfrmCurr,frmCurr);
   frmCurr.ShowModal;
end;

procedure TfrmINV.btnInvoicesClick(Sender: TObject);
begin
    Application.CreateForm(TfrmListINV,frmListINV);
    if frmListINV.ShowModal=mrOk then
    begin
      with Mst do
      begin
        Close;
        SQL.Clear;
        SQL.Text :='SELECT * FROM H_INV WHERE INVNO=:no ORDER BY ID DESC LIMIT 1 ';
        ParamByName('no').AsString :=frmListINV.Master.FieldByName('INVNO').AsString;
        Open;
      end;
      with DTL do
      begin
        Close;
        SQL.Clear;
        SQL.Text :='SELECT * FROM D_INV WHERE IDHEADER=:p';
        ParamByName('p').AsInteger :=Mst.FieldByName('ID').AsInteger;
        Open;
      end;
    end;
end;

procedure TfrmINV.FormShow(Sender: TObject);
begin
  ButtonState(0);
  RefreshDs;
  if not Mst.IsEmpty then
     CheckEmptyRecord;
end;

function TfrmINV.GetGrandTotal: Double;
begin
//
end;

function TfrmINV.GetInvoiceNo: string;
begin
  with cmdAction do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT INVNO FROM COMPANY';
    Open;
  end;
  Result :=IntToStr(YearOf(Date))+'/INV/'+FormatFloat('0000',cmdAction.FieldByName('INVNO').AsInteger+1);
end;

function TfrmINV.GetLastAutoinc: int64;
var
  vQry : TUniQuery;
begin
  Result := -1; //invalid result.
  vQry := TUniQuery.Create(Nil);
  try
    vQry.Connection  := Mst.Connection ;
    vQry.SQL.Text :='Select max(id) from h_inv ';//SELECT last_insert_rowid()';
    vQry.Open;
    vQry.First;
    Result := (vQry.Fields[0].AsLargeInt) + 1;
  finally
    vQry.Free;
  end;

 // Result := Mst.SpecificOptions.Values[] := 'last_insert_rowid()';
end;

function TfrmINV.GetRateTax(TaxCode :string): Double;
begin
  with cmdAction do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT PERSENTAGE FROM TAX WHERE KODE=:p';
    ParamByName('p').AsString :=TaxCode;
    Open;
  end;
  Result :=cmdAction.FieldByName('PERSENTAGE').AsFloat;
end;

function TfrmINV.GetSubtotal: Double;
begin
  with cmdAction do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT SUM(LINETOTAL)AS SUBTOTAL FROM D_INV WHERE IDHEADER=:p';
    ParamByName('p').AsInteger :=Mst.FieldByName('ID').AsInteger;
    Open;
  end;
  Result :=cmdAction.FieldByName('SUBTOTAL').AsFloat;
end;

function TfrmINV.GetTaxAmount: Double;
begin
  with cmdAction do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT SUM(TAX)AS TAXAMOUNT FROM D_INV WHERE IDHEADER=:p';
    ParamByName('p').AsInteger :=Mst.FieldByName('ID').AsInteger;
    Open;
  end;
  Result :=cmdAction.FieldByName('TAXAMOUNT').AsFloat;
end;

procedure TfrmINV.MstAfterPost(DataSet: TDataSet);
begin
   //CheckEmptyRecord;
end;

procedure TfrmINV.MstBeforePost(DataSet: TDataSet);
begin
  Mst.FieldByName('TOTAL').AsFloat :=Mst.FieldByName('Subtotal').AsFloat+Mst.FieldByName('Tax').AsFloat-Mst.FieldByName('DISCOUNT').AsFloat;
end;

procedure TfrmINV.pmDelClick(Sender: TObject);
begin
  if dbINV.DataController.DataSetRecordCount > 0 then
  begin
    Dtl.delete;
  end;
end;
procedure TfrmINV.pmNewClick(Sender: TObject);
begin
  if dbINV.DataController.DataSetRecordCount = 0 then
  begin
    Application.CreateForm(TfrmLookupItems,frmLookupItems);
    Dtl.Insert;
    if frmLookupItems.ShowModal=mrOk then
    begin

      if Mst.FieldByName('ID').AsInteger = 0 then
        Dtl.FieldByName('IDHEADER').AsInteger := vLastID
      else
        Dtl.FieldByName('IDHEADER').AsInteger :=Mst.FieldByName('ID').AsInteger;
      Dtl.FieldByName('BARCODE').AsString :=frmLookupItems.cmdItems.FieldByName('Barcode').AsString;
      Dtl.FieldByName('DESC').AsString :=frmLookupItems.cmdItems.FieldByName('ITEM_DESC').AsString;
      Dtl.FieldByName('QTY').AsFloat:=1;
      Dtl.FieldByName('UNIT').AsString :=frmLookupItems.cmdItems.FieldByName('UNIT').AsString;
      Dtl.FieldByName('PRICE').AsFloat :=frmLookupItems.cmdItems.FieldByName('PRICESELL').AsFloat;
      Dtl.FieldByName('LINETOTAL').AsFloat := Dtl.FieldByName('QTY').AsFloat* Dtl.FieldByName('PRICE').AsFloat;
    end
    else
      Dtl.Cancel;
  end
  else
  begin
    Dtl.Insert;
    Application.CreateForm(TfrmLookupItems,frmLookupItems);
    if frmLookupItems.ShowModal=mrOk then
    begin
      Dtl.FieldByName('IDHEADER').AsInteger :=Mst.FieldByName('ID').AsInteger;
      Dtl.FieldByName('BARCODE').AsString :=frmLookupItems.cmdItems.FieldByName('Barcode').AsString;
      Dtl.FieldByName('DESC').AsString :=frmLookupItems.cmdItems.FieldByName('ITEM_DESC').AsString;
      Dtl.FieldByName('QTY').AsFloat:=1;
      Dtl.FieldByName('UNIT').AsString :=frmLookupItems.cmdItems.FieldByName('UNIT').AsString;
      Dtl.FieldByName('PRICE').AsFloat :=frmLookupItems.cmdItems.FieldByName('PRICESELL').AsFloat;
      Dtl.FieldByName('LINETOTAL').AsFloat := Dtl.FieldByName('QTY').AsFloat* Dtl.FieldByName('PRICE').AsFloat;
    end
  end;
end;

procedure TfrmINV.RefreshDs;
begin
   with Mst do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM H_INV ORDER BY ID DESC LIMIT 1 ';
    Open;
  end;
  with DTL do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM D_INV WHERE IDHEADER=:p';
    ParamByName('p').AsInteger :=Mst.FieldByName('ID').AsInteger;
    Open;
  end;
  with Curr do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM CURR ORDER BY CURR_ISO ASC';
    Open;
  end;
  with Cust do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT ID,CUSTOMER,ADDRESS,VAT FROM CUSTOMER ORDER BY CUSTOMER ASC';
    Open;
  end;
 with Tax do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM TAX ORDER BY KODE ASC';
    Open;
  end;

end;

procedure TfrmINV.txtinvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F3 then
  begin
    Application.CreateForm(TfrmListINV,frmListINV);
    if frmListINV.ShowModal=mrOk then
    begin
      with Mst do
      begin
        Close;
        SQL.Clear;
        SQL.Text :='SELECT * FROM H_INV WHERE INVNO=:no ORDER BY ID DESC LIMIT 1 ';
        ParamByName('no').AsString :=frmListINV.Master.FieldByName('INVNO').AsString;
        Open;
      end;
      with DTL do
      begin
        Close;
        SQL.Clear;
        SQL.Text :='SELECT * FROM D_INV WHERE IDHEADER=:p';
        ParamByName('p').AsInteger :=Mst.FieldByName('ID').AsInteger;
        Open;
      end;
    end;
  end;
end;

procedure TfrmINV.UpdateInvoiceSeq;
begin
  with cmdAction do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='UPDATE  COMPANY SET INVNO=INVNO+1';
    Execute;
  end;
end;

procedure TfrmINV.ValidateEdit;
var i :Integer;
begin
 for I :=0 to self.ComponentCount -1 do
 begin
   with Self do
   begin
     if Components[i] is TcxDBTextEdit then
     begin   
       if (TcxDBTextEdit(Components[i]).Tag=1) and (TcxDBTextEdit(Components[i]).Text='') then
       begin
          TcxDBTextEdit(Components[i]).SetFocus;
          MessageDlg('Entry data not complete!',mtWarning,mbOKCancel,0);
          Abort;
       end;
     end;
     if Components[i] is TcxDBDateEdit then
     begin
       if (TcxDBDateEdit(Components[i]).Tag=1) and (TcxDBDateEdit(Components[i]).Text='') then
       begin
          TcxDBDateEdit(Components[i]).SetFocus;
          MessageDlg('Entry data not complete!',mtWarning,mbOKCancel,0);
          Abort;
       end;
     end;

     if Components[i] is TcxDBLookupComboBox then
     begin
       if (TcxDBLookupComboBox(Components[i]).Tag=1) and (TcxDBLookupComboBox(Components[i]).Text='') then
       begin
          TcxDBLookupComboBox(Components[i]).SetFocus;
          MessageDlg('Entry data not complete!',mtWarning,mbOKCancel,0);
          Abort;
       end;
     end;
   end;

 end;
end;

end.
