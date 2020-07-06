unit CUSTEDIT;

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
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxMemo, cxClasses;

type
  TfrmECust = class(TfrmBase)
    cxDBTextEdit1: TcxDBTextEdit;
    dxlyItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxlyItem3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxlyItem5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxlyItem6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxlyItem7: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxlyItem8: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxlyItem9: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmECust: TfrmECust;

implementation

{$R *.dfm}

uses MSTINV;

end.
