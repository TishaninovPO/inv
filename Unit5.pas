unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AxCtrls, OleCtrls, DBOleCtl, BARCODELib_TLB, StdCtrls, DBCtrls,
  Mask, Buttons, ComCtrls;

type
  TForm5 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
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
    DBEdit5: TDBEdit;
    Barcode1: TBarcode;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit7: TDBEdit;
    Button1: TButton;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    Button7: TButton;
    DBEdit10: TDBEdit;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Button2: TButton;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBLookupComboBox2MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox3MouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBLookupComboBox3MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBLookupComboBox3Click(Sender: TObject);
   


  

   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit4, Unit2, Unit13, Unit1, Unit3;

{$R *.dfm}


procedure TForm5.BitBtn1Click(Sender: TObject);
begin


if DM.ADOTable1.Modified then begin


                     DBEdit12.Text:=  DBEdit14.Text;
  DM.ADOtable1.Fields.Fields[17].AsString:= DBEdit12.Text;

 DM.ADOTable1.Post;
DBCheckBox1.Checked:=true;

close;
end
else
begin

end


end;

procedure TForm5.Button1Click(Sender: TObject);
begin
if DM.ADOTable1.Modified then
 DBCheckBox1.Checked:=true;
  DBEdit6.Text:='true';
         dm.ADOTable7.Edit;
DM.ADOtable7.Fields.Fields[2].AsString := 'true';
DM.adotable7.post;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
Barcode1.Text := '123456789012';
Barcode1.BackColor := clWhite;
Barcode1.ForeColor := clBlack;
  DM.ADOTable7.Active:= False;
     DM.ADOTable7.Filtered:= True;
     DM.ADOTable7.Filter:= '[true] = '''+'false''';
     DM.ADOTable7.Active:= True;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
DBEdit3.Field.EditMask:='!99.99.0000;1;_'   ;
  DBEdit8.Field.EditMask:='!99.99.0000;1;_' ;
  Button2.Click;
end;


procedure TForm5.Button7Click(Sender: TObject);
begin
Form13.show;
end;




procedure TForm5.DBLookupComboBox2MouseDown(Sender: TObject;
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

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
        // DBLookupComboBox8.Text:= Form2.Edit1.Text;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
 Form5.edit1.Text:=Edit1.text;
   Form5.DBLookupComboBox3.KeyValue:=Edit1.text;


     Form5.DBLookupComboBox6.KeyValue:=DBEdit11.text;
     form5.DBEdit5.Text:='1';
     DM.ADOtable1.Fields.Fields[27].AsString:= form5.DBEdit5.Text;

     DM.ADOtable1.Fields.Fields[8].AsString:=Form5.DBLookupComboBox3.KeyValue;
     DM.ADOtable1.Fields.Fields[13].AsString:=Form5.DBLookupComboBox6.KeyValue;
end;



procedure TForm5.DBLookupComboBox3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
Button2.Click;
end;





procedure TForm5.DBLookupComboBox3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
Button2.Click;
end;

procedure TForm5.DBLookupComboBox3Click(Sender: TObject);
begin

      Form5.DBLookupComboBox6.KeyValue:=DBEdit11.text;

end;

end.
