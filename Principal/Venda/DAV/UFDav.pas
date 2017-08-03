unit UFDav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFVendaBase, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  vcl.Wwdbdatetimepicker, UFrameProduto, Vcl.Menus;

type
  TFDav = class(TFVendaBase)
    frameProdutoDav: TframeProduto;
    lblMenuItem: TLabel;
    Alterar: TMenuItem;
    Novo: TMenuItem;
    Excluir: TMenuItem;
    Cancelar: TMenuItem;
    btnNovoItem: TButton;
    btnAlterarItem: TButton;
    btnExcluirItem: TButton;
    btnCancelarItem: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure dbObservacaoExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure frameProdutoDavdbDescontoExit(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure btnAlterarItemClick(Sender: TObject);
    procedure btnExcluirItemClick(Sender: TObject);
    procedure btnCancelarItemClick(Sender: TObject);
    procedure frameProdutoDavdbReferenciaExit(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SalvarItem;
  end;

var
  FDav: TFDav;

implementation

{$R *.dfm}

uses UControllerDav, UDmModelDav;

procedure TFDav.btnAlterarClick(Sender: TObject);
begin
  FController.Edit;

  gpCliente.Enabled := True;
  dbIdCliente.Field.FocusControl;
end;

procedure TFDav.btnAlterarItemClick(Sender: TObject);
begin
  TControllerDav(FController).EditItem;

  frameProdutoDav.Enabled := True;
end;

procedure TFDav.btnCancelarItemClick(Sender: TObject);
begin
  TControllerDav(FController).CancelItem;

  frameProdutoDav.Enabled := False;
end;

procedure TFDav.btnExcluirClick(Sender: TObject);
begin
  if FController.IsEmpty then
  begin
    MessageDlg('Não há registro para excluir!', mtInformation, [mbOK], 0);
    Abort;
  end;

  if MessageDlg('Deseja realmente excluir este registro?', mtInformation, mbYesNo, 0,mbNo) = IDYES then
  try
    FController.Delete;
  except
    on E: Exception do
      raise Exception.Create(E.Message);
  end;
end;

procedure TFDav.btnExcluirItemClick(Sender: TObject);
begin
  TControllerDav(FController).DeleteItem;
end;

procedure TFDav.BtnNovoClick(Sender: TObject);
begin
  FController.Close;
  FController.Open;
  FController.Insert;

  gpCliente.Enabled := True;

  dtDataVenda.Field.AsDateTime := Date + Time;
  dbIdCliente.SetFocus;
end;

procedure TFDav.btnNovoItemClick(Sender: TObject);
begin
  if not TControllerDav(FController).ValidaCabecalho then
  begin
    Application.MessageBox('Cadastre primeiro o cabeçalho da Venda!', PChar
      (Application.Title), MB_ICONINFORMATION);
    Abort;
  end;

  TControllerDav(FController).OpenItem(DS.DataSet.FieldByName('VEN_ID').AsInteger);
  TControllerDav(FController).InsertItem;

  frameProdutoDav.Enabled := True;
  frameProdutoDav.dbReferencia.Text        := '';
  frameProdutoDav.dbDescricaoProduto.Text  := '';
  frameProdutoDav.dbReferencia.SetFocus;
end;

procedure TFDav.btnSalvarClick(Sender: TObject);
begin
  FController.Post;

  with FController as TControllerDav do
    dbNumVenda.Text := IntToStr(NumeroVenId);

  gpCliente.Enabled := False;
  Grid.SetFocus;
end;

procedure TFDav.dbObservacaoExit(Sender: TObject);
begin
  btnSalvarClick(Sender);
end;

procedure TFDav.FormCreate(Sender: TObject);
begin
  FController := TControllerDav.Create;

end;

procedure TFDav.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FController);
end;

procedure TFDav.frameProdutoDavdbDescontoExit(Sender: TObject);
begin
  inherited;
  frameProdutoDav.dbDescontoExit(Sender);

  if (Trim(frameProdutoDav.dbReferencia.Text) = '') and (DsItem.State = dsInsert) then
    Exit;

  SalvarItem;
end;

procedure TFDav.frameProdutoDavdbReferenciaExit(Sender: TObject);
begin
  inherited;
  frameProdutoDav.dbReferenciaExit(Sender);

  DmModelDav.CDSItemPRO_ID.AsInteger       := frameProdutoDav.ProId;
end;

procedure TFDav.NovoClick(Sender: TObject);
begin
  btnNovoItemClick(Sender);
end;

procedure TFDav.SalvarItem;
begin
  TControllerDav(FController).PostItem;

  frameProdutoDav.dbReferencia.Clear;
  frameProdutoDav.dbDescricaoProduto.Clear;
  frameProdutoDav.dbUnidade.Clear;
  frameProdutoDav.dbQuantidade.Clear;
  frameProdutoDav.dbVlrVenda.Clear;
  frameProdutoDav.dbDesconto.Clear;
  frameProdutoDav.dbTotalItem.Clear;

  frameProdutoDav.Enabled := False;
  Grid.SetFocus;
end;

end.
