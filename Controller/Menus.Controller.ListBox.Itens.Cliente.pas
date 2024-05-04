unit Menus.Controller.ListBox.Itens.Cliente;

interface

uses Menus.Controller.Interfaces, FMX.Types,
  Menus.Controller.ListBox.Itens.Default;

type
  TControllerListBoxItensCliente = class(TInterfacedObject, iControllerListBoxItensForm)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItensForm;
    function Show : TFmxObject;
  end;

implementation

uses
  Menus.Controller.ListBox.Itens.Factory;

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

function TControllerListBoxItensCliente.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New
                .Default
                .Name('btnCliente')
                .Text('Cliente')
                .Item;
end;

end.
