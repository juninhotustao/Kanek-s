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
    procedure FormCreate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure frameProdutoDavedtReferenciaExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dtDataVendaExit(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDav: TFDav;

implementation

{$R *.dfm}

uses UControllerDav, UDmModelDav;

procedure TFDav.btnAlterarClick(Sender: TObject);
begin
  inherited;
  gpCliente.Enabled := True;
end;

procedure TFDav.BtnNovoClick(Sender: TObject);
begin
  FController.Open;
  FController.Insert;

  gpCliente.Enabled := True;

  dtDataVenda.Field.AsDateTime := Date + Time;
  dbIdCliente.SetFocus;
end;

procedure TFDav.btnSalvarClick(Sender: TObject);
begin
  FController.Post;

  with FController as TControllerDav do
    dbNumVenda.Text := IntToStr(NumeroVenId);

  gpCliente.Enabled := False;
end;

procedure TFDav.dtDataVendaExit(Sender: TObject);
begin
  btnSalvarClick(Sender);
end;

procedure TFDav.FormCreate(Sender: TObject);
begin
  FController := TControllerDav.Create;

end;

procedure TFDav.frameProdutoDavedtReferenciaExit(Sender: TObject);
begin
//  if not TControllerDav(FController).ValidaCabecalho then
//  begin
//    Application.MessageBox('Cadastre primeiro o cabeçalho da Venda!', PChar
//      (Application.Title), MB_ICONINFORMATION);
//    Abort;
//  end;

//  TControllerDav(FController).OpenItem;
//  TControllerDav(FController).InsertItem;

  inherited;

  frameProdutoDav.edtReferenciaExit(Sender);
end;

procedure TFDav.NovoClick(Sender: TObject);
begin
  if not TControllerDav(FController).ValidaCabecalho then
  begin
    Application.MessageBox('Cadastre primeiro o cabeçalho da Venda!', PChar
      (Application.Title), MB_ICONINFORMATION);
    Abort;
  end;

  TControllerDav(FController).OpenItem;
  TControllerDav(FController).InsertItem;

  frameProdutoDav.Enabled := True;
end;

end.
