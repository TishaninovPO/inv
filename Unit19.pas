unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask;

type
  TForm19 = class(TForm)
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBEdit2: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

uses Unit2, Unit20, Unit21;

{$R *.dfm}

procedure TForm19.FormActivate(Sender: TObject);
var
ids:string;

begin
ids:=DM.ADOtable1.Fields.Fields[0].AsString ;
 DM.ADOTable12.Active:= False;
     DM.ADOTable12.Filtered:= True;
     DM.ADOTable12.Filter:= '[id] ='+ids;
     DM.ADOTable12.Active:= True;
end;

procedure TForm19.Button2Click(Sender: TObject);
begin
DM.ADOTable12.Append;
form20.show;
end;

procedure TForm19.Button4Click(Sender: TObject);
begin
Form21.show;
end;

procedure TForm19.Button3Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet.Delete;
end;

end.
