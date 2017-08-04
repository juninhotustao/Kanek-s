unit UControllerUnidade;

interface

uses
  UController, DB, Forms, SysUtils, DBClient;

type
  TControllerUnidade = class(TController)
  public
    procedure Post; override;
    procedure Cancel; override;
    procedure Open; override;
    procedure Insert; override;
    procedure Edit; override;
    procedure Delete; override;
    procedure Close; override;
    function IsEmpty: boolean; override;
    function Active: boolean; override;
    function State: TDataSetState; override;
    function Filter(const AParams: array of const): boolean; override;

    { Funções Exclusivas}
      //
    constructor create;
    destructor destroy; override;
  protected
    procedure SearchByParams(const AParams: array of Variant); overload;
  end;

implementation

uses
  UDmModelUnidade, UDmCon, VarRecs, UFCadastroUnidade;

{ TControllerProdutoInventario }

function TControllerUnidade.Active: boolean;
begin
  Result := DmModelUnidade.CDS.Active;
end;

procedure TControllerUnidade.Cancel;
begin
  DmModelUnidade.CDS.Cancel;
end;

procedure TControllerUnidade.Close;
begin
  DmModelUnidade.CDS.Close;
end;

constructor TControllerUnidade.create;
begin
  if not Assigned(DmModelUnidade) then
    DmModelUnidade := TDmModelUnidade.Create(nil);

end;

procedure TControllerUnidade.Delete;
begin
  try
    DmModelUnidade.CDS.Delete;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

destructor TControllerUnidade.destroy;
begin
  FreeAndNil(DmModelUnidade);
end;

procedure TControllerUnidade.Edit;
begin
  try
    DmModelUnidade.CDS.Edit;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

function TControllerUnidade.Filter(const AParams: array of const): boolean;
const
  SQL_UNIDADE =
    ' SELECT '+
    '	  UN_ID, UN_CODIGO, UN_DESCRICAO '+
    ' FROM '+
    '	  UNIDADE '+
    'WHERE '+
    '   UN_CODIGO LIKE :UN_CODIGO AND UN_DESCRICAO LIKE :UN_DESCRICAO ';

var
  Params: array of Variant;
  i: Integer;
begin
  Result := True;

  {1º Parametro (inteiro) : 0 - UN_CODIGO
                            1 - UN_DESCRICAO
   2º Parametro (String) : Texto da pesquisa}

  SetLength(Params, 2);

  for i := 0 to High(Params) do
    Params[i] := '%';

  case Integer(AParams[0].VAnsiString) of
    0: Params[0] := string(AParams[1].VAnsiString) + '%';
    1: Params[1] := string(AParams[1].VAnsiString) + '%';
  end;

  DmModelUnidade.DTS.CommandText := SQL_UNIDADE;

  SearchByParams(Params);

  if DmModelUnidade.CDS.IsEmpty then
    Result := False;
end;

procedure TControllerUnidade.Insert;
begin
  try
    DmModelUnidade.CDS.Insert;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

function TControllerUnidade.IsEmpty: boolean;
begin
  Result := DmModelUnidade.CDS.IsEmpty;
end;

procedure TControllerUnidade.Open;
begin
  DmModelUnidade.CDS.Open;
end;

procedure TControllerUnidade.Post;
begin
  if not (DmModelUnidade.CDS.State in [dsEdit, dsInsert]) then
    exit;

  try
    DmModelUnidade.CDS.Post;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

procedure TControllerUnidade.SearchByParams(const AParams: array of Variant);
var
  i: Integer;
begin
    if Active then
      Close;

    DmModelUnidade.CDS.FetchParams;

    for i := 0 to High(AParams) do
      DmModelUnidade.CDS.Params[i].Value := AParams[i];

    Open;
end;

function TControllerUnidade.State: TDataSetState;
begin
  Result := DmModelUnidade.CDS.State;
end;

end.
