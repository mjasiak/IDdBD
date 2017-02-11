program IDdBD;

uses
  Vcl.Forms,
  Login in 'Login.pas' {LoginForm},
  ConnectionModule in 'ConnectionModule.pas' {DataConnection: TDataModule},
  User in 'User.pas' {UserForm},
  Worker in 'Worker.pas' {WorkerForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataConnection, DataConnection);
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TUserForm, UserForm);
  Application.CreateForm(TWorkerForm, WorkerForm);
  Application.Run;
end.
