unit UFDav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFVendaBase, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  vcl.Wwdbdatetimepicker, UFrameProduto;

type
  TFDav = class(TFVendaBase)
    frameProdutoDav: TframeProduto;
    procedure FormCreate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure frameProdutoDavedtReferenciaExit(Sender: TObject);
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

procedure TFDav.BtnNovoClick(Sender: TObject);
begin
  inherited;

  FController.Open;
  FController.Insert;
//  dtDataVenda.Field.AsDateTime := Date + Time;
end;

procedure TFDav.FormCreate(Sender: TObject);
begin
  FController := TControllerDav.Create;

  inherited;
end;

procedure TFDav.frameProdutoDavedtReferenciaExit(Sender: TObject);
begin
  TControllerDav(FController).OpenItem;
  TControllerDav(FController).InsertItem;

  inherited;

  frameProdutoDav.edtReferenciaExit(Sender);
end;

end.
