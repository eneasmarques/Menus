program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.View.Principal in 'View\Menus.View.Principal.pas' {Form1},
  Menus.Controller.Interfaces in 'Controller\Menus.Controller.Interfaces.pas',
  Menu.Model.Interfaces in 'Model\Menu.Model.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
