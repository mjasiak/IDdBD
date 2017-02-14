unit User;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, ConnectionModule, ClientCard;

type
  TUserForm = class(TForm)
    DBGrid1: TDBGrid;
    btn_discount: TButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    UserId: Integer;
  end;

var
  UserForm: TUserForm;
  CardNumber: Integer;

implementation

{$R *.dfm}

procedure TUserForm.FormShow(Sender: TObject);
begin
     //Sprawdzenie czy jest przypisana karta, jesli jest to ³adujemy dane, je¿eli nie to wyrzuca okno tworzenia karty.
     //DataConnection.Select('SELECT * FROM Users WHERE user_id = '''+String(UserId)+''';');
     UserId := DataConnection.IsInteger('user_id');
     if DataConnection.IsString('card_id') <> '' then
     begin
          //£adowanie danych
          CardNumber := DataConnection.IsInteger('card_id');
          DataConnection.Select('SELECT * FROM ShoppingHistory WHERE card_id = '''+IntToStr(CardNumber)+''';');
          DBGrid1.DataSource := DataConnection.DataSource;
     end else
     begin
        Card.UserId := UserId;
        Card.ShowModal;
     end;
end;

end.
