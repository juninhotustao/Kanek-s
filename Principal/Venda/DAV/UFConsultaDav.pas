unit UFConsultaDav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFConsulta, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, vcl.Wwdbdatetimepicker, UFrameCliente;

type
  TFConsultaDav = class(TFConsulta)
    groupPesquisa: TGroupBox;
    btnPesquisar: TButton;
    FrameDavCliente: TFrameCliente;
    chkClientes: TCheckBox;
    lblNumero: TLabel;
    edtNumero: TEdit;
    dtInicial: TwwDBDateTimePicker;
    dtFinal: TwwDBDateTimePicker;
    lblDataInicial: TLabel;
    lblDataFinal: TLabel;
    chkNumero: TCheckBox;
    procedure FrameDavClientebtnPesqClienteClick(Sender: TObject);
    procedure chkClientesClick(Sender: TObject);
    procedure chkNumeroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    //
  end;

var
  FConsultaDav: TFConsultaDav;

implementation

{$R *.dfm}

uses UControllerDav, UDmModelDav;

procedure TFConsultaDav.btnPesquisarClick(Sender: TObject);
  const
    SQLPRODUTO =
      ' SELECT '+
      '   VEN_ID, VEN_DATA, VEN_TOTAL, CLI_ID, CLI_NOME '+
      ' FROM '+
      '	  VENDA V '+
      ' LEFT JOIN '+
      '   CLIENTES C ON V.CLI_ID = C.CLI_ID'+
      'WHERE '+
      '  CONVERT(VARCHAR(10), CLI_ID) LIKE :CLI_ID AND ' +
      '  CONVERT(VARCHAR(10), VEN_ID) LIKE :VEN_ID AND ' +
      '  VEN_DATA BETWEEN :DT_INICIAL AND DT_FINAL ';
begin
  { 0 - CLIENTE 1 - NUMERO DA VENDA  2 - DATA INICIAL  3 - DATA FINAL }

//parametros





  if not FController.Filter([FrameDavCliente.dbCodCliente.Text,
      edtNumero.Text, dtInicial.DateTime, dtFinal.DateTime
    ]) then
  begin
    MessageDlg('Não foi encontrado produto na pesquisa.', mtWarning, [mbOK], 0);
    Abort;
  end
  else
    Grid.SetFocus;
end;

procedure TFConsultaDav.chkClientesClick(Sender: TObject);
begin
  FrameDavCliente.Enabled := chkClientes.Checked = False;

end;

procedure TFConsultaDav.chkNumeroClick(Sender: TObject);
begin
  lblNumero.Enabled := chkNumero.Checked = False;
  edtNumero.Enabled := chkNumero.Checked = False;
end;

procedure TFConsultaDav.FormCreate(Sender: TObject);
begin
  dtInicial.DateTime := Date+Time;
  dtFinal.DateTime   := Date+7+Time;
end;

procedure TFConsultaDav.FrameDavClientebtnPesqClienteClick(Sender: TObject);
begin
  inherited;
  FrameDavCliente.btnPesqClienteClick(Sender);

end;

end.
