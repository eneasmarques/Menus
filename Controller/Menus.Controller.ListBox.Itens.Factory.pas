unit Menus.Controller.ListBox.Itens.Factory;

interface

uses
  Menus.Controller.Interfaces, Menus.Controller.ListBox.Itens.Default,
  Menus.Controller.ListBox.Default;

  type
    TControllerListBoxItensFactory = class(TInterfacedObject, iControllerListBoxItensFactory)
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerListBoxItensFactory;
      function Default : iControllerListBoxItensDefault;
      function Produto : iControllerListBoxItensForm;
    end;

implementation

uses
  Menus.Controller.ListBox.Itens.Produto;

{ TControllerListBoxItensFactory }

constructor TControllerListBoxItensFactory.Create;
begin

end;

function TControllerListBoxItensFactory.Default: iControllerListBoxItensDefault;
begin
  Result := TControllerListBoxItensDefault.New;
end;

destructor TControllerListBoxItensFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensFactory.New: iControllerListBoxItensFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensFactory.Produto: iControllerListBoxItensForm;
begin
  Result := TControllerListBoxItensProduto.New;
end;

end.


