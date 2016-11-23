unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, AxCtrls, OleCtrls, DBOleCtl, BARCODELib_TLB,
  Buttons, Mask, ComCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit5: TDBEdit;
    Barcode1: TBarcode;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    DBEdit6: TDBEdit;
    Button1: TButton;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Button7: TButton;
    Button2: TButton;
    DBEdit10: TDBEdit;
    Button3: TButton;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox8Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox2MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
 

   id:String;
    { Public declarations }
  end;

var
  Form6: TForm6;
   id:String;
implementation

uses Unit2, Unit13, Unit19;

{$R *.dfm}



procedure TForm6.BitBtn1Click(Sender: TObject);
begin

Button1.Click;
if DM.ADOTable1.Modified then  DM.ADOTable1.Post;

Form6.Close;



end;



procedure TForm6.DBLookupComboBox8Click(Sender: TObject);
begin
Barcode1.Text := DBEdit11.Text;
Barcode1.Refresh;

end;

procedure TForm6.FormActivate(Sender: TObject);
begin
Barcode1.Text := DBEdit11.Text;
Barcode1.Refresh;
 DBEdit3.Field.EditMask:='!99.99.0000;1;_' ;
  DBEdit8.Field.EditMask:='!99.99.0000;1;_' ;
 id:=DBEdit7.Text;
 Barcode1.Text := DBEdit12.Text;
Barcode1.Refresh;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
Barcode1.Text := '123456789012';
Barcode1.BackColor := clWhite;
Barcode1.ForeColor := clBlack;
  DM.ADOTable7.Active:= False;
     DM.ADOTable7.Filtered:= True;
     DM.ADOTable7.Filter:= '[true] = '''+'false''';
     DM.ADOTable7.Active:= True;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
if DM.ADOTable1.Modified then
 DBCheckBox1.Checked:=true;
  DBEdit6.Text:='true';
         dm.ADOTable7.Edit;
DM.ADOtable7.Fields.Fields[2].AsString := 'true';
DM.adotable7.post;
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
Form13.show;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Form19.show;
end;

procedure TForm6.DBLookupComboBox2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  asd:string;
begin
 asd:= DBEdit10.Text;
     DM.ADOTable3.Active:= False;
     DM.ADOTable3.Filtered:= True;
     DM.ADOTable3.Filter:= '[ID_tipa_texniki] = '+asd;
     DM.ADOTable3.Active:= True;
end;

procedure TForm6.Button3Click(Sender: TObject);
var
  ad:string;
begin
  ad:= DBEdit11.text;
  
end;

end.
