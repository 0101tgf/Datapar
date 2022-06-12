program Datapar;

uses
  Vcl.Forms,
  ufrmPrincipal in 'src\ufrmPrincipal.pas' {frmPrincipal},
  ufrmLogin in 'src\ufrmLogin.pas' {frmLogin},
  cUser in 'src\Classes\cUser.pas',
  uDm in 'src\uDm.pas' {dm: TDataModule},
  ufrmClientes in 'src\ufrmClientes.pas' {frmClientes};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
