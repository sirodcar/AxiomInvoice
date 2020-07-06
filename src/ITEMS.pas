unit ITEMS;

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
  dxLayoutControlAdapters, dxLayoutContainer, dxLayoutcxEditAdapters,
  Vcl.ImgList, MemDS, DBAccess, Uni, dxLayoutLookAndFeels, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList,
  cxImageList;

type
  TfrmItems = class(TfrmGrid)
    GrDBID: TcxGridDBColumn;
    GrDBBARCODE: TcxGridDBColumn;
    GrDBITEM_DESC: TcxGridDBColumn;
    GrDBPRICESTD: TcxGridDBColumn;
    GrDBPRICESELL: TcxGridDBColumn;
    GrDBTYPE: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure txtCariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure GrDBCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItems: TfrmItems;

implementation

{$R *.dfm}

uses DM, EITEMS;

procedure TfrmItems.btnAddClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmEItems,frmEItems);
  Master.Insert;
  SModal(frmEItems);
end;

procedure TfrmItems.btnDelClick(Sender: TObject);
begin
  inherited;
  Master.Delete;
end;

procedure TfrmItems.btneditClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmEItems,frmEItems);
  Master.Edit;
  SModal(frmEItems);
end;

procedure TfrmItems.FormShow(Sender: TObject);
begin
  inherited;
  OpenData('SELECT * FROM ITEM','');
end;

procedure TfrmItems.GrDBCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
   if Master.IsEmpty then
     btnAddClick(Sender)
  else
    btneditClick(Sender);
end;

procedure TfrmItems.txtCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  OpenData('SELECT * FROM ITEM',' WHERE ITEM_DESC LIKE '+QuotedStr('%'+txtCari.Text+'%'));
end;

end.
