unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TUFLogin = class(TForm)
    pnlPrincipal: TPanel;
    lblUsuario: TLabel;
    EdtUsuario: TEdit;
    lblSenha: TLabel;
    EdtSenha: TEdit;
    Image1: TImage;
    btnEntrar: TBitBtn;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UFLogin: TUFLogin;

implementation

uses
  UFPrincipal, UFunc, USingletonLogin, UDmImagens;

{$R *.dfm}

procedure TUFLogin.btnEntrarClick(Sender: TObject);
begin
  TSingletonLogin.Instance.GetAutenticacao(EdtUsuario.Text, EdtSenha.Text);

  TUFrmPrincipal.openForm;
end;

procedure TUFLogin.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TUFLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN: Perform(WM_NEXTDLGCTL,0,0);
    VK_ESCAPE: Close;
  end;
end;

end.
