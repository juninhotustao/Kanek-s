unit U_PesqCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PesqBase, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  Tfrm_PesqCliente = class(Tfrm_PesqBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_PesqCliente: Tfrm_PesqCliente;

implementation

{$R *.dfm}

end.
