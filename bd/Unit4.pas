unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit2, Unit5;

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
DataModule2.ADOTable2.Append;
Form5student.ShowModal;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
Form5student.ShowModal;
end;

end.
