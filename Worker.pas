unit Worker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TWorkerForm = class(TForm)
    dbGrid: TDBGrid;
    btn_edit: TButton;
    btn_delete: TButton;
    btn_mycard: TButton;
    btn_discount: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    UserId: Integer;
  end;

var
  WorkerForm: TWorkerForm;

implementation

{$R *.dfm}

end.
