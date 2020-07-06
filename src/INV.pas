unit INV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, Vcl.ImgList,Data.DB,
  System.ImageList, cxImageList;

type
  TfrmMAIN = class(TForm)
    stsBar: TStatusBar;
    pnltop: TPanel;
    pnlleft: TPanel;
    pnlmain: TPanel;
    btncust: TcxButton;
    imgBtn: TcxImageList;
    btnConfig: TcxButton;
    btnItems: TcxButton;
    btnInv: TcxButton;
    lblTitle: TLabel;
    cxButton1: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure btncustClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure btnItemsClick(Sender: TObject);
    procedure btnInvClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ShowForm(F:TForm);
  public
    { Public declarations }
  end;
 TShowDllForm=procedure;

var
  frmMAIN: TfrmMAIN;
  ShowDllForm:TShowDllForm;
  gAppPath : string;

implementation

{$R *.dfm}

uses BASE, BASEGR, MSTINV, ECOMPANY, ITEMS, INVOICE;

procedure TfrmMAIN.btncustClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCust,frmCust);
  ShowForm(frmCust);
end;

procedure TfrmMAIN.Button1Click(Sender: TObject);
var
   dllHandle : cardinal;
begin
   dllHandle := LoadLibrary('PSMT.dll') ;
   if dllHandle <> 0 then
   begin
     @ShowDllForm := GetProcAddress(dllHandle, 'ShowDllForm') ;
     if Assigned (ShowDllForm) then
       ShowDllForm  //call the function
     else
       ShowMessage('"CircleArea" function not found') ;
     FreeLibrary(dllHandle) ;
   end
   else
   begin
     ShowMessage('PMST.dll not found / not loaded') ;
   end;
 end;


procedure TfrmMAIN.cxButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMAIN.FormCreate(Sender: TObject);
begin
    gAppPath:= ExtractFilePath(Application.ExeName);
end;

procedure TfrmMAIN.btnConfigClick(Sender: TObject);
begin
  Application.CreateForm(TfrmConfigure,frmConfigure);
  if frmConfigure.ShowModal =mrOk then
  begin
     if frmConfigure.Master.State in [dsinsert,dsedit] then
        frmConfigure.Master.Post;
  end;
end;

procedure TfrmMAIN.btnInvClick(Sender: TObject);
begin
  Application.CreateForm(TfrmINV,frmINV);
  ShowForm(frmINV);
end;

procedure TfrmMAIN.btnItemsClick(Sender: TObject);
begin
  Application.CreateForm(TfrmItems,frmItems);
  ShowForm(frmItems);
end;

procedure TfrmMAIN.ShowForm(F: TForm);
begin
  with F do
  begin
    Parent :=pnlmain;
    Align :=alClient;
    BorderStyle :=bsNone;
    Show;
  end;
end;

end.
