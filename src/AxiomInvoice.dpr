program AxiomInvoice;

uses
  Vcl.Forms,
  INV in 'INV.pas' {frmMAIN},
  BASE in 'BASE.pas' {frmBase},
  DM in 'DM.pas' {Data: TDataModule},
  BASEGR in 'BASEGR.pas' {frmGrid},
  MSTINV in 'MSTINV.pas' {frmCust},
  CUSTEDIT in 'CUSTEDIT.pas' {frmECust},
  ECOMPANY in 'ECOMPANY.pas' {frmConfigure},
  ITEMS in 'ITEMS.pas' {frmItems},
  EITEMS in 'EITEMS.pas' {frmEItems},
  CATEGORY in 'CATEGORY.pas' {frmCategory},
  UNITS in 'UNITS.pas' {frmUnits},
  INVOICE in 'INVOICE.pas' {frmINV},
  LITEMS in 'LITEMS.pas' {frmLookupItems},
  TAX in 'TAX.pas' {frmTax},
  CURRANCY in 'CURRANCY.pas' {frmCurr},
  LINV in 'LINV.pas' {frmListINV};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMAIN, frmMAIN);
  Application.CreateForm(TData, Data);
  Application.Run;
end.
