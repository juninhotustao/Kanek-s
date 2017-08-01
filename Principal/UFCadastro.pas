unit UFCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, UController, Vcl.StdCtrls,
  Data.DB;

type
  TFCadastro = class(TForm)
    pnlRodape: TPanel;
    btnConfirma: TButton;
    pnlPrincipal: TPanel;
    DS: TDataSource;
    btnCancela: TButton;
    procedure btnCancelaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmaClick(Sender: TObject);
  protected
    FController: TController;
  public
    constructor Create(AOwner: TComponent; AController: TController); overload;
  end;

var
  FCadastro: TFCadastro;

implementation

uses
  UDmImagens;
{$R *.dfm}

procedure TFCadastro.btnCancelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFCadastro.btnConfirmaClick(Sender: TObject);
var
  ErrorMessage: string;
begin
  ErrorMessage := FController.IsFieldsValid(DS.DataSet);

  if ErrorMessage <> '' then
  begin
    MessageDlg(ErrorMessage, mtWarning, [mbOK], 0);
    Exit;
  end;

  try
    FController.Post;
  except
    on E: Exception do
      MessageDlg(
        Format('Ocorreu um erro e não foi possível salvar'#13#10'%s', [E.Message]),
        mtError, [mbOK], 0);
  end;

  Close;
end;

constructor TFCadastro.Create(AOwner: TComponent; AController: TController);
begin
  inherited Create(AOwner);
  FController := AController;
end;

procedure TFCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FController.State in [dsInsert, dsEdit] then
    FController.Cancel;
  //
end;

procedure TFCadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN: Perform(WM_NEXTDLGCTL,0,0);
    VK_ESCAPE: Close;
  end;
end;

end.
