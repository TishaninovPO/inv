unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TForm9 = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit2, Unit8, Unit7, Unit6, Unit11, Unit12, Unit13;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
   DM.adotable8.Edit;


DBEdit1.Text:=
DM.ADOtable1.Fields.Fields[0].AsString ;



DBEdit1.Text:= DM.ADOtable1.Fields.Fields[0].AsString  ;
DM.ADOtable8.Fields.Fields[1].AsString:= DBEdit1.Text;
 // DM.ADOTable8.FieldByName('id').AsString :='20';


end;

procedure TForm9.FormActivate(Sender: TObject);
var
ids:string;

begin
ids:=DM.ADOtable1.Fields.Fields[0].AsString ;
 DM.ADOTable8.Active:= False;
     DM.ADOTable8.Filtered:= True;
     DM.ADOTable8.Filter:= '[id] ='+ids;
     DM.ADOTable8.Active:= True;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
DM.ADOTable8.Append;
form11.show;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet.Delete;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
Form12.show;
end;

procedure TForm9.Button5Click(Sender: TObject);
begin
Form13.show;
end;

end.
