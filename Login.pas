unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ConnectionModule, Registration, Worker, User;

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
    procedure lbl_registerClick(Sender: TObject);
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
          if DataConnection.IsBoolean('user_isworker') then
          begin
               WorkerForm.Show;
               //LoginForm.Close;
          end else
          begin
               UserForm.Show;
          end;
     end else ShowMessage('Z³y login lub has³o');
end;

procedure TLoginForm.FormCreate(Sender: TObject);
begin
     DataConnection.ADOConnection.Connected  := true;
      Left:=(Screen.Width-Width)  div 2;
      Top:=(Screen.Height-Height) div 2;
end;

procedure TLoginForm.FormDestroy(Sender: TObject);
begin
     DataConnection.ADOConnection.Connected  := false;
end;

procedure TLoginForm.lbl_registerClick(Sender: TObject);
begin
     Register.ShowModal;
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
