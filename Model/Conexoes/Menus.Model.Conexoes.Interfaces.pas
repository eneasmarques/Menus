unit Menus.Model.Conexoes.Interfaces;

interface

uses
  System.Classes;

type
  iModelConexaoParametros = interface;

  iModelConexao = interface
    ['{55B221B3-421D-4623-AC5F-1BFFAE89C847}']
    function EndConexao : TComponent;
    function Parametros : iModelConexaoParametros;
  end;

  iModelConexaoParametros = interface
    ['{157EDD5D-D714-4156-9AA3-3FC46ED024A8}']
    function Database(Value : String) : iModelConexaoParametros;
    function UserName(Value : String) : iModelConexaoParametros;
    function Password(Value : String) : iModelConexaoParametros;
    function DriverID(Value : String) : iModelConexaoParametros;
    function Server(Value : String) : iModelConexaoParametros;
    function Porta(Value : Integer) : iModelConexaoParametros;
    function EndParametros : iModelConexao;
  end;

  iModelDataSet = interface
    function Open(aTable : String) : iModelDataSet;
    function EndDataset : TComponent;
  end;

implementation

end.
