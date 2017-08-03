program kaneks;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  UController in 'UController.pas',
  UDmCon in 'UDmCon.pas' {dmCon: TDataModule},
  UDmModel in 'UDmModel.pas' {DmModel: TDataModule},
  UFCadastro in 'UFCadastro.pas' {FCadastro},
  UFConsulta in 'UFConsulta.pas' {FConsulta},
  UControllerProduto in 'Cadastro\Produtos\UControllerProduto.pas',
  U_PesqProduto in 'Pesquisa\Produto\U_PesqProduto.pas',
  UControllerPesqProduto in 'Pesquisa\Produto\UControllerPesqProduto.pas',
  UDmModelPesqProduto in 'Pesquisa\Produto\UDmModelPesqProduto.pas' {DmModelPesqProduto: TDataModule},
  U_PesqBase in 'Pesquisa\U_PesqBase.pas' {frm_PesqBase},
  VarRecs in 'VarRecs.pas',
  UDmModelProduto in 'Cadastro\Produtos\UDmModelProduto.pas' {DmModelProduto: TDataModule},
  UFCadastroProduto in 'Cadastro\Produtos\UFCadastroProduto.pas',
  UFConsultaProduto in 'Cadastro\Produtos\UFConsultaProduto.pas',
  UDmModelClientes in 'Cadastro\Clientes\UDmModelClientes.pas' {DmModelClientes: TDataModule},
  UCtrlClientes in 'Cadastro\Clientes\UCtrlClientes.pas',
  UFCadastroClientes in 'Cadastro\Clientes\UFCadastroClientes.pas' {FCadastroClientes},
  UFConsultaClientes in 'Cadastro\Clientes\UFConsultaClientes.pas' {FConsultaClientes},
  UFPrincipal in 'UFPrincipal.pas' {UFrmPrincipal},
  UDmImagens in 'UDmImagens.pas' {DmImagens: TDataModule},
  UDmModelFornecedor in 'Cadastro\Fornecedor\UDmModelFornecedor.pas' {DmModelFornecedor: TDataModule},
  UFCadastroFornecedor in 'Cadastro\Fornecedor\UFCadastroFornecedor.pas' {FCadastroFornecedor},
  UFConsultaFornecedor in 'Cadastro\Fornecedor\UFConsultaFornecedor.pas' {FConsultaFornecedor},
  UFunc in 'UFunc.pas',
  UCtrlFornecedor in 'Cadastro\Fornecedor\UCtrlFornecedor.pas',
  ULogin in 'Login\ULogin.pas' {UFLogin},
  USingletonLogin in 'Login\USingletonLogin.pas',
  UDmModelVenda in 'Venda\UDmModelVenda.pas' {DmModelVenda: TDataModule},
  UControllerVenda in 'Venda\UControllerVenda.pas' {$R *.res},
  UFVendaBase in 'Venda\UFVendaBase.pas' {FVendaBase},
  UFDav in 'Venda\DAV\UFDav.pas' {FDav},
  UControllerDav in 'Venda\DAV\UControllerDav.pas',
  UDmModelDav in 'Venda\DAV\UDmModelDav.pas' {DmModelDav: TDataModule},
  UFrameProduto in 'Frames\Produto\UFrameProduto.pas' {frameProduto: TFrame},
  UDmModelPesqCliente in 'Pesquisa\Cliente\UDmModelPesqCliente.pas' {DmModelPesqCliente: TDataModule},
  U_PesqCliente in 'Pesquisa\Cliente\U_PesqCliente.pas' {frm_PesqCliente},
  UControllerPesqCliente in 'Pesquisa\Cliente\UControllerPesqCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Slate Classico');
  Application.CreateForm(TdmCon, dmCon);
  Application.CreateForm(TDmImagens, DmImagens);
  Application.CreateForm(TUFLogin, UFLogin);
  Application.Run;
end.
