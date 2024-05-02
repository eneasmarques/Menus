unit Menus.Controller.Interfaces;

interface

uses
  System.Classes, FMX.Types;

type
  iControllerListBoxItensFactory = interface
    ['{4F1DC6D8-6E94-4240-A45F-348BD30A15D1}']
  end;

  iControllerListBoxFactory = interface
    ['{9995F794-8669-42C5-A37E-7536A6E8EAD5}']
  end;

  iControllerListBoxItensDefault = interface
    ['{D0F53CA1-75DA-41C7-9B6B-2112EFC92F12}']
    function Name(Value : String) : iControllerListBoxItensDefault;
    function Text(Value : String) : iControllerListBoxItensDefault;
    function StyleLookup(Value : String) : iControllerListBoxItensDefault;
    function OnClick(Value : TNotifyEvent) :  iControllerListBoxItensDefault;
    function Item : TFMXObject;
  end;
implementation

end.

