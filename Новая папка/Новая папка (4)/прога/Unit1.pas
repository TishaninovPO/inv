unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery2: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   rec:integer;
   i:integer;
   answer:integer;
   showop:integer;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}


procedure TForm1.BitBtn1Click(Sender: TObject);
begin
ADOQuery1.Insert; //������� ������
Form2.ShowModal;  //���������� ����� �����
rec :=AdoQuery1.RecordCount;
Form2.Label14.Caption:='';
Form2.Label15.Caption:='';
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
if (trim(Form3.DBEdit1.Text)='') then
   begin
   ShowMessage('�� �� ������� ������ ��� ��������������! ');
   end
else
   begin
   Form3.ShowModal;  //���������� ����� �����
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
rec:=ADOQuery1.RecordCount; //�������� ���-�� �������
label1.Caption:=inttostr(rec); //�������
label2.Caption:='���������� ������������������ �������:';
label3.Caption:='������:';
label4.Caption:='� ���������:';
end;




procedure TForm1.Button2Click(Sender: TObject);
begin
answer (*����������(��� integer) ��� ��������� ������������� �������� ������� MessageBox'*):= MessageBox(
    Self.Handle
    , PChar('�� ������ ������������ ������� ������: "'+DBGrid1.Fields[0].asString+' '+DBGrid1.Fields[1].asString+'" �� ����?') //����� ���� �������
    , PChar('������ ����� � �� ������������ ') // ��������� ���� �������
    , MB_YESNO + MB_ICONWARNING //������ "��" "���" � ���� ��������������.
  );
if (answer = 6) then
begin
Form1.ADOQuery1.Delete; //������� ������
rec:=rec-1; //��������� �������
Label1.Caption:=inttostr(rec); //����� ���������� ������� � Labal �� �������� �����.

end;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Application.Title:= '������ ����� � �� ������������';
if (trim(ComboBox1.Text)='') or (trim(Edit1.Text)='') then
begin
     if (trim(ComboBox1.Text)='') and (trim(Edit1.Text)='') then
        begin
         ShowMessage('�� ������ ��������� ������ ');
        showop:=showop+1;
       end;

      if (trim(ComboBox1.Text)='') and (showop = 0) then
        begin
          ShowMessage('�� �� ������� ��������� ������ '); //���� �� ������� ��������� ������.
        showop:=showop+1;
        end;
     if (trim(Edit1.Text)='') and (showop = 0) then //���� ���� ������ �����
        begin
          ShowMessage('�� ������ �� ����� � ���� ������! ');
        end;
showop := 0;
end
else
     begin
Form1.dbgrid1.DataSource.DataSet.Locate(ComboBox1.Text, Edit1.Text, [loPartialKey]);
     if not Form1.dbgrid1.DataSource.DataSet.Locate(ComboBox1.Text, Edit1.Text, [loPartialKey]) then
        begin
           ShowMessage('� ���������: "'+ComboBox1.Text+'", �� �������: "'+Edit1.Text+'" ������ �� �������! ���������� ������� ���������.');
        end
     else
        begin
           Form4.ShowModal;  //���������� ����� ������
        end;

     end;
end;

end.
