unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask;

type
  TForm21 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

uses Unit2, Unit19;

{$R *.dfm}

procedure TForm21.Button2Click(Sender: TObject);
 begin
  Button1.Click;


   if DM.ADOTable12.Modified then    DM.ADOTable12.Post;

Form21.Close;

     DM.adotable12.Edit;


DBEdit2.Text:=
DM.ADOtable1.Fields.Fields[0].AsString ;



DBEdit2.Text:= DM.ADOtable1.Fields.Fields[0].AsString  ;
DM.ADOtable12.Fields.Fields[1].AsString:= DBEdit2.Text;
 // DM.ADOTable8.FieldByName('id').AsString :='20';

end;


procedure TForm21.Button1Click(Sender: TObject);
begin
   DM.adotable12.Edit;


 Form19.DBEdit2.Text:=
DM.ADOtable1.Fields.Fields[0].AsString ;



 Form19.DBEdit2.Text:= DM.ADOtable1.Fields.Fields[0].AsString  ;
DM.ADOtable12.Fields.Fields[1].AsString:= Form19.DBEdit2.Text;
 // DM.ADOTable8.FieldByName('id').AsString :='20';
end;

procedure TForm21.FormActivate(Sender: TObject);
begin
DBEdit1.Field.EditMask:='!99.99.0000;1;_' ;
end;

end.
