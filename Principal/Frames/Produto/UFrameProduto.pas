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
    edtReferencia: TEdit;
    dbDesconto: TDBEdit;
    dbQuantidade: TDBEdit;
    dbTotalItem: TDBEdit;
    dbVlrVenda: TDBEdit;
    procedure edtReferenciaExit(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

uses UDmCon;

constructor TframeProduto.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

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
    '  ISNULL(PRO_EAN,'''') LIKE :EAN OR PRO_REFERENCIA LIKE :REF';
begin
  with TClientDataSet.Create(nil) do
  try
    Data := dmCon.GetData(SQLPRODUTO, [edtReferencia.Text,  edtReferencia.Text]);

    edtReferencia.Text       := FieldByName('PRO_REFERENCIA').AsString;
    lblDescProduto.Caption   := FieldByName('PRO_DESCRICAO').AsString;
    lblUnidade.Caption       := 'UN';
    dbVlrVenda.Field.AsFloat := FieldByName('PRO_PRECO_VENDA').Value;

    if IsEmpty then
    begin
      Exception.Create('Não foi encontrado produto na pesquisa.');
      edtReferencia.Text     := '';
      lblDescProduto.Caption := '...';
      lblUnidade.Caption     := '...';
    end;

  finally
    Free;
  end;

end;

end.
