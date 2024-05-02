unit Menus.Controller.ListBox.Itens.Produto;

interface

uses Menus.Controller.Interfaces, FMX.Types,
  Menus.Controller.ListBox.Itens.Default;

type
  TControllerLIstBoxItensProduto = class(TInterfacedObject, iControllerListBoxItensForm)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItensForm;
    function Show : TFmxObject;
  end;

implementation

uses
  Menus.Controller.ListBox.Itens.Factory;

{ TControllerLIstBoxItensProduto }

constructor TControllerLIstBoxItensProduto.Create;
begin

end;

destructor TControllerLIstBoxItensProduto.Destroy;
begin

  inherited;
end;

class function TControllerLIstBoxItensProduto.New: iControllerListBoxItensForm;
begin
  Result := Self.Create;
end;

function TControllerLIstBoxItensProduto.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New
                .Default
                .Name('btnProduto')
                .Text('Produtos')
                .Item;
end;

end.
