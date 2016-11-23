unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  DBCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    PageControl1: TPageControl;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    SN1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    BitBtn6: TBitBtn;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    DBGrid4: TDBGrid;
    DBNavigator5: TDBNavigator;
    DBGrid5: TDBGrid;
    DBGrid3: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SN1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet1;
end;



procedure TForm4.BitBtn2Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet2;
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet3;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet4;
end;

procedure TForm4.BitBtn6Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet5;
end;

procedure TForm4.N4Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet1;
end;

procedure TForm4.N5Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet2;
end;

procedure TForm4.SN1Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet3;
end;

procedure TForm4.N6Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet4;
end;

procedure TForm4.N7Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet5;
end;

end.
