unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, AxCtrls, OleCtrls, DBOleCtl, BARCODELib_TLB,
  Buttons, Mask;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    Barcode1: TBarcode;
    DBLookupComboBox8: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    DBEdit6: TDBEdit;
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
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Button7: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit2, Unit9, Unit13;

{$R *.dfm}

procedure TForm8.BitBtn1Click(Sender: TObject);
begin



   if DM.ADOTable1.Modified then    DM.ADOTable1.Post;

Form8.Close;
end;





procedure TForm8.DBCheckBox1Click(Sender: TObject);
begin
if DBCheckBox1.Checked=true then   begin
DBEdit6.Enabled:=true;
 end;

 if DBCheckBox1.Checked=false then   begin
DBEdit6.Enabled:=false;
 end;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
Barcode1.Text := '123456789012';
Barcode1.BackColor := clWhite;
Barcode1.ForeColor := clBlack;
end;

procedure TForm8.FormActivate(Sender: TObject);
begin
DBEdit3.Field.EditMask:='!99.99.0000;1;_'   ;
DBEdit6.Field.EditMask:='!99.99.0000;1;_' ;
end;                                        

procedure TForm8.Button7Click(Sender: TObject);
begin
Form13.show;
end;

end.
