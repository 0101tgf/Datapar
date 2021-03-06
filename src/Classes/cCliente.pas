unit cCliente;

interface

uses System.Classes,
     System.SysUtils,
     FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
     FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
     FireDAC.Phys, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
     FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
     FireDAC.Comp.Client;

type
  TCliente = Class
    private
    FCpf_Cnpj: string;
    FCodEmp: integer;
    FAtivo: String;
    FCodigo: integer;
    FNome: string;
    FConexao: TFDConnection;

    public
    property Conexao: TFDConnection read FConexao write FConexao;
    property CodEmp: integer read FCodEmp write FCodEmp;
    property Codigo: integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Cpf_Cnpj: string read FCpf_Cnpj write FCpf_Cnpj;
    property Ativo: String read FAtivo write FAtivo;
    constructor Create(AConexao:TFDConnection);
    destructor Destroy; override;
    function fConsultaCliente(ANome:String;out ARetorno:String;out AQry : TFDQuery):Boolean;
    function fExcluirCliente(ACodigo: Integer; out ARetorno:String):Boolean;
    function fGeraNumeroCliente:Boolean;
    function fSalvarCliente(out ARetorno:String):Boolean;
End;

implementation

{ TCliente }

{$region 'CONSTRUTOR E DESTRUIDOR'}
constructor TCliente.Create(AConexao: TFDConnection);
begin
 Conexao := AConexao;
end;

destructor TCliente.Destroy;
begin
  inherited;
end;

{$endregion}

{$region 'METODOS'}
function TCliente.fConsultaCliente(ANome:String;out ARetorno:String;
out AQry : TFDQuery):Boolean;
begin

  Result := false;

  if Trim(ANome).IsEmpty then
  begin
    ARetorno := 'Por favor, informe o nome do cliente..';
    exit;
  end;

  try

    AQry.Connection := Conexao;
    AQry.SQL.Add('select * from TAB_CLIENTES where CodEmp = :CodEmp and Ativo = :Ativo and Nome like UPPER(:Nome)');
    AQry.ParamByName('CodEmp').AsInteger := CodEmp;
    AQry.ParamByName('Ativo').AsString := 'S';
    AQry.ParamByName('Nome').AsString :=  '%'+ANome.ToUpper+'%';
    AQry.Active := true;

    if AQry.RecordCount = 0 then
    begin
      ARetorno := 'Nenhum cliente encontrado..';
      exit;
    end
    else if AQry.RecordCount > 0 then
    begin
      Result := true;
      ARetorno := '';
    end;

  except
  ARetorno := 'Falha ao consultar clientes, solicite suporte..';
  Result := false;
  end;

end;

function TCliente.fExcluirCliente(ACodigo: Integer; out ARetorno: String): Boolean;
var
  qry : TFDQuery;
begin

  Result := false;

  qry := TFDQuery.Create(Nil);
  try

    qry.Active := false;
    qry.SQL.clear;
    qry.Connection := Conexao;
    qry.SQL.Add('delete from TAB_CLIENTES where CodEmp = :CodEmp and Codigo = :Codigo');
    qry.ParamByName('CodEmp').AsInteger := CodEmp;
    qry.ParamByName('Codigo').AsInteger := ACodigo;
    qry.ExecSQL;

    if qry.RowsAffected = 1 then
    begin
      ARetorno := 'Cliente deletado com sucesso..';
      Result := true;
    end
    else
    begin
      ARetorno := 'Falha ao excluir cliente, solicite suporte..';
    end;

  finally
  qry.DisposeOf;
  end;

end;

function TCliente.fGeraNumeroCliente: Boolean;
var
  Qry : TFDQuery;
begin

  Result := false;

  Qry := TFDQuery.Create(nil);
  Qry.Connection := Conexao;
  try

    Qry.Active := false;
    Qry.SQL.clear;
    Qry.SQL.Add('select * from sqlite_sequence where name = ''TAB_CLIENTES'' ');
    Qry.Active := true;

    if Qry.RecordCount > 0 then
    begin
    Codigo := Qry.FieldByName('seq').AsInteger+1;
    Result := true;
    end
    else if Qry.RecordCount = 0 then
    begin
    Codigo := 1;
    Result := true;
    end;

  finally
  Qry.DisposeOf;
  end;

end;

function TCliente.fSalvarCliente(out ARetorno: String): Boolean;
var
  qry : TFDQuery;
begin

   Result := false;

   qry := TFDQuery.Create(Nil);
   try

    qry.Connection := Conexao;
    qry.Active := false;
    qry.SQL.Clear;
    qry.SQL.Add('insert into TAB_CLIENTES(CodEmp,Codigo,Nome,Cpf_Cnpj,Ativo) ');
    qry.SQL.Add('values (:CodEmp,:Codigo,:Nome,:Cpf_Cnpj,:Ativo)');
    qry.SQL.Add('ON CONFLICT(Codigo) DO UPDATE SET ');
    qry.SQL.Add('Nome=:Nome, Cpf_Cnpj=:Cpf_Cnpj');
    qry.ParamByName('CodEmp').AsInteger := CodEmp;
    qry.ParamByName('Codigo').AsInteger := Codigo;
    qry.ParamByName('Nome').AsString := Nome;
    qry.ParamByName('Cpf_Cnpj').AsString := Cpf_Cnpj;
    qry.ParamByName('Ativo').AsString := 'S';
    qry.ExecSQL;

      if qry.RowsAffected = 0 then
      begin
        ARetorno := 'Falha ao cadastrar cliente solicite suporte..';
      end
      else if qry.RowsAffected > 0 then
     begin
        ARetorno := 'Cliente cadastrado com sucesso..';
        Result := true;
     end;

   finally
   qry.DisposeOf;
   end;

end;

{$endregion}

end.
