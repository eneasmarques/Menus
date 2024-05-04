unit Menus.View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox;

type
  TFrmPrincipal = class(TForm)
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Menus.Controller.ListBox.Factory;

{$R *.fmx}

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory.New.Principal(Layout1).Exibir;
end;

end.
