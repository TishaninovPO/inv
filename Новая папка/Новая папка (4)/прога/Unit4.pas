unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}


procedure TForm4.FormActivate(Sender: TObject);
begin
Form1.ADOQuery2.Filtered :=true;
Form1.ADOQuery2.Filter := 'Фамилия = ' + QuotedStr(Form1.Edit1.Text);

    end;


end.
