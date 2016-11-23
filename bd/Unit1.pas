unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons,
  Menus;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    MainMenu1: TMainMenu;
    N41: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
DataModule2.ADOTable1.Append;
Form3.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
DataModule2.ADOTable1.Delete;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form3.Show;
end;


procedure TForm1.Button4Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm1.N41Click(Sender: TObject);
begin
Form4.show;
end;

end.
