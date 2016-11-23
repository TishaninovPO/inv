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
ADOQuery1.Insert; //вставка записи
Form2.ShowModal;  //показываем форму ввода
rec :=AdoQuery1.RecordCount;
Form2.Label14.Caption:='';
Form2.Label15.Caption:='';
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
if (trim(Form3.DBEdit1.Text)='') then
   begin
   ShowMessage('Вы не выбрали строку для редактирования! ');
   end
else
   begin
   Form3.ShowModal;  //показываем форму ввода
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
rec:=ADOQuery1.RecordCount; //получаем кол-во записей
label1.Caption:=inttostr(rec); //выводим
label2.Caption:='Количество зарегистрированных человек:';
label3.Caption:='Искать:';
label4.Caption:='В Категории:';
end;




procedure TForm1.Button2Click(Sender: TObject);
begin
answer (*переменная(тип integer) для получения возвращаемого значения функции MessageBox'*):= MessageBox(
    Self.Handle
    , PChar('Вы хотите безвозвратно удалить запись: "'+DBGrid1.Fields[0].asString+' '+DBGrid1.Fields[1].asString+'" из базы?') //текст окна диалога
    , PChar('Жители город и их родственники ') // заголовок окна диалога
    , MB_YESNO + MB_ICONWARNING //кнопки "Да" "Нет" и знак предуприждения.
  );
if (answer = 6) then
begin
Form1.ADOQuery1.Delete; //удаляем запись
rec:=rec-1; //уменьшаем счетчик
Label1.Caption:=inttostr(rec); //вывод оставшихся записей в Labal на основной форме.

end;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Application.Title:= 'Жители город и их родственники';
if (trim(ComboBox1.Text)='') or (trim(Edit1.Text)='') then
begin
     if (trim(ComboBox1.Text)='') and (trim(Edit1.Text)='') then
        begin
         ShowMessage('Не заданы параметры поиска ');
        showop:=showop+1;
       end;

      if (trim(ComboBox1.Text)='') and (showop = 0) then
        begin
          ShowMessage('Вы не выбрали категорию поиска '); //если не выбрана категория поиска.
        showop:=showop+1;
        end;
     if (trim(Edit1.Text)='') and (showop = 0) then //если поле поиска пуста
        begin
          ShowMessage('Вы ничего не ввели в поле поиска! ');
        end;
showop := 0;
end
else
     begin
Form1.dbgrid1.DataSource.DataSet.Locate(ComboBox1.Text, Edit1.Text, [loPartialKey]);
     if not Form1.dbgrid1.DataSource.DataSet.Locate(ComboBox1.Text, Edit1.Text, [loPartialKey]) then
        begin
           ShowMessage('В катнгории: "'+ComboBox1.Text+'", По запросу: "'+Edit1.Text+'" ничего не найдено! Попробуйте сменить категорию.');
        end
     else
        begin
           Form4.ShowModal;  //показываем форму поиска
        end;

     end;
end;

end.
