unit Menus.Model.Conexoes.Conexao.Factory;

interface

uses
  Menus.Model.Conexoes.Interfaces;

type
  TModelConexaoFactory = class(TInterfacedObject, iModelConexaoFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iModelConexaoFactory;
    function ConexaoFiredac : iModelConexao;
  end;

implementation

uses
  Menus.Model.Conexoes.ConexaoFiredac;

{ TModelConexaoFactory }

function TModelConexaoFactory.ConexaoFiredac: iModelConexao;
begin
  Result := TModelConexaoFiredac.New;
end;

constructor TModelConexaoFactory.Create;
begin

end;

destructor TModelConexaoFactory.Destroy;
begin

  inherited;
end;

class function TModelConexaoFactory.New: iModelConexaoFactory;
begin
  Result := Self.Create;
end;

end.
