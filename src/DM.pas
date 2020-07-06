unit DM;

interface

uses
  System.SysUtils, System.Classes, UniProvider, SQLiteUniProvider, Data.DB,
  DBAccess, Uni;

type
  TData = class(TDataModule)
    SQLite: TSQLiteUniProvider;
    DTCon: TUniConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Data: TData;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

uses INV;

procedure TData.DataModuleCreate(Sender: TObject);
begin
  DTCon.SpecificOptions.Values['ClientLibrary'] := gAppPath + '\sqlite3.dll' ;
  DTCon.Database := gAppPath + '\pos.db';
end;

end.
