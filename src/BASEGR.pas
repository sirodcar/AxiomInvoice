unit BASEGR;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBAccess,
  Uni, MemDS, dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, Vcl.ImgList, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList,
  cxImageList;

type
  TfrmGrid = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    btnAdd: TcxButton;
    btnedit: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    GrBtm: TdxLayoutGroup;
    GrHeader: TdxLayoutGroup;
    grMain: TdxLayoutGroup;
    itmBtnok: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    LyBase: TdxLayoutLookAndFeelList;
    LyFeel: TdxLayoutCxLookAndFeel;
    GrDB: TcxGridDBTableView;
    grLvl: TcxGridLevel;
    GrBase: TcxGrid;
    itmGr: TdxLayoutItem;
    dsBase: TUniDataSource;
    Master: TUniQuery;
    btnDel: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtCari: TcxButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxButton1: TcxButton;
    btnClose: TdxLayoutItem;
    img: TcxImageList;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure OpenData(SQLtxt :string);overload;

  protected
  { Private declarations }
    procedure OpenData(SQLtxt,SQLWhere:string);overload;
    procedure SModal(F:TForm);

  public
    { Public declarations }
  end;

var
  frmGrid: TfrmGrid;

implementation

{$R *.dfm}

uses DM, BASE;

procedure TfrmGrid.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
end;

procedure TfrmGrid.OpenData(SQLtxt, SQLWhere: string);
begin
  SQLtxt:=SQLtxt+SQLWhere;
  OpenData(SQLtxt);
end;

procedure TfrmGrid.SModal(F: TForm);
begin

  if (F.ShowModal=mrOk)then
     Master.Post
  else
    Master.Cancel;
  end;

procedure TfrmGrid.OpenData(SQLtxt: string);
begin
  with Master do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=SQLtxt;
    Open;
  end;
end;

end.
