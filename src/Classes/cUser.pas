unit cUser;

interface

uses System.Classes,
     System.SysUtils,
     FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
     FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
     FireDAC.Phys, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
     FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
     FireDAC.Comp.Client;

type
  TUser = Class
  private
    FConexao: TFDConnection;
    FCodEmp: integer;
    FCodigo: integer;
    FNome: string;
    FSenha: string;
    FAtivo: String;

  public
    property Conexao: TFDConnection read FConexao write FConexao;
    property CodEmp: integer read FCodEmp write FCodEmp;
    property Codigo: integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Senha: string read FSenha write FSenha;
    property Ativo: String read FAtivo write FAtivo;
    constructor Create(AConexao:TFDConnection);
    destructor Destroy; override;
    function fFazerLogin(ANome,ASenha:String;out ARetorno: String): Boolean;

End;

implementation

{ TUser }

{$region 'CONSTRUTOR E DESTRUIDOR'}
constructor TUser.Create(AConexao: TFDConnection);
begin
 Conexao := aConexao;
end;

destructor TUser.Destroy;
begin
  inherited;
end;
{$endregion}

{$region 'METODOS'}
function TUser.fFazerLogin(ANome,ASenha:String;out ARetorno: String): Boolean;
var
Qry:TFDQuery;
begin

  Result := false;

  if (ANome.Trim.IsEmpty) or (ASenha.Trim.IsEmpty) then
  begin
    ARetorno := 'Por favor, informe usu?rio e senha..';
    exit;
  end;

  try

    Qry:=TFDQuery.Create(nil);
    Qry.Connection:=Conexao;
    Qry.Active := false;
    Qry.SQL.Clear;
    Qry.SQL.Add('select CodEmp,Codigo,Nome,Senha,Ativo from TAB_USER Where CodEmp = :CodEmp and Ativo = :Ativo ');
    Qry.SQL.Add('AND lower(Nome) = :Nome and lower(Senha) = :Senha limit 1 ');
    Qry.ParamByName('Nome').AsString  := ANome.ToLower;
    Qry.ParamByName('Senha').AsString := ASenha.ToLower;
    Qry.ParamByName('CodEmp').AsInteger := CodEmp;
    Qry.ParamByName('Ativo').AsString := 'S';

    Try

      Qry.Active := true;

      if Qry.RecordCount > 0 then
      begin
         Codigo  := Qry.FieldByName('Codigo').AsInteger;
         Nome    := Qry.FieldByName('Senha').AsString;
         Ativo   := Qry.FieldByName('Ativo').AsString;
         ARetorno := '';
         Result := true;
      end
      else
      begin
        result := false;
        ARetorno := 'Usu?rio n?o encontrado, solicite suporte..';
      end;

    Except
      Result:=false;
      ARetorno := 'Falha ao executar instru??o SQL, solicite suporte..';
    End;

  finally

    if Assigned(Qry) then
    begin
    Qry.Free;
    end;


  end;

end;

{$endregion}

end.
