unit Menus.Model.Conexoes.TableFiredac;

interface

uses
  FireDAC.Comp.Client, Menus.Model.Conexoes.Interfaces, System.Classes;

type
  TModelConexoesTableFiredac = class(TInterfacedObject, iModelDataset)
  private
    FTable : TFDTable;
  public
    constructor Create(Conexao : iModelConexao);
    destructor Destroy; override;
    class function New(Conexao : iModelConexao): iModelDataset;
    function Open(aTable : String) : iModelDataSet;
    function EndDataset : TComponent;
  end;

implementation

{ TModelConexoesTableFiredac }

constructor TModelConexoesTableFiredac.Create(Conexao : iModelConexao);
begin
  FTable := TFDTable.Create(nil);
  FTable.Connection := (Conexao.EndConexao as TFDConnection);
end;

destructor TModelConexoesTableFiredac.Destroy;
begin
  FTable.Free;
  inherited;
end;

function TModelConexoesTableFiredac.EndDataset: TComponent;
begin
  Result := FTable;
end;

class function TModelConexoesTableFiredac.New(Conexao : iModelConexao): iModelDataset;
begin
  Result := Self.Create(Conexao);
end;

function TModelConexoesTableFiredac.Open(aTable: String): iModelDataSet;
begin
  Result := Self;
  FTable.Open(aTable);
end;

end.
