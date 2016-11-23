unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask;

type
  TForm20 = class(TForm)
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    DBEdit2: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation

uses Unit2, Unit19;

{$R *.dfm}

procedure TForm20.Button1Click(Sender: TObject);
begin
   DM.adotable12.Edit;


 Form19.DBEdit2.Text:=
DM.ADOtable1.Fields.Fields[0].AsString ;



 Form19.DBEdit2.Text:= DM.ADOtable1.Fields.Fields[0].AsString  ;
DM.ADOtable12.Fields.Fields[1].AsString:= Form19.DBEdit2.Text;
 // DM.ADOTable8.FieldByName('id').AsString :='20';

end;

procedure TForm20.Button2Click(Sender: TObject);
begin
      Button1.Click;


   if DM.ADOTable12.Modified then    DM.ADOTable12.Post;

Form20.Close;

     DM.adotable12.Edit;


DBEdit2.Text:=
DM.ADOtable1.Fields.Fields[0].AsString ;



DBEdit2.Text:= DM.ADOtable1.Fields.Fields[0].AsString  ;
DM.ADOtable12.Fields.Fields[1].AsString:= DBEdit2.Text;
 // DM.ADOTable8.FieldByName('id').AsString :='20';

end;

procedure TForm20.FormActivate(Sender: TObject);
begin
DBEdit1.Field.EditMask:='!99.99.0000;1;_' ;
end;

end.
