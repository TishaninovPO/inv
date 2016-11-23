unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls;

type
  TForm5student = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5student: TForm5student;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm5student.Button1Click(Sender: TObject);
begin
if DataModule2.ADOTable2.Modified then DataModule2.ADOTable2.Post;
close;
end;

procedure TForm5student.Button2Click(Sender: TObject);
begin
  if DataModule2.ADOTable2.Modified then DataModule2.ADOTable2.Cancel;
  Close;
end;


procedure TForm5student.FormActivate(Sender: TObject);
begin
////DBRadioGroup1.ItemIndex:=0;            //для муж.жен по умолчанию муж стоит
////DBLookUpComboBox1.KeyValue:=23;          //Для лукапа
end;





end.
