unit Menus.Model.Conexoes.Interfaces;

interface

uses
  System.Classes;

type
  iModelConexao = interface
    ['{55B221B3-421D-4623-AC5F-1BFFAE89C847}']
    function EndConexao : TComponent;
    function Database(Value : String) : iModelConexao;
    function UserName(Value : String) : iModelConexao;
    function Password(Value : String) : iModelConexao;
    function DriverID(Value : String) : iModelConexao;
    function Server(Value : String) : iModelConexao;
    function Porta(Value : Integer) : iModelConexao;
  end;

implementation

end.
