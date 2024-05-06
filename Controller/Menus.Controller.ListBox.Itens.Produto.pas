unit Menus.Controller.ListBox.Itens.Produto;

interface

uses Menus.Controller.Interfaces, FMX.Types,
  Menus.Controller.ListBox.Itens.Default, Menus.View.Cliente,
  Menus.Controller.Form.Default;

type
  TControllerLIstBoxItensProduto = class(TInterfacedObject, iControllerListBoxItensForm)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItensForm;
    function Show : TFmxObject;
    procedure onClick(Sender : TObject);
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

procedure TControllerLIstBoxItensProduto.onClick(Sender: TObject);
begin
  TControllerFormDefault.CreateForm('TFrmProduto');
end;

function TControllerLIstBoxItensProduto.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New
                .Default
                .Name('btnProduto')
                .Text('Produtos')
                .onClick(onClick)
                .Item;
end;

end.
