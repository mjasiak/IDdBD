unit EditDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ConnectionModule;

type
  TEditForm = class(TForm)
    grpbox_personal: TGroupBox;
    grpbox_settings: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    tbox_name: TEdit;
    tbox_lastname: TEdit;
    Label3: TLabel;
    cbox_isworker: TCheckBox;
    btn_resetpass: TButton;
    lbl_reset: TLabel;
    Label4: TLabel;
    btn_deletecard: TButton;
    btn_save: TButton;
    btn_cancel: TButton;
    procedure ShowForm(Id: Integer);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_deletecardClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditForm: TEditForm;
  UserId: Integer;

implementation

{$R *.dfm}

procedure TEditForm.btn_cancelClick(Sender: TObject);
begin
     DataConnection.Select('SELECT user_id as ''Numer u�ytkownika'', user_login as ''Login'', user_name as ''Imi�'', user_lastname as ''Nazwisko'', card_id as ''Numer karty'' FROM Users WHERE card_id != '''';');
     EditForm.Close;
end;

procedure TEditForm.btn_deletecardClick(Sender: TObject);
begin
     DataConnection.InsertUpdate('UPDATE Users SET card_id=CAST(NULL AS INTEGER) WHERE user_id='''+IntToStr(UserId)+''';');
     ShowMessage('Usuni�to kart�!');
     btn_cancel.Click;
end;

procedure TEditForm.btn_saveClick(Sender: TObject);
var
    helper: String;
begin
if cbox_isworker.Checked then helper:= 'true'
else helper:= 'false';
     DataConnection.InsertUpdate('UPDATE Users SET user_name='''+tbox_name.Text +''', user_lastname='''+tbox_lastname.Text+''', user_isworker='''+helper+''' WHERE user_id='''+IntToStr(UserId)+''';');
     ShowMessage('Edytowano!');
     btn_cancel.Click;
end;

procedure TEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     btn_cancel.Click;
end;

procedure TEditForm.ShowForm(Id: Integer);
begin
     //
     UserId:= Id;
     DataConnection.Select('SELECT user_id as ''Numer u�ytkownika'', user_login as ''Login'', user_name as ''Imie'', user_lastname as ''Nazwisko'', card_id as ''Numer karty'', user_isworker FROM Users WHERE user_id = '''+IntToStr(UserId)+''';');
     tbox_name.Text := DataConnection.IsString('Imie');
     tbox_lastname.Text := DataConnection.IsString('Nazwisko');
     if DataConnection.IsBoolean('user_isworker') then cbox_isworker.Checked := true
     else cbox_isworker.Checked := false;

     EditForm.ShowModal;
end;

end.
