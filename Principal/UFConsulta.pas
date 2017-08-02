unit UFConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
  Vcl.CategoryButtons, Vcl.ExtCtrls, Vcl.StdCtrls, UController, Data.DB,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.DBCtrls, UFCadastro;

type
  TCadBase = class of TFCadastro;

  TFConsulta = class(TForm)
    pnlGrid: TPanel;
    Grid: TDBGrid;
    pnlConsulta: TPanel;
    pnlRodape: TPanel;
    BtnNovo: TButton;
    btnSair: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    DS: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
  protected
    FController: TController;
  public
    procedure CreateForm(AFrmClass: TCadBase);
  end;

var
  FConsulta: TFConsulta;

implementation

uses UDmImagens, UDmModel;

{$R *.dfm}

procedure TFConsulta.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFConsulta.CreateForm(AFrmClass: TCadBase);
begin
  with AFrmClass.Create(nil, FController) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then Close;
end;

end.
