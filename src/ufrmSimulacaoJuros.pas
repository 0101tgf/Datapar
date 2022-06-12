unit ufrmSimulacaoJuros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmSimulacaoJuros = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSimulacaoJuros: TfrmSimulacaoJuros;

implementation

{$R *.dfm}

uses ufrmPrincipal;

procedure TfrmSimulacaoJuros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  {Limpar o formulario da memoria ao fecha-lo..}
  Action := TCloseAction.caFree;
  frmSimulacaoJuros := nil;
  {Fim}
  frmPrincipal.pVerificarFormAberto;
end;

end.