unit UFPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TUFrmPrincipal = class(TForm)
    pnlPrincipal: TPanel;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Movimentaes1: TMenuItem;
    Clientes: TMenuItem;
    Produtos: TMenuItem;
    Fornecedores: TMenuItem;
    Venda: TMenuItem;
    Unidades: TMenuItem;
    procedure ClientesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ProdutosClick(Sender: TObject);
    procedure FornecedoresClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure VendaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UnidadesClick(Sender: TObject);
  private
    { Private declarations }
  public
    class procedure openForm;
  end;

var
  UFrmPrincipal: TUFrmPrincipal;

implementation

uses
  UFConsultaClientes, UDmImagens, UFConsultaProduto, UFConsultaFornecedor, ULogin,
  UFunc, UFDav, UFConsultaUnidade, UFConsultaDav;
{$R *.dfm}

procedure TUFrmPrincipal.ClientesClick(Sender: TObject);
begin
  TFunc.CriaForm(TFConsultaClientes);
end;

procedure TUFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TUFrmPrincipal.FormShow(Sender: TObject);
begin
  Self.WindowState := wsMaximized;
end;

procedure TUFrmPrincipal.FornecedoresClick(Sender: TObject);
begin
  TFunc.CriaForm(TFConsultaFornecedor);
end;

class procedure TUFrmPrincipal.openForm;
begin
  with TUFrmPrincipal.Create(nil) do
  try
    ShowModal;

  finally
    UFrmPrincipal.Free;
  end;
end;

procedure TUFrmPrincipal.ProdutosClick(Sender: TObject);
begin
  TFunc.CriaForm(TFConsultaProduto);
end;

procedure TUFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TUFrmPrincipal.UnidadesClick(Sender: TObject);
begin
  TFunc.CriaForm(TFConsultaUnidade);
end;

procedure TUFrmPrincipal.VendaClick(Sender: TObject);
begin
//  TFunc.CriaForm(TFDav);
  TFunc.CriaForm(TFConsultaDav);
end;

end.
