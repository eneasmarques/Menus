program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.View.Principal in 'View\Menus.View.Principal.pas' {FrmPrincipal},
  Menus.Model.Interfaces in 'Model\Menus.Model.Interfaces.pas',
  Menus.Controller.Interfaces in 'Controller\Menus.Controller.Interfaces.pas',
  Menus.Controller.ListBox.Default in 'Controller\Menus.Controller.ListBox.Default.pas',
  Menus.Controller.ListBox.Factory in 'Controller\Menus.Controller.ListBox.Factory.pas',
  Menus.Controller.ListBox.Itens.Default in 'Controller\Menus.Controller.ListBox.Itens.Default.pas',
  Menus.Controller.ListBox.Itens.Factory in 'Controller\Menus.Controller.ListBox.Itens.Factory.pas',
  Menus.Controller.ListBox.Itens.Produto in 'Controller\Menus.Controller.ListBox.Itens.Produto.pas',
  Menus.Controller.ListBox.Principal in 'Controller\Menus.Controller.ListBox.Principal.pas',
  Menus.Controller.ListBox.Itens.Cliente in 'Controller\Menus.Controller.ListBox.Itens.Cliente.pas',
  Menus.View.Produto in 'View\Menus.View.Produto.pas' {FrmProduto},
  Menus.View.Cliente in 'View\Menus.View.Cliente.pas' {FrmCliente},
  Menus.Controller.ListBox.Cliente in 'Controller\Menus.Controller.ListBox.Cliente.pas',
  Menus.Controller.ListBox.Produto in 'Controller\Menus.Controller.ListBox.Produto.pas',
  Menus.Controller.Form.Default in 'Controller\Menus.Controller.Form.Default.pas',
  Menus.Model.Conexoes.Interfaces in 'Model\Conexoes\Menus.Model.Conexoes.Interfaces.pas',
  Menus.Model.Conexoes.ConexaoFiredac in 'Model\Conexoes\Menus.Model.Conexoes.ConexaoFiredac.pas',
  Menus.Model.Conexoes.TableFiredac in 'Model\Conexoes\Menus.Model.Conexoes.TableFiredac.pas',
  Menus.Model.Conexoes.Conexao.Factory in 'Model\Conexoes\Menus.Model.Conexoes.Conexao.Factory.pas',
  Menus.Model.Conexoes.DataSet.Factory in 'Model\Conexoes\Menus.Model.Conexoes.DataSet.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
