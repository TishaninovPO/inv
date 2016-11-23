unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TForm3 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
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
    Button1: TButton;
    Button2: TButton;
    Label14: TLabel;
    Label15: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
Label14.Caption:='';
Label15.Caption:='';
if (trim(DBEdit1.Text)='') or (trim(DBEdit2.Text)='') then
   begin
       if (trim(DBEdit1.Text)='')  then
           begin
           Label14.Caption:='Нельзя удалять';
           end;
       if (trim(DBEdit2.Text)='') then
           begin
           Label15.Caption:='Нельзя удалять';
           end;
   end

else begin if Form1.AdoQuery1.Modified then
Form1.AdoQuery1.Insert;
close;
end;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form1.ADOQuery1.Cancel;   //?????? ????????
Close;//????????? ?????
end;

end.
