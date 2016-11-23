unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    DBEdit4: TDBEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit2, Unit9, Unit11, Unit13;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
Button2.Click;


   if DM.ADOTable8.Modified then    DM.ADOTable8.Post;

Form11.Close;

     DM.adotable8.Edit;


DBEdit4.Text:=
DM.ADOtable1.Fields.Fields[0].AsString ;



DBEdit4.Text:= DM.ADOtable1.Fields.Fields[0].AsString  ;
DM.ADOtable8.Fields.Fields[1].AsString:= DBEdit4.Text;
 // DM.ADOTable8.FieldByName('id').AsString :='20';




  close;

end;

procedure TForm12.Button2Click(Sender: TObject);
begin
   DM.adotable8.Edit;


 Form9.DBEdit1.Text:=
DM.ADOtable1.Fields.Fields[0].AsString ;



 Form9.DBEdit1.Text:= DM.ADOtable1.Fields.Fields[0].AsString  ;
DM.ADOtable8.Fields.Fields[1].AsString:= Form9.DBEdit1.Text;
 // DM.ADOTable8.FieldByName('id').AsString :='20';
end;

procedure TForm12.FormActivate(Sender: TObject);
begin
DBEdit1.Field.EditMask:='!99.99.0000;1;_'   ;
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
Form13.show;
end;

end.
