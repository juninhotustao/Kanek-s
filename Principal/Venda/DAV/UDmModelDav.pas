unit UDmModelDav;

interface

uses
  System.SysUtils, System.Classes, UDmModelVenda, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TDmModelDav = class(TDmModelVenda)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmModelDav: TDmModelDav;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
