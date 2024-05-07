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
    ['{6D5B9ACE-BFCD-4832-8D69-4C6183552F21}']
    function Open(aTable : String) : iModelDataSet;
    function EndDataset : TComponent;
  end;

  iModelConexaoFactory = interface
    ['{4F75DF35-28C0-4031-B5A4-0871DC7E7658}']
    function ConexaoFiredac : iModelConexao;
  end;

  iModelDataSetFactory = interface
    ['{42EFCA64-9AAD-4821-87CF-A2F4C968F9A1}']
    function DataSetFiredac(Conexao : iModelConexao) : iModelDataSet;
  end;

implementation

end.
