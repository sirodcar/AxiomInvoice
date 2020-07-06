unit LITEMS;

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
  dxLayoutControl, Data.DB, DBAccess, Uni, MemDS, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmLookupItems = class(TfrmBase)
    cmdItems: TUniQuery;
    dsLitems: TUniDataSource;
    grItemsDB: TcxGridDBTableView;
    grItemsLvl: TcxGridLevel;
    grItems: TcxGrid;
    dxlyItem1: TdxLayoutItem;
    grItemsDBID: TcxGridDBColumn;
    grItemsDBBARCODE: TcxGridDBColumn;
    grItemsDBITEM_DESC: TcxGridDBColumn;
    grItemsDBUNIT: TcxGridDBColumn;
    grItemsDBPRICESELL: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLookupItems: TfrmLookupItems;

implementation

{$R *.dfm}

uses DM;

procedure TfrmLookupItems.FormShow(Sender: TObject);
begin
  inherited;
  with cmdItems do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM v_items';
    Open;
  end;
end;

end.
