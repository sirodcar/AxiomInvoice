unit EITEMS;

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
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxDBEdit, cxCheckBox, cxTextEdit, Data.DB, MemDS, DBAccess,
  Uni, cxClasses;

type
  TfrmEItems = class(TfrmBase)
    txtcode: TcxDBTextEdit;
    dxlyItem1: TdxLayoutItem;
    txtdesc: TcxDBTextEdit;
    dxlyItem3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxlyItem4: TdxLayoutItem;
    txtstd: TcxDBCurrencyEdit;
    dxlyItem5: TdxLayoutItem;
    txtsell: TcxDBCurrencyEdit;
    dxlyItem6: TdxLayoutItem;
    dbunt: TcxDBLookupComboBox;
    dxlyItem7: TdxLayoutItem;
    dbcat: TcxDBLookupComboBox;
    dxlyItem8: TdxLayoutItem;
    CmdUnit: TUniQuery;
    dsUnit: TUniDataSource;
    CmdCategory: TUniQuery;
    dsCat: TUniDataSource;
    btnUnit: TcxButton;
    dxlyItem9: TdxLayoutItem;
    btnCat: TcxButton;
    dxlyItem10: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure btnCatClick(Sender: TObject);
    procedure btnUnitClick(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshLookup;
  public
    { Public declarations }
  end;

var
  frmEItems: TfrmEItems;

implementation

{$R *.dfm}

uses ITEMS, DM, CATEGORY, UNITS;

procedure TfrmEItems.btnCatClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCategory,frmCategory);
  frmCategory.ShowModal;
  RefreshLookup;
end;

procedure TfrmEItems.btnUnitClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmUnits,frmUnits);
  frmUnits.ShowModal;
  RefreshLookup;
end;

procedure TfrmEItems.FormShow(Sender: TObject);
begin
  inherited;
  RefreshLookup;
end;

procedure TfrmEItems.RefreshLookup;
begin
  with CmdUnit do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM UNIT';
    Open;
  end;
  with CmdCategory do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM CATEGORY';
    Open;
  end;
end;

end.
