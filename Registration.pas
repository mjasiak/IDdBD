unit Registration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConnectionModule, Vcl.StdCtrls;

type
  TRegister = class(TForm)
    grp_konto: TGroupBox;
    grp_personal: TGroupBox;
    tbox_login: TEdit;
    tbox_password: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    tbox_name: TEdit;
    tbox_lastname: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    btn_register: TButton;
    btn_cancel: TButton;
    procedure btn_registerClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Register: TRegister;

implementation

{$R *.dfm}

procedure TRegister.btn_cancelClick(Sender: TObject);
begin
     Register.Close;
end;

procedure TRegister.btn_registerClick(Sender: TObject);
begin
     DataConnection.InsertUpdate('INSERT INTO Users (user_login, user_haslo, user_name, user_lastname, user_isworker) VALUES ('''+tbox_login.Text+''','''+tbox_password.Text+''','''+tbox_name.Text+''','''+tbox_lastname.Text+''',''false'');');
     ShowMessage('Twoje konto zosta³o za³o¿one.');
     Register.Close;
end;

end.
