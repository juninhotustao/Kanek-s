unit UFrameProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Buttons, DbClient;

type
  TframeProduto = class(TFrame)
    gpProduto: TGroupBox;
    lblDescProduto: TLabel;
    lblRefProduto: TLabel;
    lblQuantidade: TLabel;
    lblUnidade: TLabel;
    lblDescricaoValorUnit: TLabel;
    lblDesconto: TLabel;
    lblDescricaoValorTotal: TLabel;
    btnPesqProduto: TBitBtn;
    dbDesconto: TDBEdit;
    dbQuantidade: TDBEdit;
    dbTotalItem: TDBEdit;
    dbVlrVenda: TDBEdit;
    dbReferencia: TDBEdit;
    procedure edtReferenciaExit(Sender: TObject);
    procedure dbQuantidadeExit(Sender: TObject);
    procedure dbVlrVendaExit(Sender: TObject);
    procedure dbDescontoExit(Sender: TObject);
    procedure dbReferenciaExit(Sender: TObject);
  private
    FProId: Integer;
  public
    property ProId: integer read FProId write FProId;

    procedure CalculaValorTotalItem;

    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

uses UDmCon;

procedure TframeProduto.CalculaValorTotalItem;
begin
  dbTotalItem.Field.Value := (dbQuantidade.Field.Value * dbVlrVenda.Field.Value) - dbDesconto.Field.Value;
end;

constructor TframeProduto.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

end;

procedure TframeProduto.dbDescontoExit(Sender: TObject);
begin
  CalculaValorTotalItem;
end;

procedure TframeProduto.dbQuantidadeExit(Sender: TObject);
begin
  if dbQuantidade.Field.Value <= 0 then
    Exception.Create('A quantidade deve ser maior que 0!');

end;

procedure TframeProduto.dbReferenciaExit(Sender: TObject);
const
  SQLPRODUTO =
    ' SELECT '+
    '	  PRO_ID,	PRO_DATA_CADASTRO, PRO_REFERENCIA, '+
    '	  PRO_EAN, PRO_DESCRICAO, PRO_ESTOQUE, PRO_PRECO_CUSTO, '+
    '	  PRO_PRECO_CUSTO_REAL, PRO_PRECO_MEDIO_COMPRA, '+
    '	  PRO_PRECO_VENDA '+
    ' FROM '+
    '	  PRODUTOS '+
    'WHERE '+
    '  PRO_EAN LIKE :EAN OR PRO_REFERENCIA LIKE :REF';
begin
  if Trim(dbReferencia.Text) = '' then
    Exit;

  with TClientDataSet.Create(nil) do
  try
    Data := dmCon.GetData(SQLPRODUTO, [dbReferencia.Text,  dbReferencia.Text]);

    if IsEmpty then
    begin
      MessageBox(Handle, 'N�o foi encontrado produto na pesquisa.', 'ATEN��O!', MB_OK);
      Abort;
    end;

    FProId := FieldByName('PRO_ID').AsInteger;

    dbReferencia.Text          := FieldByName('PRO_REFERENCIA').AsString;
    lblDescProduto.Caption      := FieldByName('PRO_DESCRICAO').AsString;
    dbQuantidade.Field.AsFloat  := 1;
    lblUnidade.Caption          := 'UN';
    dbVlrVenda.Field.AsFloat    := FieldByName('PRO_PRECO_VENDA').Value;
    dbDesconto.Field.AsFloat    := 0;
    dbTotalItem.Field.AsFloat   := 0;

  finally
    Free;
  end;
end;

procedure TframeProduto.dbVlrVendaExit(Sender: TObject);
begin
  CalculaValorTotalItem;
end;

procedure TframeProduto.edtReferenciaExit(Sender: TObject);
const
  SQLPRODUTO =
    ' SELECT '+
    '	  PRO_ID,	PRO_DATA_CADASTRO, PRO_REFERENCIA, '+
    '	  PRO_EAN, PRO_DESCRICAO, PRO_ESTOQUE, PRO_PRECO_CUSTO, '+
    '	  PRO_PRECO_CUSTO_REAL, PRO_PRECO_MEDIO_COMPRA, '+
    '	  PRO_PRECO_VENDA '+
    ' FROM '+
    '	  PRODUTOS '+
    'WHERE '+
    '  PRO_EAN LIKE :EAN OR PRO_REFERENCIA LIKE :REF';
begin
  if Trim(dbReferencia.Text) = '' then
    Exit;

  with TClientDataSet.Create(nil) do
  try
    Data := dmCon.GetData(SQLPRODUTO, [dbReferencia.Text,  dbReferencia.Text]);

    if IsEmpty then
    begin
      MessageBox(Handle, 'N�o foi encontrado produto na pesquisa.', 'ATEN��O!', MB_OK);
      Abort;
    end;

    FProId := FieldByName('PRO_ID').AsInteger;

    dbReferencia.Text          := FieldByName('PRO_REFERENCIA').AsString;
    lblDescProduto.Caption      := FieldByName('PRO_DESCRICAO').AsString;
    dbQuantidade.Field.AsFloat  := 1;
    lblUnidade.Caption          := 'UN';
    dbVlrVenda.Field.AsFloat    := FieldByName('PRO_PRECO_VENDA').Value;
    dbDesconto.Field.AsFloat    := 0;
    dbTotalItem.Field.AsFloat   := 0;

  finally
    Free;
  end;

end;

end.
