unit DeleteDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ConnectionModule;

type
  TDeleteForm = class(TForm)
    lbl_delete: TLabel;
    btn_yes: TButton;
    btn_no: TButton;
    procedure btn_noClick(Sender: TObject);
    procedure btn_yesClick(Sender: TObject);
    procedure ShowForm(ID: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    UserId: Integer;
  end;

var
  DeleteForm: TDeleteForm;

implementation

{$R *.dfm}

procedure TDeleteForm.btn_noClick(Sender: TObject);
begin
      DataConnection.Select('SELECT user_id as ''Numer u�ytkownika'', user_login as ''Login'', user_name as ''Imi�'', user_lastname as ''Nazwisko'', card_id as ''Numer karty'' FROM Users WHERE card_id != '''';');
      DeleteForm.Close;
end;

procedure TDeleteForm.btn_yesClick(Sender: TObject);
begin
     DataConnection.Delete('DELETE FROM Users WHERE user_id = '''+IntToStr(UserId)+''';');
     Sleep(1000);
     DataConnection.Select('SELECT user_id as ''Numer u�ytkownika'', user_login as ''Login'', user_name as ''Imi�'', user_lastname as ''Nazwisko'', card_id as ''Numer karty'' FROM Users WHERE card_id != '''';');
     DeleteForm.Close;
end;

procedure TDeleteForm.FormCreate(Sender: TObject);
begin
     Left:=(Screen.Width-Width)  div 2;
      Top:=(Screen.Height-Height) div 2;
end;

procedure TDeleteForm.ShowForm(ID: Integer);
begin
     UserId:= ID;
     DataConnection.Select('SELECT user_id as ''Numer u�ytkownika'', user_login as ''Login'', user_name as ''Imi�'', user_lastname as ''Nazwisko'', card_id as ''Numer karty'' FROM Users WHERE user_id = '''+IntToStr(UserId)+''';');
     lbl_delete.Caption := 'Czy na pewno chcesz usun�� konto u�ytkownika '+DataConnection.IsString('Login')+', ' + IntToStr(UserId) + ' (ID)';
     DeleteForm.ShowModal;
end;

end.
