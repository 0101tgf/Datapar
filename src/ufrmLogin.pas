unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmLogin = class(TForm)
    pnl_principal: TPanel;
    pnl_usuario: TPanel;
    edt_User: TEdit;
    pnl_senha: TPanel;
    edt_senha: TEdit;
    pnl_entrar: TPanel;
    btn_entrar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    Panel_Login: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_entrarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses cUser, uDm, ufrmPrincipal;

procedure TfrmLogin.btn_cancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.btn_entrarClick(Sender: TObject);
var
  oUsuario : TUser;
  LRetorno : String;
begin

  oUsuario := TUser.Create(dm.conexao);
  try

    oUsuario.CodEmp := frmPrincipal.vCodEmpLogado;

    if oUsuario.fFazerLogin(edt_User.Text,edt_senha.Text,LRetorno) then
    begin
    frmPrincipal.vCodigoUserLogado := oUsuario.Codigo;
    frmPrincipal.vNomeUserLogado := oUsuario.Nome;
    frmPrincipal.Caption := 'Datapar - Sistema de Amortiza??o Juros | Usu?rio: '+oUsuario.Nome+' | Data: '+DateToStr(Now);
    frmLogin.Close;
    end
    else
    begin
    ShowMessage(LRetorno);
    end;

  finally
  oUsuario.DisposeOf;
  end;

end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Limpar o formulario da memoria ao fecha-lo..}
  Action := TCloseAction.caFree;
  frmLogin := nil;
  {Fim}
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = VK_ESCAPE then
  begin
    Application.Terminate;
  end;

  if ((ssAlt in Shift) and (Key = VK_F4)) then
  begin
  Key := 0;
  end;

end;

end.
