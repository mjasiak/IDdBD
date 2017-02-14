unit Worker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, ConnectionModule, User, DeleteDialog;

type
  TWorkerForm = class(TForm)
    dbGrid: TDBGrid;
    btn_edit: TButton;
    btn_delete: TButton;
    btn_mycard: TButton;
    btn_discount: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn_mycardClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbGridCellClick(Column: TColumn);
    procedure btn_deleteClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    UserId: Integer;
  end;

var
  WorkerForm: TWorkerForm;
  ChooseUser: Integer;

implementation

{$R *.dfm}

procedure TWorkerForm.btn_deleteClick(Sender: TObject);
begin
     DeleteForm.ShowForm(ChooseUser);
end;

procedure TWorkerForm.btn_editClick(Sender: TObject);
begin
     //
end;

procedure TWorkerForm.btn_mycardClick(Sender: TObject);
begin
    //DataConnection.Select('SELECT * FROM Users WHERE user_id = '''+IntToStr(UserId)+''';');
    //UserForm.Show;
end;

procedure TWorkerForm.dbGridCellClick(Column: TColumn);
begin
     ChooseUser := dbGrid.Fields[0].AsInteger;
     btn_edit.Enabled := true;
     btn_delete.Enabled := true;
end;

procedure TWorkerForm.FormCreate(Sender: TObject);
begin
     Left:=(Screen.Width-Width)  div 2;
     Top:=(Screen.Height-Height) div 2;
end;

procedure TWorkerForm.FormShow(Sender: TObject);
begin
    UserForm.UserId := DataConnection.IsInteger('user_id');
     DataConnection.Select('SELECT user_id as ''Numer u�ytkownika'', user_login as ''Login'', user_name as ''Imi�'', user_lastname as ''Nazwisko'', card_id as ''Numer karty'' FROM Users WHERE card_id != '''';');
     dbGrid.DataSource := DataConnection.DataSource;
end;

end.
