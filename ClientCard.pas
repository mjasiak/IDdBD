unit ClientCard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ConnectionModule;

type
  TCard = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    tbox_cardnumber: TEdit;
    lbl_cardnumber: TLabel;
    btn_accept: TButton;
    btn_newcard: TButton;
    btn_cancel: TButton;
    procedure btn_cancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_newcardClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    UserId: Integer;
  end;

var
  Card: TCard;
  CardNumber: Integer;

implementation

{$R *.dfm}

procedure TCard.btn_cancelClick(Sender: TObject);
begin
      Card.CloseModal;
      Card.Close;
end;

procedure TCard.btn_newcardClick(Sender: TObject);
begin
     //Dodawnie nowej karty.
     DataConnection.InsertUpdate('INSERT INTO Card (card_points) VALUES(0);');
     DataConnection.Select('SELECT IDENT_CURRENT(''Card'') as ''LastID'';');
     CardNumber := DataConnection.IsInteger('LastID');
     DataConnection.InsertUpdate('UPDATE Users SET card_id = '''+IntToStr(CardNumber)+'''WHERE user_id = '''+IntToStr(UserId)+''';');
     ShowMessage('Nowa karta zosta�a dodana do Twojego konta.');
     Card.Close;
end;

procedure TCard.FormCreate(Sender: TObject);
begin
      Left:=(Screen.Width-Width)  div 2;
      Top:=(Screen.Height-Height) div 2;
end;

end.