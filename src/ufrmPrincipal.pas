unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, VclTee.TeeGDIPlus, Data.DB, VCLTee.Series, VCLTee.TeEngine,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, Vcl.ComCtrls, Vcl.WinXCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.jpeg;

type
  TfrmPrincipal = class(TForm)
    pnl_ToolBar: TPanel;
    Img_Menu: TImage;
    Label_Menu: TLabel;
    ImageList: TImageList;
    pnlContent: TPanel;
    pnl_barra_lateral: TPanel;
    SplitView: TSplitView;
    TreeView_Menu: TTreeView;
    GridPanel_Graficos: TGridPanel;
    DBChart_Meta: TDBChart;
    BarSeries1: TBarSeries;
    DBChart_Top10Clientes: TDBChart;
    Series1: TBarSeries;
    DBChartTop10Vendedor: TDBChart;
    Series2: TPieSeries;
    DBChartSecao: TDBChart;
    PieSeries1: TBarSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Img_MenuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeView_MenuClick(Sender: TObject);
    procedure TreeView_MenuDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure pTreeView_MenuGestaoComprasDBL;
    procedure pTreeView_MenuGestaoVendasDBL;
    procedure pTreeView_MenuGestaoFinanceiraDBL;
    procedure pTreeView_MenuGestaoRecursosHumanosDBL;
    procedure pTreeView_MenuGestaoContabilidadeDBL;
    procedure pTreeView_MenuGestaoUtilitariosDBL;
    procedure pAjustaTamanhoTreeView;
  public
    { Public declarations }
    vCodEmpLogado : Integer;
    vCodigoUserLogado : Integer;
    vNomeUserLogado : String;
    procedure pVerificarFormAberto;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufrmClientes, ufrmLogin;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Limpar o formulario da memoria ao fecha-lo..}
  Action := TCloseAction.caFree;
  frmPrincipal := nil;
  {Fim}
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  {Ler arquivo de configura??o .INI do sistema e obter a empresa principal}
  vCodEmpLogado := 1;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin

  if not Assigned(frmLogin) then
  begin
    Application.CreateForm(TfrmLogin,frmLogin);
  end;

  frmLogin.ShowModal;
  TreeView_Menu.SetFocus;

end;

procedure TfrmPrincipal.Img_MenuClick(Sender: TObject);
begin

   if SplitView.Opened then
  begin
    SplitView.Close;
  end
  else
  begin
    SplitView.Open;
  end;

end;

procedure TfrmPrincipal.pAjustaTamanhoTreeView;
begin

  {Gestao de compras}
  if TreeView_Menu.Items.Item[0].Selected = true then
  begin
  SplitView.Width := 250;
  TreeView_Menu.Width := 250;
  end;

  if TreeView_Menu.Items.Item[11].Selected = true then
  begin
  SplitView.Width := 300;
  TreeView_Menu.Width := 300;
  end;

  if TreeView_Menu.Items.Item[13].Selected = true then
  begin
  SplitView.Width := 350;
  TreeView_Menu.Width := 350;
  end;
  {Fim}

  {Gestoa de vendas}
  if TreeView_Menu.Items.Item[15].Selected = true then
  begin
  SplitView.Width := 250;
  TreeView_Menu.Width := 250;
  end;

  if TreeView_Menu.Items.Item[16].Selected = true then
  begin
  SplitView.Width := 250;
  TreeView_Menu.Width := 250;
  end;

  if TreeView_Menu.Items.Item[18].Selected = true then
  begin
  SplitView.Width := 300;
  TreeView_Menu.Width := 300;
  end;

  if TreeView_Menu.Items.Item[26].Selected = true then
  begin
  SplitView.Width := 300;
  TreeView_Menu.Width := 300;
  end;
  {Fim}

  {Gestoa de Financeira}
  if TreeView_Menu.Items.Item[27].Selected = true then
  begin
  SplitView.Width := 300;
  TreeView_Menu.Width := 300;
  end;
  {Fim}

  {Recursos Humanos}
  if TreeView_Menu.Items.Item[29].Selected = true then
  begin
  SplitView.Width := 250;
  TreeView_Menu.Width := 250;
  end;
  {Fim}

  {Contabilidade}
  if TreeView_Menu.Items.Item[33].Selected = true then
  begin
  SplitView.Width := 250;
  TreeView_Menu.Width := 250;
  end;
  {Fim}

  {Utilit?rios}
  if TreeView_Menu.Items.Item[37].Selected = true then
  begin
  SplitView.Width := 250;
  TreeView_Menu.Width := 250;
  end;
  {Fim}

end;

procedure TfrmPrincipal.pTreeView_MenuGestaoComprasDBL;
begin

end;

procedure TfrmPrincipal.pTreeView_MenuGestaoContabilidadeDBL;
begin

end;

procedure TfrmPrincipal.pTreeView_MenuGestaoFinanceiraDBL;
begin
end;

procedure TfrmPrincipal.pTreeView_MenuGestaoRecursosHumanosDBL;
begin

end;

procedure TfrmPrincipal.pTreeView_MenuGestaoUtilitariosDBL;
begin

end;

procedure TfrmPrincipal.pTreeView_MenuGestaoVendasDBL;
begin

  {Cadastro de clientes}
  if TreeView_Menu.Items.Item[17].Selected = true then
  begin

    if not Assigned(frmClientes) then
    begin
      Application.CreateForm(TfrmClientes,frmClientes);
    end;

    frmClientes.Show;
    frmPrincipal.pnlContent.Visible := false;

  end;

end;

procedure TfrmPrincipal.pVerificarFormAberto;
begin

  if (Assigned(frmClientes)) then
  begin
    exit;
  end;

  frmPrincipal.pnlContent.Visible := true;

end;

procedure TfrmPrincipal.TreeView_MenuClick(Sender: TObject);
begin
  pAjustaTamanhoTreeView;
end;

procedure TfrmPrincipal.TreeView_MenuDblClick(Sender: TObject);
begin
  pTreeView_MenuGestaoComprasDBL;
  pTreeView_MenuGestaoVendasDBL;
  pTreeView_MenuGestaoFinanceiraDBL;
  pTreeView_MenuGestaoRecursosHumanosDBL;
  pTreeView_MenuGestaoContabilidadeDBL;
  pTreeView_MenuGestaoUtilitariosDBL;
end;

end.
