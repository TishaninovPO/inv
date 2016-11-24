unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.Edit1.Text:='';
Form1.Edit2.Text:='';
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('SELECT passwd FROM Users WHERE login='+#39+Edit1.Text+#39);
  DM.ADOQuery1.Open;
  if DM.ADOQuery1.IsEmpty
    then
      ShowMessage('Пользователь '+Edit1.Text+' не найден!')
    else
      if DM.ADOQuery1.FieldByName('passwd').Value <> Edit2.Text
        then
          ShowMessage('Введен не правельный пароль!')
        else
          Form2.Visible:=false;

          Form2.ShowModal;

end;

end.
