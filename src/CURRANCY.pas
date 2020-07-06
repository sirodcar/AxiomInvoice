unit CURRANCY;

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
  Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmCurr = class(TfrmGrid)
    GrDBCURR_ISO: TcxGridDBColumn;
    GrDBDESC: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCurr: TfrmCurr;

implementation

{$R *.dfm}

uses DM;

procedure TfrmCurr.btnAddClick(Sender: TObject);
begin
  inherited;
  Master.Insert;
end;

procedure TfrmCurr.btneditClick(Sender: TObject);
begin
  inherited;
  Master.Edit;
end;

procedure TfrmCurr.FormShow(Sender: TObject);
begin
  inherited;
  with Master do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM CURR';
    Open;
  end;
end;

end.
