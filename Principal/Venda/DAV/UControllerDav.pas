unit UControllerDav;

interface

uses
  UController, DB, Forms, SysUtils, DBClient;

type
  TControllerDav = class(TController)
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

//    function Filter(const AParams: array of const): TFilterProduto;
    function NumeroVenId: integer;
    function ValidaCabecalho: boolean;

    procedure PostItem;
    procedure CancelItem;
    procedure OpenItem;
    procedure InsertItem;
    procedure EditItem;
    procedure DeleteItem;
    procedure CloseItem;
    function IsEmptyItem: boolean;
    function ActiveItem: boolean;
    function StateItem: TDataSetState;

    constructor create;
    destructor destroy; override;
  protected
    procedure SearchByParams(const AParams: array of Variant); overload;
  end;

implementation

uses
  UDmModelDav, UDmCon, VarRecs, UFDav;

{ TControllerProdutoInventario }

function TControllerDav.Active: boolean;
begin
  Result := DmModelDav.CDS.Active;
end;

function TControllerDav.ActiveItem: boolean;
begin
  Result := DmModelDav.CDSItem.Active;
end;

procedure TControllerDav.Cancel;
begin
  DmModelDav.CDS.Cancel;
end;

procedure TControllerDav.CancelItem;
begin
  DmModelDav.CDSItem.Cancel;
end;

procedure TControllerDav.Close;
begin
  DmModelDav.CDS.Close;
end;

procedure TControllerDav.CloseItem;
begin
  DmModelDav.CDSItem.Close;
end;

constructor TControllerDav.create;
begin
  if not Assigned(DmModelDav) then
    DmModelDav := TDmModelDav.Create(nil);

end;

procedure TControllerDav.Delete;
begin
  try
    DmModelDav.CDS.Delete;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

procedure TControllerDav.DeleteItem;
begin
  try
    DmModelDav.CDSItem.Delete;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

destructor TControllerDav.destroy;
begin
  FreeAndNil(DmModelDav);
end;

procedure TControllerDav.Edit;
begin
  try
    DmModelDav.CDS.Edit;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

procedure TControllerDav.EditItem;
begin
  try
    DmModelDav.CDSItem.Edit;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

//function TControllerDav.Filter(const AParams: array of const): TFilterProduto;
//const
//  SQLPRODUTO =
//    ' SELECT '+
//    '	  PRO_ID,	PRO_DATA_CADASTRO, PRO_REFERENCIA, '+
//    '	  PRO_EAN, PRO_DESCRICAO, PRO_ESTOQUE, PRO_PRECO_CUSTO, '+
//    '	  PRO_PRECO_CUSTO_REAL, PRO_PRECO_MEDIO_COMPRA, '+
//    '	  PRO_PRECO_VENDA '+
//    ' FROM '+
//    '	  PRODUTOS '+
//    'WHERE '+
//    '  ISNULL(PRO_EAN,'''') LIKE :EAN OR PRO_REFERENCIA LIKE :REF';
//var
//  Parametro: array of Variant;
//  i: Integer;
//  ObjFilterProduto: TFilterProduto;
//begin
//  { 1º Parametro (inteiro) : 0 - EAN OU REFERENCIA }
//
//  SetLength(Parametro, 1);
//
//  Parametro[0] := string(AParams[0].VAnsiString);
//
//  with TClientDataSet.Create(nil) do
//  try
//    Data := dmCon.GetData(SQLPRODUTO, [Parametro[0], Parametro[0]]);
//
//    ObjFilterProduto.Referencia := FieldByName('PRO_REFERENCIA').AsString;
//    ObjFilterProduto.Descricao  := FieldByName('PRO_DESCRICAO').AsString;
////  ObjFilterProduto.Unidade    := FieldByName('').AsString;
//    ObjFilterProduto.VlrUnit    := FieldByName('PRO_PRECO_VENDA').AsFloat;
//
//    if IsEmpty then
//    begin
//      Exception.Create('Não foi encontrado produto na pesquisa.');
//      ObjFilterProduto.Referencia := '...';
//      ObjFilterProduto.Descricao  := '...';
////  ObjFilterProduto.Unidade    := '...';
//      ObjFilterProduto.VlrUnit    := 0;
//    end;
//
//  finally
//    Free;
//  end;
//
//  Result := ObjFilterProduto;
//end;

procedure TControllerDav.Insert;
begin
  try
    DmModelDav.CDS.Insert;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

procedure TControllerDav.InsertItem;
begin
  try
    DmModelDav.CDSItem.Insert;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

function TControllerDav.IsEmpty: boolean;
begin
  Result := DmModelDav.CDS.IsEmpty;
end;

function TControllerDav.IsEmptyItem: boolean;
begin
  Result := DmModelDav.CDSItem.IsEmpty;
end;

function TControllerDav.NumeroVenId: integer;
const
  SQL =
    ' SELECT max(ven_id) from VENDA ';
begin
  Result := dmCon.OpenSQL(SQL, []);
end;

procedure TControllerDav.Open;
begin
  DmModelDav.CDS.Open;
end;

procedure TControllerDav.OpenItem;
begin
  DmModelDav.CDSItem.Open;
end;

procedure TControllerDav.Post;
begin
  if not (DmModelDav.CDS.State in [dsEdit, dsInsert]) then
    exit;

  try
    DmModelDav.CDS.Post;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

procedure TControllerDav.PostItem;
begin
  if not (DmModelDav.CDSItem.State in [dsEdit, dsInsert]) then
    exit;

  try
    DmModelDav.CDSItem.Post;
  except
      on E: Exception do
        if E.Message <> 'Operation aborted' then
          raise Exception.Create(E.Message);
  end;
end;

procedure TControllerDav.SearchByParams(const AParams: array of Variant);
var
  i: Integer;
begin
    if Active then
      Close;

    DmModelDav.CDS.FetchParams;

    for i := 0 to High(AParams) do
      DmModelDav.CDS.Params[i].Value := AParams[i];

    Open;
end;

function TControllerDav.State: TDataSetState;
begin
  Result := DmModelDav.CDS.State;
end;

function TControllerDav.StateItem: TDataSetState;
begin
  Result := DmModelDav.CDSItem.State;
end;

function TControllerDav.ValidaCabecalho: boolean;
begin
  Result := True;

  if DmModelDav.CDS.IsEmpty then
    Result := False;
end;

end.

