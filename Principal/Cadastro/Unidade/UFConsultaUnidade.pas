unit UFConsultaUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFConsulta, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, UFCadastroUnidade;

type
  TFConsultaUnidade = class(TFConsulta)
    groupPesquisa: TGroupBox;
    lblPesquisar: TLabel;
    lblTipoPesquisa: TLabel;
    btnPesquisar: TButton;
    edtPesquisa: TEdit;
    Cmb_TipoPesquisa: TComboBox;
    procedure BtnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaUnidade: TFConsultaUnidade;

implementation

{$R *.dfm}

uses UControllerUnidade, UDmModelUnidade;

procedure TFConsultaUnidade.btnAlterarClick(Sender: TObject);
begin
  if FController.IsEmpty then
  begin
    MessageDlg('Não há registro para alterar!', mtInformation, [mbOK], 0);
    Abort;
  end;

  FController.Edit;
  CreateForm(TFCadastroUnidade);
  Grid.SetFocus;
end;

procedure TFConsultaUnidade.btnExcluirClick(Sender: TObject);
begin
  if FController.IsEmpty then
  begin
    MessageDlg('Não há registro para excluir!', mtInformation, [mbOK], 0);
    Abort;
  end;

  if MessageDlg('Deseja realmente excluir este registro?', mtInformation, mbYesNo, 0,mbNo) = IDYES then
  try
     FController.Delete;
     Grid.SetFocus;
  except
    on E: Exception do
      raise Exception.Create(E.Message);
  end;
end;

procedure TFConsultaUnidade.BtnNovoClick(Sender: TObject);
begin
  FController.Insert;
  CreateForm(TFCadastroUnidade);
  Grid.SetFocus;
end;

procedure TFConsultaUnidade.btnPesquisarClick(Sender: TObject);
begin
  if not FController.Filter([Cmb_TipoPesquisa.ItemIndex, edtPesquisa.Text]) then
  begin
    MessageDlg('Não foi encontrado Unidade na pesquisa.', mtWarning, [mbOK], 0);
    Abort;
  end
  else
    Grid.SetFocus;
end;

procedure TFConsultaUnidade.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
     btnPesquisarClick(Self);
end;

procedure TFConsultaUnidade.FormCreate(Sender: TObject);
begin
  FController := TControllerUnidade.Create;
  FController.Open;
end;

procedure TFConsultaUnidade.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FController);
end;

end.
