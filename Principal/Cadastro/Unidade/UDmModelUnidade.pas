unit UDmModelUnidade;

interface

uses
  System.SysUtils, System.Classes, UDmModel, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TDmModelUnidade = class(TDmModel)
    DTSUN_ID: TIntegerField;
    DTSUN_CODIGO: TStringField;
    DTSUN_DESCRICAO: TStringField;
    CDSUN_ID: TIntegerField;
    CDSUN_CODIGO: TStringField;
    CDSUN_DESCRICAO: TStringField;
    procedure DSPGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmModelUnidade: TDmModelUnidade;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmModelUnidade.DSPGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: string);
begin
  inherited;

  TableName := 'UNIDADE';
end;

end.
