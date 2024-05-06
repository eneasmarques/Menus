unit Menus.View.Cliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Controls.Presentation;

type
  TFrmCliente = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

uses
  Menus.Controller.ListBox.Factory;

{$R *.fmx}

procedure TFrmCliente.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory.New.Cliente(Layout1).Exibir;
end;

initialization
  RegisterFmxClasses([TFrmCliente]);

end.
