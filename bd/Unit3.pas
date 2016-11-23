unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TForm3 = class(TForm)
    DBEdit1: TDBEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2, Math;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
if DataModule2.ADOTable1.Modified then DataModule2.ADOTable1.Post;
Form3.Close;
end;

end.
