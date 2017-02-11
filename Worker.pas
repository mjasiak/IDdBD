unit Worker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TWorkerForm = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    User_id: Integer;
  end;

var
  WorkerForm: TWorkerForm;

implementation

{$R *.dfm}

end.
