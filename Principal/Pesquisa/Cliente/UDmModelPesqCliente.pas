unit UDmModelPesqCliente;

interface

uses
  System.SysUtils, System.Classes, UDmModel, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TDmModelPesqCliente = class(TDmModel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmModelPesqCliente: TDmModelPesqCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
