unit Menus.Controller.Form.Default;

interface

type
  TControllerFormDefault = class
    class procedure CreateForm(ClassName: String);
  end;

implementation

uses
  FMX.Types, FMX.Forms, System.Classes, System.SysUtils;

{ ControllerFormDefault }

class procedure TControllerFormDefault.CreateForm(ClassName: String);
var
  objFMX: TFMXObjectClass;
  newForm: TCustomForm;
begin
  objFMX := TFMXObjectClass(GetClass(ClassName));
  try
    newForm := TCustomForm(objFMX.Create(nil));
    try
      newForm.ShowModal;
    except
        raise Exception.Create('Objeto não encontrado.');
    end;
  finally
    newForm.Free;
  end;

end;

end.
