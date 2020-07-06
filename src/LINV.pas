unit LINV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BASE, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, MemDS,
  DBAccess, Uni, cxCurrencyEdit, dxLayoutcxEditAdapters, cxContainer,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmListINV = class(TfrmBase)
    grLINVDB: TcxGridDBTableView;
    grLINVlvl: TcxGridLevel;
    grLINV: TcxGrid;
    dxlyItem1: TdxLayoutItem;
    Master: TUniQuery;
    dsMaster: TUniDataSource;
    grLINVDBID: TcxGridDBColumn;
    grLINVDBINVNO: TcxGridDBColumn;
    grLINVDBINVDATE: TcxGridDBColumn;
    grLINVDBDUEDATE: TcxGridDBColumn;
    grLINVDBCURR: TcxGridDBColumn;
    grLINVDBRATE: TcxGridDBColumn;
    grLINVDBCUSTOMER: TcxGridDBColumn;
    grLINVDBADDRESS: TcxGridDBColumn;
    grLINVDBSUBTOTAL: TcxGridDBColumn;
    grLINVDBTAX: TcxGridDBColumn;
    grLINVDBISTAX: TcxGridDBColumn;
    grLINVDBTAXPERSEN: TcxGridDBColumn;
    grLINVDBDISCOUNT: TcxGridDBColumn;
    grLINVDBISDISC: TcxGridDBColumn;
    grLINVDBDISCPERSEN: TcxGridDBColumn;
    grLINVDBTOTAL: TcxGridDBColumn;
    grLINVDBCREATEWHO: TcxGridDBColumn;
    grLINVDBCREATEDATE: TcxGridDBColumn;
    grLINVDBUPDATEWHO: TcxGridDBColumn;
    grLINVDBUPDATEDATE: TcxGridDBColumn;
    grLINVDBTAXNO: TcxGridDBColumn;
    grLINVDBPONO: TcxGridDBColumn;
    grLINVDBPODATE: TcxGridDBColumn;
    btnSearch: TcxButtonEdit;
    dxlyItem3: TdxLayoutItem;
    dxlyGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListINV: TfrmListINV;

implementation

{$R *.dfm}

uses DM;

procedure TfrmListINV.FormCreate(Sender: TObject);
begin
  inherited;
  Master.Open ;
end;

end.
