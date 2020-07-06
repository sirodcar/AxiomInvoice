unit ECOMPANY;

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
  dxLayoutControl, Data.DB, DBAccess, Uni, MemDS, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxClasses;

type
  TfrmConfigure = class(TfrmBase)
    Master: TUniQuery;
    dsBase: TUniDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxlyItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxlyItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxlyItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxlyItem5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxlyItem6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxlyItem7: TdxLayoutItem;
    dxlyGroup1: TdxLayoutGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxlyItem8: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxlyItem9: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxlyItem10: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxlyItem11: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxlyItem12: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxlyItem13: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxlyItem14: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigure: TfrmConfigure;

implementation

{$R *.dfm}

procedure TfrmConfigure.FormShow(Sender: TObject);
begin
  inherited;
  with Master do
  begin
    Close;
    SQL.Clear;
    SQL.Text :='SELECT * FROM COMPANY';
    Open;
  end;
end;

end.
