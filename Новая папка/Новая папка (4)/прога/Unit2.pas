unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TForm2 = class(TForm)
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
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
rec:integer;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if Form1.ADOQuery1.Modified then //если таблица изменялась
begin
Form1.ADOQuery1.Post;//то сохраняем изменения
rec:=rec+1;
rec :=Form1.AdoQuery1.RecordCount;
end;

end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
Label14.Caption:='';
Label15.Caption:='';
if (trim(DBEdit1.Text)='') and (trim(DBEdit2.Text)='') then
    begin
     ShowMessage('Вы не заполнили поля обязательные для заполнения');
    end;
if (trim(DBEdit1.Text)='') or (trim(DBEdit2.Text)='') then
   begin
       if (trim(DBEdit1.Text)='')  then
           begin
           Label14.Caption:='поле не заполнено';
           end;
       if (trim(DBEdit2.Text)='') then
           begin
           Label15.Caption:='поле не заполнено';
           end;
   end
else begin
if Form1.ADOQuery1.Modified then //если таблица изменялась
begin
Form1.ADOQuery1.Post;//то сохраняем изменения
rec:=rec+1; //увеличиваем счетчик на единицу
rec :=Form1.AdoQuery1.RecordCount;
form1.Label1.Caption:=inttostr(rec); //вывод...
end;
   close;
end;

end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
Form1.ADOQuery1.Cancel;   //отмена действия
Close;//закрываем форму
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Label12.Caption:='*';
Label13.Caption:='*';
end;

end.
