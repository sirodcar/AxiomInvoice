unit BASE;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, Vcl.Menus,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxLayoutLookAndFeels,System.Math,
  Vcl.ExtCtrls, cxClasses;

type
  TfrmBase = class(TForm)
    dxlyGroup_Root: TdxLayoutGroup;
    dxly: TdxLayoutControl;
    GrBtm: TdxLayoutGroup;
    GrHeader: TdxLayoutGroup;
    grMain: TdxLayoutGroup;
    btnOK: TcxButton;
    itmBtnok: TdxLayoutItem;
    btnCancel: TcxButton;
    dxlyItem2: TdxLayoutItem;
    LyBase: TdxLayoutLookAndFeelList;
    LyFeel: TdxLayoutCxLookAndFeel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  protected
     procedure GradHorizontal(Canvas:TCanvas; Rect:TRect; FromColor, ToColor:TColor) ;
     procedure GradVertical(Canvas:TCanvas; Rect:TRect; FromColor, ToColor:TColor) ;
     procedure ValidasiEntry;
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

{ TfrmBase }

procedure TfrmBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
     SelectNext(ActiveControl,True,True);
end;

procedure TfrmBase.GradHorizontal(Canvas: TCanvas; Rect: TRect; FromColor,
  ToColor: TColor);
var
   X:integer;
   dr,dg,db:Extended;
   C1,C2:TColor;
   r1,r2,g1,g2,b1,b2:Byte;
   R,G,B:Byte;
   cnt:integer;
 begin
   C1 := FromColor;
   R1 := GetRValue(C1) ;
   G1 := GetGValue(C1) ;
   B1 := GetBValue(C1) ;

   C2 := ToColor;
   R2 := GetRValue(C2) ;
   G2 := GetGValue(C2) ;
   B2 := GetBValue(C2) ;

   dr := (R2-R1) / Rect.Right-Rect.Left;
   dg := (G2-G1) / Rect.Right-Rect.Left;
   db := (B2-B1) / Rect.Right-Rect.Left;

   cnt := 0;
   for X := Rect.Left to Rect.Right-1 do
   begin
     R := R1+Ceil(dr*cnt) ;
     G := G1+Ceil(dg*cnt) ;
     B := B1+Ceil(db*cnt) ;

     Canvas.Pen.Color := RGB(R,G,B) ;
     Canvas.MoveTo(X,Rect.Top) ;
     Canvas.LineTo(X,Rect.Bottom) ;
     inc(cnt) ;
   end;
end;

procedure TfrmBase.GradVertical(Canvas: TCanvas; Rect: TRect; FromColor,
  ToColor: TColor);
 var
   Y:integer;
   dr,dg,db:Extended;
   C1,C2:TColor;
   r1,r2,g1,g2,b1,b2:Byte;
   R,G,B:Byte;
   cnt:Integer;
 begin
    C1 := FromColor;
    R1 := GetRValue(C1) ;
    G1 := GetGValue(C1) ;
    B1 := GetBValue(C1) ;

    C2 := ToColor;
    R2 := GetRValue(C2) ;
    G2 := GetGValue(C2) ;
    B2 := GetBValue(C2) ;

    dr := (R2-R1) / Rect.Bottom-Rect.Top;
    dg := (G2-G1) / Rect.Bottom-Rect.Top;
    db := (B2-B1) / Rect.Bottom-Rect.Top;

    cnt := 0;
    for Y := Rect.Top to Rect.Bottom-1 do
    begin
       R := R1+Ceil(dr*cnt) ;
       G := G1+Ceil(dg*cnt) ;
       B := B1+Ceil(db*cnt) ;

       Canvas.Pen.Color := RGB(R,G,B) ;
       Canvas.MoveTo(Rect.Left,Y) ;
       Canvas.LineTo(Rect.Right,Y) ;
       Inc(cnt) ;
    end;
end;

procedure TfrmBase.ValidasiEntry;
var i :Integer;
begin
//  for i := 0 to dxly.ControlCount-1 do
//  begin
//    if Controls[i]is TcxDBTextEdit then
//    begin
//      if (TcxDBTextEdit(Controls[i]).Tag=1) and Length(TcxDBTextEdit(Controls[i]).Text)<0 then
//      begin
//        MessageDlg('Entry data not complete!!',mtError,mbOKCancel,0);
//        TcxDBTextEdit(Controls[i]).SetFocus;
//        Abort;
//      end;
//    end;
//  end;

end;
end.


