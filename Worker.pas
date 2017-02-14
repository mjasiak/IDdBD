unit Worker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, ConnectionModule, User;

type
  TWorkerForm = class(TForm)
    dbGrid: TDBGrid;
    btn_edit: TButton;
    btn_delete: TButton;
    btn_mycard: TButton;
    btn_discount: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn_mycardClick(Sender: TObject);
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

procedure TWorkerForm.btn_mycardClick(Sender: TObject);
begin
     UserForm.Show;
end;

procedure TWorkerForm.FormShow(Sender: TObject);
begin
    UserForm.UserId := DataConnection.IsInteger('user_id');
     DataConnection.Select('SELECT u.user_id, u.user_login, u.user_name, u.user_lastname, u.card_id FROM Users as u WHERE u.card_id != NULL;');
end;

end.
