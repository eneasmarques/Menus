unit Menus.Controller.ListBox.Itens.Cliente;

interface

uses Menus.Controller.Interfaces, FMX.Types,
  Menus.Controller.ListBox.Itens.Default, Menus.View.Produto;

type
  TControllerListBoxItensCliente = class(TInterfacedObject, iControllerListBoxItensForm)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItensForm;
    function Show : TFmxObject;
    procedure onClick(Sender : TObject);
  end;

implementation

uses
  Menus.Controller.ListBox.Itens.Factory, Menus.Controller.Form.Default;

{ TControllerListBoxItensCliente }

constructor TControllerListBoxItensCliente.Create;
begin

end;

destructor TControllerListBoxItensCliente.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensCliente.New: iControllerListBoxItensForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensCliente.onClick(Sender: TObject);
begin
  TControllerFormDefault.CreateForm('TFrmCliente');
end;

function TControllerListBoxItensCliente.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New
                .Default
                .Name('btnCliente')
                .Text('Cliente')
                .onClick(onClick)
                .Item;
end;

end.
