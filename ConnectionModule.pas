unit ConnectionModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataConnection = class(TDataModule)
    ADOConnection: TADOConnection;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    ADODataSet: TADODataSet;
    procedure Select(Query:string);
    procedure InsertUpdate(Query:string);
    function Count():Integer;
    function ColumnSelect(zapytanie:string;column:string):string;
    function IsString(parameter: String):String;
    function IsBoolean(parameter: String):Boolean;
    function IsInteger(parameter: String):Integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataConnection: TDataConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataConnection.Select(Query:string);
begin
    ADOQuery.Close;
    ADOQuery.SQL.Clear;
    ADOQuery.SQL.Add(Query);
    ADOQuery.Open;
end;

function TDataConnection.ColumnSelect(zapytanie:string;column:string):string;
begin
    ADOQuery.Close;
    ADOQuery.SQL.Clear;
    ADOQuery.SQL.Add(zapytanie);
    ADOQuery.Open;
    result:=ADOQuery.FieldByName(column).AsString;
end;

function TDataConnection.Count():Integer;
begin
     Result := DataSource.DataSet.RecordCount;
end;

function TDataConnection.IsString(parameter: String):String;
begin

  Result:= ADOQuery.FieldByName(parameter).AsString;
end;

procedure TDataConnection.InsertUpdate(Query:string);
begin
    ADOQuery.Close;
    ADOQuery.SQL.Clear;
    ADOQuery.SQL.Add(Query);
    ADOQuery.ExecSQL;
end;

function TDataConnection.IsBoolean(parameter: String):Boolean;
begin

  Result:= ADOQuery.FieldByName(parameter).AsBoolean;
end;

function TDataConnection.IsInteger(parameter: String):Integer;
begin
  Result:= ADoQuery.FieldByName(parameter).AsInteger;
end;

end.
