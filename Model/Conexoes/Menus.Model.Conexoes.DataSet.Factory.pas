unit Menus.Model.Conexoes.DataSet.Factory;

interface

uses
  Menus.Model.Conexoes.Interfaces, FireDAC.Comp.Client;

type
  TModelDataSetFactory = class(TInterfacedObject, iModelDataSetFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iModelDataSetFactory;
    function DataSetFiredac(Conexao : iModelConexao) : iModelDataSet;
  end;

implementation

uses
  Menus.Model.Conexoes.TableFiredac;

{ TModelDataSetFactory }

constructor TModelDataSetFactory.Create;
begin

end;

function TModelDataSetFactory.DataSetFiredac(Conexao : iModelConexao) : iModelDataSet;
begin
  Result := TModelConexoesTableFiredac.New(Conexao);
end;

destructor TModelDataSetFactory.Destroy;
begin

  inherited;
end;

class function TModelDataSetFactory.New : iModelDataSetFactory;
begin
  Result := Self.Create;
end;

end.
