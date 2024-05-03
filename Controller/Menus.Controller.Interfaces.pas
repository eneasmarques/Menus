unit Menus.Controller.Interfaces;

interface

uses
  System.Classes, FMX.Types;

type
  iControllerListBoxItensDefault = interface;
  iControllerListBoxDefault = interface;

  iControllerListBoxItensForm = interface
    ['{036FA257-B924-484C-8CB9-5BD4619EDCFD}']
    function Show: TFMXObject;
  end;

  iControllerListBoxItensFactory = interface
    ['{4F1DC6D8-6E94-4240-A45F-348BD30A15D1}']
    function Default: iControllerListBoxItensDefault;
    function Produto: iControllerListBoxItensForm;
  end;

  iControllerListBoxFactory = interface
    ['{9995F794-8669-42C5-A37E-7536A6E8EAD5}']
    function Default(Container: TComponent): iControllerListBoxDefault;
  end;

  iControllerListBoxItensDefault = interface
    ['{D0F53CA1-75DA-41C7-9B6B-2112EFC92F12}']
    function Name(Value: String): iControllerListBoxItensDefault;
    function Text(Value: String): iControllerListBoxItensDefault;
    function StyleLookup(Value: String): iControllerListBoxItensDefault;
    function OnClick(Value: TNotifyEvent): iControllerListBoxItensDefault;
    function Item: TFMXObject;
  end;

  iControllerListBoxDefault = interface
    ['{878A6FB1-8528-403C-A624-E0C83FB7686C}']
    function Name(Value: String): iControllerListBoxDefault;
    function Align(Value: TAlignLayout): iControllerListBoxDefault;
    function Height(Value: Integer): iControllerListBoxDefault;
    function AddItem(Value: TFMXObject): iControllerListBoxDefault;
    function Lista: TFMXObject;
    procedure Exibir;
  end;

implementation

end.
