program IDdBD;

uses
  Vcl.Forms,
  Login in 'Login.pas' {LoginForm},
  ConnectionModule in 'ConnectionModule.pas' {DataConnection: TDataModule},
  User in 'User.pas' {UserForm},
  Worker in 'Worker.pas' {WorkerForm},
  Registration in 'Registration.pas' {Register},
  ClientCard in 'ClientCard.pas' {Card},
  OKCANCL1 in 'e:\embarcadero\embarcadero\studio\15.0\ObjRepos\EN\DelphiWin32\OKCANCL1.PAS' {OKBottomDlg},
  DeleteDialog in 'DeleteDialog.pas' {DeleteForm},
  EditDialog in 'EditDialog.pas' {EditForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataConnection, DataConnection);
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TUserForm, UserForm);
  Application.CreateForm(TWorkerForm, WorkerForm);
  Application.CreateForm(TRegister, Register);
  Application.CreateForm(TCard, Card);
  Application.CreateForm(TDeleteForm, DeleteForm);
  Application.CreateForm(TEditForm, EditForm);
  Application.Run;
end.
