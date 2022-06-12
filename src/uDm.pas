unit uDm;

interface

uses
  System.SysUtils,FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI,
  System.Classes;

type
  Tdm = class(TDataModule)
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink;
    Conexao: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  procedure pConectarBancoApp;
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  pConectarBancoApp
end;

procedure Tdm.pConectarBancoApp;
begin

  Conexao.Connected := false;

   begin
   with Conexao do
      begin

        Params.Values['DriverID'] := 'SQLite';

        {$IFDEF MSWINDOWS}
        Params.Values['Database'] := System.SysUtils.GetCurrentDir + '\config.db';
        {$ENDIF}

        try
            Connected := true;
        except on e:exception do
            raise Exception.Create('Erro ao localizar config.db: ' + e.Message);
        end;

      end;
  end;

end;

end.
