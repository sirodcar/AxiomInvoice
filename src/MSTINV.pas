unit MSTINV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BASEGR, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer,
  dxLayoutControlAdapters, dxLayoutContainer, dxLayoutcxEditAdapters, MemDS,
  DBAccess, Uni, dxLayoutLookAndFeels, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Vcl.ImgList, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList,
  cxImageList;

type
  TfrmCust = class(TfrmGrid)
    GrDBID: TcxGridDBColumn;
    GrDBCUSTOMER: TcxGridDBColumn;
    GrDBCONTACT: TcxGridDBColumn;
    GrDBADDRESS: TcxGridDBColumn;
    GrDBPHONE: TcxGridDBColumn;
    GrDBFAX: TcxGridDBColumn;
    GrDBEMAIL: TcxGridDBColumn;
    GrDBCreateWho: TcxGridDBColumn;
    GrDBCreateDate: TcxGridDBColumn;
    GrDBUpdateWho: TcxGridDBColumn;
    GrDBUpdateDate: TcxGridDBColumn;
    GrDBDeleteFlag: TcxGridDBColumn;
    GrDBVAT: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure GrDBCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure txtCariPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txtCariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
    procedure FindCustomer(Cust :string);
  public
    { Public declarations }
  end;

var
  frmCust: TfrmCust;

implementation

{$R *.dfm}

uses CUSTEDIT;

procedure TfrmCust.btnAddClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmECust,frmECust);
  Master.Insert;
  SModal(frmECust);
end;

procedure TfrmCust.btnDelClick(Sender: TObject);
begin
  inherited;
   Master.Delete;
end;

procedure TfrmCust.btneditClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmECust,frmECust);
  Master.Edit;
  SModal(frmECust);
end;

procedure TfrmCust.FindCustomer(Cust: string);
begin
  OpenData('SELECT * FROM CUSTOMER',' WHERE CUSTOMER LIKE '+QuotedStr('%'+Cust+'%'));
end;

procedure TfrmCust.FormShow(Sender: TObject);
begin
  inherited;
  OpenData('SELECT * FROM CUSTOMER','');
end;

procedure TfrmCust.GrDBCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
   // inherited;
  if Master.IsEmpty then
     btnAddClick(Sender)
  else
    btneditClick(Sender);
end;

procedure TfrmCust.txtCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
     FindCustomer(txtCari.Text);
end;

procedure TfrmCust.txtCariPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  FindCustomer(txtCari.Text);
end;

end.
