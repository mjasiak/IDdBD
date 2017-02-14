unit EditDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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
    procedure ShowForm(UserId: Integer);
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

procedure TEditForm.ShowForm(UserId: Integer);
begin
     //

     EditForm.ShowModal;
end;

end.
