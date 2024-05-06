unit Menus.View.Produto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Controls.Presentation, Menus.Controller.ListBox.Factory;

type
  TFrmProduto = class(TForm)
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
  FrmProduto: TFrmProduto;

implementation

{$R *.fmx}

procedure TFrmProduto.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory.New.Produto(Layout1).Exibir;
end;

initialization
  RegisterFmxClasses([TFrmProduto]);

end.
