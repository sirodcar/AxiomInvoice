unit frmMSTINV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmINV = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmINV: TfrmINV;

implementation

{$R *.dfm}

procedure TfrmINV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Action :=caFree;
end;

end.
