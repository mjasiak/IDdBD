unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ConnectionModule, User, Worker;

type
  TLoginForm = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btn_login: TButton;
    lbl_register: TLabel;
    procedure lbl_registerMouseEnter(Sender: TObject);
    procedure lbl_registerMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_loginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

procedure TLoginForm.btn_loginClick(Sender: TObject);
begin
     DataConnection.Select('SELECT * FROM Users WHERE user_login= ''' + Edit1.Text + ''' AND user_haslo= ''' + Edit2.Text + ''';');
     if DataConnection.Count = 1 then
     begin
     if DataConnection.IsWorker then
     begin
       WorkerForm.Show;
       WorkerForm.User_id := Integer(DataConnection.SingleRecordParamByName('user_id'));
     end
     else begin
       UserForm.Show;
       UserForm.User_id := Integer(DataConnection.SingleRecordParamByName('user_id'));
     end;
     end else ShowMessage('Z�y login lub has�o');
end;

procedure TLoginForm.FormCreate(Sender: TObject);
begin
     DataConnection.ADOConnection.Connected  := true;
end;

procedure TLoginForm.FormDestroy(Sender: TObject);
begin
     DataConnection.ADOConnection.Connected  := false;
end;

procedure TLoginForm.lbl_registerMouseEnter(Sender: TObject);
begin
      lbl_register.Font.Color := clHighlight;
end;

procedure TLoginForm.lbl_registerMouseLeave(Sender: TObject);
begin
      lbl_register.Font.Color := clWindowText;
end;
end.
