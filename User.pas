unit User;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TUserForm = class(TForm)
    DBGrid1: TDBGrid;
    btn_discount: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    UserId: Integer;
  end;

var
  UserForm: TUserForm;

implementation

{$R *.dfm}

end.
