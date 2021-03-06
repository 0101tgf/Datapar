unit ufrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmClientes = class(TForm)
    pnl_Botom: TPanel;
    Panel_Botoes: TPanel;
    Panel6: TPanel;
    btn_Novo: TSpeedButton;
    Panel2: TPanel;
    btn_Cancelar: TSpeedButton;
    Panel4: TPanel;
    btn_Salvar: TSpeedButton;
    Panel7: TPanel;
    SpeedButton_Pesquisar: TSpeedButton;
    Panel8: TPanel;
    SpeedButton_Excluir: TSpeedButton;
    Panel1: TPanel;
    btn_Fechar: TSpeedButton;
    Panel3: TPanel;
    PageControl_Cad: TPageControl;
    TabSheet_Cadastro: TTabSheet;
    TabSheet2: TTabSheet;
    Panel_Top: TPanel;
    lbl_Titulo: TLabel;
    pnl_barra: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Panel9: TPanel;
    edt_CodCliente: TEdit;
    Label2: TLabel;
    edt_NomeCliente: TEdit;
    Label3: TLabel;
    Edit_CPFCNPJ: TEdit;
    Label4: TLabel;
    edt_ConsultaCliente: TEdit;
    dbg_registrosCab: TDBGrid;
    qry_Consulta: TFDQuery;
    ds_Consulta: TDataSource;
    qry_Cadastro: TFDQuery;
    btn_ConCliente: TSpeedButton;
    qry_ConsultaCodEmp: TIntegerField;
    qry_ConsultaCodigo: TFDAutoIncField;
    qry_ConsultaNome: TStringField;
    qry_ConsultaCpf_Cnpj: TStringField;
    qry_ConsultaAtivo: TStringField;
    qry_CadastroCodEmp: TIntegerField;
    qry_CadastroCodigo: TFDAutoIncField;
    qry_CadastroNome: TStringField;
    qry_CadastroCpf_Cnpj: TStringField;
    qry_CadastroAtivo: TStringField;
    pnl_Cadastro: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_FecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton_PesquisarClick(Sender: TObject);
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure edt_ConsultaClienteKeyPress(Sender: TObject; var Key: Char);
    procedure btn_ConClienteClick(Sender: TObject);
    procedure SpeedButton_ExcluirClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure dbg_registrosCabDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure pLimparCampos;
    function fValidaCamposObrigatorios:Boolean;
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses ufrmPrincipal, cCliente, uDm;

procedure TfrmClientes.btn_CancelarClick(Sender: TObject);
begin
pLimparCampos;
PageControl_Cad.TabIndex := 0;
pnl_Cadastro.Enabled := false;
qry_Consulta.Active := false;
qry_Cadastro.Active := false;
end;

procedure TfrmClientes.btn_ConClienteClick(Sender: TObject);
var
  Ocliente : TCliente;
  LRetorno : String;
begin

  Ocliente := TCliente.Create(dm.Conexao);
  try

    qry_Consulta.Active := false;
    qry_Consulta.SQL.clear;
    Ocliente.CodEmp := frmPrincipal.vCodEmpLogado;

    if not (Ocliente.fConsultaCliente(edt_ConsultaCliente.Text,LRetorno,qry_Consulta)) then
    begin
    ShowMessage(LRetorno);
    end;

  finally
  oCliente.DisposeOf;
  end;

end;

procedure TfrmClientes.btn_FecharClick(Sender: TObject);
begin
  frmClientes.close;
end;

procedure TfrmClientes.btn_NovoClick(Sender: TObject);
var
  oCliente : TCliente;
begin

  pLimparCampos;
  PageControl_Cad.TabIndex := 0;

  oCliente := TCliente.Create(dm.Conexao);
  try


    if oCliente.fGeraNumeroCliente then
    begin
      pnl_Cadastro.Enabled := true;
      edt_CodCliente.Text := oCliente.Codigo.ToString;
      edt_NomeCliente.SetFocus;
    end
    else
    begin
      ShowMessage('Falha ao gerar codigo do cliente..');
      btn_CancelarClick(Self);
    end;

  finally
  oCliente.DisposeOf;
  end;

end;

procedure TfrmClientes.btn_SalvarClick(Sender: TObject);
var
  oCliente : TCliente;
  LRetorno : String;
begin

  if not fValidaCamposObrigatorios then
  begin
    ShowMessage('Por favor, preencha todos os campos..');
    exit;
  end;

  oCliente := TCliente.Create(dm.Conexao);
  try

    oCliente.CodEmp := frmPrincipal.vCodEmpLogado;
    oCliente.Nome := edt_NomeCliente.Text;
    oCliente.Cpf_Cnpj := Edit_CPFCNPJ.Text;
    oCliente.Codigo := StrToInt(edt_CodCliente.Text);
    oCliente.Ativo := 'S';

    if not (oCliente.fSalvarCliente(LRetorno)) then
    begin
      ShowMessage(LRetorno);
      btn_CancelarClick(Sender);
    end
    else
    begin
      ShowMessage(LRetorno);
      btn_NovoClick(Sender);
    end;

  finally
  oCliente.DisposeOf;
  end;

end;

procedure TfrmClientes.dbg_registrosCabDblClick(Sender: TObject);
begin

  if qry_Consulta.RecordCount = 0 then
  begin
    exit;
  end;

  pLimparCampos;
  edt_CodCliente.Text := qry_Consulta.FieldByName('Codigo').AsString;
  edt_NomeCliente.Text := qry_Consulta.FieldByName('Nome').AsString;
  Edit_CPFCNPJ.Text := qry_Consulta.FieldByName('Cpf_Cnpj').AsString;
  pnl_Cadastro.Enabled := true;
  PageControl_Cad.TabIndex := 0;

end;

procedure TfrmClientes.edt_ConsultaClienteKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 then
  begin
    btn_ConClienteClick(Sender);
  end;

end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Limpar o formulario da memoria ao fecha-lo..}
  Action := TCloseAction.caFree;
  frmClientes := nil;
  {Fim}
  frmPrincipal.pVerificarFormAberto;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
  PageControl_Cad.TabIndex := 0;
  btn_NovoClick(Sender);
end;

function TfrmClientes.fValidaCamposObrigatorios: Boolean;
begin

  Result := false;

  if Trim(edt_CodCliente.Text) = EmptyStr then
  begin
    Exit;
  end;

  if Trim(edt_NomeCliente.Text) = EmptyStr then
  begin
    exit;
  end;

  if Trim(Edit_CPFCNPJ.Text) = EmptyStr then
  begin
    exit;
  end;

  Result := true;

end;

procedure TfrmClientes.pLimparCampos;
begin
edt_ConsultaCliente.Text := '';
edt_CodCliente.Text := '';
edt_NomeCliente.Text := '';
Edit_CPFCNPJ.Text := '';
end;

procedure TfrmClientes.SpeedButton_ExcluirClick(Sender: TObject);
var
  oCliente : TCliente;
  LRetorno : String;
begin

  PageControl_Cad.TabIndex := 1;

  if qry_Consulta.RecordCount = 0 then
  begin
    ShowMessage('Por favor, primeiro pesquise o cliente que voc? quer excluir..');
    edt_ConsultaCliente.SetFocus;
    exit;
  end;

  oCliente := TCliente.Create(dm.Conexao);
  try

    oCliente.CodEmp := frmPrincipal.vCodEmpLogado;

    if not (oCliente.fExcluirCliente(qry_Consulta.FieldByName('Codigo').AsInteger,LRetorno)) then
    begin
    ShowMessage(LRetorno);
    end
    else
    begin
    ShowMessage(LRetorno);
    qry_Consulta.Refresh;
    end;

  finally
  oCliente.DisposeOf;
  end;

end;

procedure TfrmClientes.SpeedButton_PesquisarClick(Sender: TObject);
begin
  PageControl_Cad.TabIndex := 1;
  edt_ConsultaCliente.SetFocus;

  if qry_Consulta.RecordCount > 0 then
  begin
    qry_Consulta.Refresh;
  end;

end;

end.
