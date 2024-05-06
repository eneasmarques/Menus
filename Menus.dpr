program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.View.Principal in 'View\Menus.View.Principal.pas' {FrmPrincipal},
  Menu.Model.Interfaces in 'Model\Menu.Model.Interfaces.pas',
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
  Menus.Controller.Form.Default in 'Controller\Menus.Controller.Form.Default.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
