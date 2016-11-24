unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  DB,  ADODB, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls, Menus, DBCtrls, ImgList, ShellAPI, ComObj, DBTables,
  Gauges, jpeg ,StdActns,IniFiles;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    SN1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Label1: TLabel;
    Button1: TButton;
    DBGrid2: TDBGrid;
    DBGrid4: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    N8: TMenuItem;
    N9: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    Button6: TButton;
    Label2: TLabel;
    Button7: TButton;
    Button8: TButton;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    NetTree: TTreeView;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button12: TButton;
    Edit3: TEdit;
    procedure BitBtn5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SN1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);




    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure PageControl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PageControl1StartDock(Sender: TObject;
      var DragObject: TDragDockObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N9Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure NetTreeClick(Sender: TObject);
    procedure Button11Click(Sender: TObject);


    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button12Click(Sender: TObject);








  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit2, Unit4, Unit5, Unit6, Unit7, Unit8, Unit10, Unit1, Unit13,
  Unit16, Unit17, Unit18;

{$R *.dfm}

procedure TForm2.BitBtn5Click(Sender: TObject);
begin
Application.Terminate;
     end;
procedure TForm2.N2Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet1;
     DM.ADOTable1.Active:= False;
        DM.ADOTable1.Filtered:= True;
     DM.ADOTable1.Filter:= '';

     DM.ADOTable1.Active:= True;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet2;

   DM.ADOTable1.Active:= False;
     DM.ADOTable1.Filtered:= True;
     DM.ADOTable1.Filter:= '[rem_true] = '''+'true''';
     DM.ADOTable1.Active:= True;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet3;
   DM.ADOTable1.Active:= False;
     DM.ADOTable1.Filtered:= True;
     DM.ADOTable1.Filter:= '[true_cpicania] = '''+'true''';
     DM.ADOTable1.Active:= True;

end;

procedure TForm2.BitBtn4Click(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet4;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Form2.PageControl1.ActivePage:=TabSheet1;

end;

procedure TForm2.N4Click(Sender: TObject);
begin
Form4.ShowModal;
Form4.PageControl1.ActivePage:=TabSheet1;
end;

procedure TForm2.N5Click(Sender: TObject);
begin
Form4.ShowModal;
Form4.PageControl1.ActivePage:=TabSheet2;
end;

procedure TForm2.SN1Click(Sender: TObject);
begin
Form4.ShowModal;
Form4.PageControl1.ActivePage:=TabSheet3;
end;

procedure TForm2.N6Click(Sender: TObject);
begin
Form4.ShowModal;
Form4.PageControl1.ActivePage:=TabSheet4;
end;

procedure TForm2.N7Click(Sender: TObject);
begin
Form4.ShowModal;
Form4.PageControl1.ActivePage:=TabSheet4;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  s,sp,spp:string;
  a,b:char;
  Sq,S1q: String;
    iq,jq: Integer;
begin
  s:='';
 try
       Sq := PChar(NetTree.Selected.Text);
  for iq := 1 to Length(Sq) do
    if Sq[iq] = ' ' then
      Break;
  jq := iq+1;
  while Sq[jq] <> ' ' do
    begin
      S1q := S1q+Sq[jq];
      jq := jq+1;
    end;

      Edit2.Text:=s1q  ;
   spp:=  PChar(NetTree.Selected.Text);
     Delete(spp,Pos(' ',spp),Length(spp));
     s:=PChar(NetTree.Selected.Text);
     sp:=PChar(NetTree.Selected.Text);
     Delete(sp,Pos(' ',sp),Length(sp));
      Edit1.Text:=sp;

Delete(s,Pos(' ',s),Length(s));







    
     DM.ADOTable1.Active:= False;
     DM.ADOTable1.Filtered:= True;
     DM.ADOTable1.Filter:= '[id_fio] = '+s;
     DM.ADOTable1.Active:= True;





 except
 
//  ShowMessage('������ �� ������� �����!') ;
 end;




  Form5.edit1.Text:=Edit1.text;
   Form5.DBLookupComboBox3.KeyValue:=Edit1.text;
     Form5.DBLookupComboBox6.KeyValue:=Form5.DBEdit11.text;  DM.ADOTable1.Append;
Form5.Show;
end;










procedure TForm2.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then
      BitBtn1.Click;
 if PageControl1.ActivePage=TabSheet2 then
       BitBtn2.Click;




if PageControl1.ActivePage=TabSheet3 then
        BitBtn3.Click;

end;

procedure TForm2.PageControl1Enter(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then
      BitBtn1.Click;
 if PageControl1.ActivePage=TabSheet2 then
       BitBtn2.Click;




if PageControl1.ActivePage=TabSheet3 then
        BitBtn3.Click;
end;

procedure TForm2.PageControl1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if PageControl1.ActivePage=TabSheet1 then
      BitBtn1.Click;
 if PageControl1.ActivePage=TabSheet2 then
       BitBtn2.Click;




if PageControl1.ActivePage=TabSheet3 then
        BitBtn3.Click;
end;

procedure TForm2.PageControl1StartDock(Sender: TObject;
  var DragObject: TDragDockObject);
begin
if PageControl1.ActivePage=TabSheet1 then
      BitBtn1.Click;
 if PageControl1.ActivePage=TabSheet2 then
       BitBtn2.Click;
if PageControl1.ActivePage=TabSheet3 then
        BitBtn3.Click;
end;

procedure TForm2.Button2Click(Sender: TObject);

begin


  Form6.Show;


      end;
procedure TForm2.Button3Click(Sender: TObject);
Var R:Word;
begin

 r:= MessageDLG('�� ������������� ������ �������?', mtWarning, [mbYes,mbNo], 0);
   if R = mrYes then
    DBGrid1.DataSource.DataSet.Delete;

if R=mrNo then
   begin //ShowMessage('���������');
   end;   end;



procedure TForm2.Button5Click(Sender: TObject);
Var R:Word;
begin

 r:= MessageDLG('�� ������������� ������ �������?', mtWarning, [mbYes,mbNo], 0);
   if R = mrYes then


    form8.show;


if R=mrNo then
   begin //ShowMessage('���������');
   end;   end;

procedure TForm2.Button4Click(Sender: TObject);
Var R:Word;
begin

 r:= MessageDLG('�� ������������� ������ �������� ���������� � ��������� �������?', mtWarning, [mbYes,mbNo], 0);
   if R = mrYes then
  Form7.Show;

if R=mrNo then
   begin //ShowMessage('���������');
   end;   end;


procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm2.N9Click(Sender: TObject);
begin
Form10.show;
end;


procedure TForm2.Button6Click(Sender: TObject);
begin
Form7.Show;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
form2.Label2.Caption:='����� ����������: '+Form1.edit1.text;

Button10.Click;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
form13.show;
end;

procedure TForm2.DBGrid1DblClick(Sender: TObject);
begin
Button2.Click;
end;

procedure TForm2.DBGrid4DblClick(Sender: TObject);
begin
Button6.Click;
end;

procedure TForm2.DBGrid2DblClick(Sender: TObject);
begin
    form8.show;
end;

procedure TForm2.Button8Click(Sender: TObject);

  const
  M = 2;
  N = 7;

  //��������� Excel.

  //������ �������� XlBordersIndex. ����� ������������ �����.
  //
  //����� �� ��������� ������ - ����.
  xlDiagonalDown = 5;
  //����� �� ��������� ����� - �����.
  xlDiagonalUp = 6;
  //�����, ����������� �������� �����.
  xlEdgeBottom = 9;
  //�����, ����������� �������� �����.
  xlEdgeLeft = 7;
  //�����, ����������� �������� ������.
  xlEdgeRight = 10;
  //�����, ����������� �������� ������.
  xlEdgeTop = 8;
  //��� �������������� ����� ������ ���������.
  xlInsideHorizontal = 12;
  //��� ������������ ����� ������ ���������.
  xlInsideVertical = 11;

  //������ �������� XlBorderWeight. ����� ����� �����.
  //
  //(_________) �����������.
  xlContinuous = 1;
  //(_ _ _ _ _) � ���� ������������������ ����.
  xlDash = -4115;
  //(_._._._._) � ���� ���� � �����.
  xlDashDot = 4;
  //(_.._.._..) � ���� ���� � ������� �����.
  xlDashDotDot = 5;
  //(.........) � ���� �����.
  xlDot = -4118;
  //(=========) � ���� ������� �����.
  xlDouble = -4119;
  //(         ) ���������� �����.
  xlLineStyleNone = -4142;
  //(/././././) � ���� ��������� ���� � �����.
  xlSlantDashDot = 13;

  //������ �������� XlBorderWeight. ����� ������� �����.
  //
  //����� ������.
  xlHairline = 1;
  //������
  xlThin = 2;
  //�������.
  xlMedium = -4138;
  //�������.
  xlThick = 4;


var
 XLApp,Sheet,Colum, xlNone,  exRange :Variant;
 index,i:Integer;
begin
 XLApp:= CreateOleObject('Excel.Application');
 XLApp.Visible:=true;

 XLApp.Workbooks.Add(-4167);
 XLApp.Workbooks[1].WorkSheets[1].Name:='asd';
    XLApp.Selection.WrapText:=true;
    XLApp.Selection.HorizontalAlignment:=3;
    XLApp.Worksheets[1].PageSetup.Orientation := 2;
 Colum:=XLApp.Workbooks[1].WorkSheets['asd'].Columns;
 Colum.Columns[1].ColumnWidth:=31;
 Colum.Columns[2].ColumnWidth:=10;
 Colum.Columns[3].ColumnWidth:=7;
 Colum.Columns[4].ColumnWidth:=8;
 Colum.Columns[5].ColumnWidth:=8;
 Colum.Columns[6].ColumnWidth:=8;
  Colum.Columns[7].ColumnWidth:=8;
   Colum.Columns[8].ColumnWidth:=9;
    Colum.Columns[9].ColumnWidth:=8;
     Colum.Columns[10].ColumnWidth:=9;
      Colum.Columns[11].ColumnWidth:=8;
       Colum.Columns[12].ColumnWidth:=8;


 Colum:=XLApp.Workbooks[1].WorkSheets['ASD'].Rows;

 Colum.Rows[4].Font.Bold:=true;
 Colum.Rows[4].Font.Color:=clBlack;
  Colum.Rows[5].Font.Bold:=true;
 Colum.Rows[5].Font.Color:=clBlack;


 Colum.Rows[1].Font.Size:=8;
  Colum.Rows[2].Font.Size:=8;
   Colum.Rows[3].Font.Size:=8;

      Colum.Range['A1:C5'].Select;
 Sheet:=XLApp.Workbooks[1].WorkSheets['asd'];
 Sheet.Cells[1,9]:='������� ����� � ��-2';
  Sheet.Cells[2,9]:='���������� �������������� ����������� ������';
    Sheet.Cells[3,9]:='�� 30.10.1997 � 71�';
  Sheet.Cells[4,3]:='�������� �________________________';
  Sheet.Cells[5,2]:='����� ���������� � �������������������� ���������';
    Sheet.Cells[4,12]:='����';
    Sheet.Cells[5,10]:='����� �� ����';
    Sheet.Cells[5,12]:='0320001';
    Sheet.Cells[6,10]:='�� ����';

            Sheet.Cells.Rows[5.10].Font.Size:=11;



    Sheet.Cells[6,1]:='�����������___��� "���������"____________________';
        Sheet.Cells[7,1]:='����������� �������������___����� ���____________';

          Sheet.Cells[8,6]:='���� �����������';
              Sheet.Cells[8,7]:='��� ���� ��������';
               Sheet.Cells[8,8]:='����������� �������������';
               Sheet.Cells[8,9]:='��� ������������';
                Sheet.Cells[8,10]:='����������������� ����';
                 Sheet.Cells[9,10]:='����, �������';
                 Sheet.Cells[9,11]:='��� �������-������� �����';
                  Sheet.Cells[8,12]:='��������� ����� ����������';

                          Colum.Rows[8].Font.Size:=8;
                               Colum.Rows[9].Font.Size:=8;
                                    Colum.Rows[10].Font.Size:=8;



                                      Colum.Rows[14].Font.Size:=8;
                               Colum.Rows[15].Font.Size:=8;
                                    Colum.Rows[16].Font.Size:=8;



                    Sheet.Cells[8, 6].Resize[2,1].Merge;
                      Sheet.Cells[8, 7].Resize[2,1].Merge;
                        Sheet.Cells[8, 8].Resize[2,1].Merge;
                          Sheet.Cells[8, 9].Resize[2,1].Merge;
                            Sheet.Cells[8, 12].Resize[2,1].Merge;

                             Sheet.Cells[8, 10].Resize[1,2].Merge;
                             Sheet.Cells[14, 11].Resize[2,1].Merge;
                               Sheet.Cells[14, 12].Resize[2,1].Merge;




                   Sheet.Cells[11,1]:='�������, �., �.____________________________';
                   Sheet.Cells[12,1]:='���������__________________________________';
                   Sheet.Cells[13,1]:='���������__________________________________';

                           Sheet.Cells[14, 1].Resize[1,2].Merge;
                   Sheet.Cells[14,1]:='�������';
                    Sheet.Cells[14, 3].Resize[1,3].Merge;
                    Sheet.Cells[14,3]:='������';
                     Sheet.Cells[14, 6].Resize[1,3].Merge;
                   Sheet.Cells[14,6]:='����������';
                    Sheet.Cells[14, 9].Resize[1,2].Merge;
                     Sheet.Cells[14,9]:='��� �������';
  Colum.Rows[8].RowHeight:=20;
    Colum.Rows[15].RowHeight:=20;

                 XLApp.WorkBooks[1].WorkSheets[1].Cells[14, 1].HorizontalAlignment := 3;
                        XLApp.WorkBooks[1].WorkSheets[1].Cells[14, 3].HorizontalAlignment := 3;
                               XLApp.WorkBooks[1].WorkSheets[1].Cells[14, 6].HorizontalAlignment := 3;
                                      XLApp.WorkBooks[1].WorkSheets[1].Cells[14, 9].HorizontalAlignment := 3;                   ;
                                          XLApp.WorkBooks[1].WorkSheets[1].Cells[4, 12].HorizontalAlignment := 3;


 XLApp.WorkBooks[1].WorkSheets[1].Cells[4, 12].HorizontalAlignment := 3;

 XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 1].HorizontalAlignment := 3;
  XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 2].HorizontalAlignment := 3;
   XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 3].HorizontalAlignment := 3;
    XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 4].HorizontalAlignment := 3;
     XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 5].HorizontalAlignment := 3;
      XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 6].HorizontalAlignment := 3;
       XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 7].HorizontalAlignment := 3;
        XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 8].HorizontalAlignment := 3;
         XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 9].HorizontalAlignment := 3;
          XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 10].HorizontalAlignment := 3;
           XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 11].HorizontalAlignment := 3;
            XLApp.WorkBooks[1].WorkSheets[1].Cells[15, 12].HorizontalAlignment := 3;

               XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 1].HorizontalAlignment := 3;
  XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 2].HorizontalAlignment := 3;
   XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 3].HorizontalAlignment := 3;
    XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 4].HorizontalAlignment := 3;
     XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 5].HorizontalAlignment := 3;
      XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 6].HorizontalAlignment := 3;
       XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 7].HorizontalAlignment := 3;
        XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 8].HorizontalAlignment := 3;
         XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 9].HorizontalAlignment := 3;
          XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 10].HorizontalAlignment := 3;
           XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 11].HorizontalAlignment := 3;
            XLApp.WorkBooks[1].WorkSheets[1].Cells[16, 12].HorizontalAlignment := 3;
             XLApp.WorkBooks[1].WorkSheets[1].Cells[5, 12].HorizontalAlignment := 3;
               XLApp.WorkBooks[1].WorkSheets[1].Cells[8,10].HorizontalAlignment := 3;
                 XLApp.WorkBooks[1].WorkSheets[1].Cells[8, 11].HorizontalAlignment := 3;

                           XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 1].HorizontalAlignment := 3;
  XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 2].HorizontalAlignment := 3;
   XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 3].HorizontalAlignment := 3;
    XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 4].HorizontalAlignment := 3;
     XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 5].HorizontalAlignment := 3;
      XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 6].HorizontalAlignment := 3;
       XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 7].HorizontalAlignment := 3;
        XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 8].HorizontalAlignment := 3;
         XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 9].HorizontalAlignment := 3;
          XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 10].HorizontalAlignment := 3;
           XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 11].HorizontalAlignment := 3;
            XLApp.WorkBooks[1].WorkSheets[1].Cells[9, 12].HorizontalAlignment := 3;
              //    XLApp.ActiveWorkBook.ActiveSheet.StandartHeight:=14 ;
            //  Sheet.Cells[9,6].ColumnHeight:=30;


 Sheet.Cells[15,1]:='������������, �����, ������';
 Sheet.Cells[15,2]:='�������������� �����';
 Sheet.Cells[15,3]:='����';
 Sheet.Cells[15,4]:='����������';
 Sheet.Cells[15,5]:='������� ���������';
 Sheet.Cells[15,6]:='����';
 Sheet.Cells[15,7]:='����������';
 Sheet.Cells[15,8]:='������� ����������';
 Sheet.Cells[15,9]:='�����';
 Sheet.Cells[15,10]:='����';
 Sheet.Cells[14,11]:='���� ������';
 Sheet.Cells[14,12]:='����� ��������';

  Sheet.Cells[16,1]:='1';
 Sheet.Cells[16,2]:='2';
 Sheet.Cells[16,3]:='3';
 Sheet.Cells[16,4]:='4';
 Sheet.Cells[16,5]:='5';
 Sheet.Cells[16,6]:='6';
 Sheet.Cells[16,7]:='7';
 Sheet.Cells[16,8]:='8';
 Sheet.Cells[16,9]:='9';
 Sheet.Cells[16,10]:='10';
 Sheet.Cells[16,11]:='11';
 Sheet.Cells[16,12]:='12';

 index:=17;
 DM.ADOTable1.First;
for i:=0 to DM.ADOTable1.RecordCount-1 do
 begin
   Sheet.Cells[index,1]:=DM.ADOTable1.Fields.Fields[1].AsString + ' ' +  DM.ADOTable1.Fields.Fields[3].AsString;


   Inc(index);
   DM.ADOTable1.Next;

      Colum.Rows[INDEX-1].Font.Size:=8;


 end;
      Sheet.Cells[15,1].WrapText := True;
Sheet.Cells[15,2].WrapText := True;
Sheet.Cells[15,3].WrapText := True;
Sheet.Cells[15,4].WrapText := True;
Sheet.Cells[15,5].WrapText := True;
Sheet.Cells[15,6].WrapText := True;
Sheet.Cells[15,7].WrapText := True;
Sheet.Cells[15,8].WrapText := True;
Sheet.Cells[15,9].WrapText := True;
Sheet.Cells[15,10].WrapText := True;
Sheet.Cells[15,11].WrapText := True;
Sheet.Cells[15,12].WrapText := True;
Sheet.Cells[8,1].WrapText := True;
Sheet.Cells[8,2].WrapText := True;
Sheet.Cells[8,3].WrapText := True;
Sheet.Cells[8,4].WrapText := True;
Sheet.Cells[8,5].WrapText := True;
Sheet.Cells[8,6].WrapText := True;
Sheet.Cells[8,7].WrapText := True;
Sheet.Cells[8,8].WrapText := True;
Sheet.Cells[8,9].WrapText := True;
Sheet.Cells[8,10].WrapText := True;
Sheet.Cells[8,11].WrapText := True;
Sheet.Cells[8,12].WrapText := True;
Sheet.Cells[9,1].WrapText := True;
Sheet.Cells[9,2].WrapText := True;
Sheet.Cells[9,3].WrapText := True;
Sheet.Cells[9,4].WrapText := True;
Sheet.Cells[9,5].WrapText := True;
Sheet.Cells[9,6].WrapText := True;
Sheet.Cells[9,7].WrapText := True;
Sheet.Cells[9,8].WrapText := True;
Sheet.Cells[9,9].WrapText := True;
Sheet.Cells[9,10].WrapText := True;
Sheet.Cells[9,11].WrapText := True;
Sheet.Cells[9,12].WrapText := True;



     exRange := Sheet.Range[
    Sheet.Cells[14, 1],
    Sheet.Cells[index-1, 12]
  ];
  exRange.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
  exRange.Borders[xlInsideHorizontal].Weight := xlThin;
  exRange.Borders[xlInsideVertical].LineStyle := xlContinuous;
  exRange.Borders[xlInsideVertical].Weight := xlThin;

  exRange.Borders[xlEdgeTop].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeBottom].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeLeft].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeRight].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeTop].Weight := xlThick;
  exRange.Borders[xlEdgeBottom].Weight := xlThick;
  exRange.Borders[xlEdgeLeft].Weight := xlThick;
  exRange.Borders[xlEdgeRight].Weight := xlThick;


  exRange := Sheet.Range[
    Sheet.Cells[8, 6],
    Sheet.Cells[10, 12]
  ];
  exRange.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
  exRange.Borders[xlInsideHorizontal].Weight := xlThin;
  exRange.Borders[xlInsideVertical].LineStyle := xlContinuous;
  exRange.Borders[xlInsideVertical].Weight := xlThin;

  exRange.Borders[xlEdgeTop].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeBottom].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeLeft].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeRight].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeTop].Weight := xlThick;
  exRange.Borders[xlEdgeBottom].Weight := xlThick;
  exRange.Borders[xlEdgeLeft].Weight := xlThick;
  exRange.Borders[xlEdgeRight].Weight := xlThick;



   exRange := Sheet.Range[
    Sheet.Cells[4, 12],
    Sheet.Cells[6, 12]
  ];
  exRange.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
  exRange.Borders[xlInsideHorizontal].Weight := xlThin;
  exRange.Borders[xlInsideVertical].LineStyle := xlContinuous;
  exRange.Borders[xlInsideVertical].Weight := xlThin;

  exRange.Borders[xlEdgeTop].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeBottom].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeLeft].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeRight].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeTop].Weight := xlThick;
  exRange.Borders[xlEdgeBottom].Weight := xlThick;
  exRange.Borders[xlEdgeLeft].Weight := xlThick;
  exRange.Borders[xlEdgeRight].Weight := xlThick;
                                                                                               



Sheet.Cells[INDEX+1,1]:='�������� ��������_________________   _____________  ___________________________';
Sheet.Cells[INDEX+2,1]:='��������������������������������������������(���������)���������������(�������)�����������(����������� �������)�';
Sheet.Cells[INDEX+3,1]:='����������������������������������������"___"________________  20___�.';




 end;













procedure TForm2.BitBtn6Click(Sender: TObject);
begin
 Form16.show;
end;

procedure TForm2.BitBtn7Click(Sender: TObject);
begin
Form18.show;
end;

procedure TForm2.Button9Click(Sender: TObject);
var tmp: String;
begin
tmp:='';
 with Dm.ADOTable5 do
  begin
   DisableControls;


   while not eof do
    begin
     if (Tmp<>'') and (FieldByName('Name_otdel').AsString<>Tmp) then
      NetTree.Items.Add(nil,FieldByName('id_otdel').AsString);
       NetTree.Items.AddChild(nil,FieldByName('Name_otdel').AsString);



            Tmp:=FieldByName('Name_otdel').AsString;
     Next;
    end;
   EnableControls;
  end;

end;

procedure TForm2.Button10Click(Sender: TObject);

var S1, S2: string; N1, N2: TTreeNode;
begin
DM.ADOQuery2.close;
DM.ADOQuery2.SQL.Clear;
DM.ADOQuery2.SQL.Add('select * from FIO order by id_otdel');
DM.ADOQuery2.Open;

  try
    DM.ADOQuery2.First;
    S1 := '';
    S2 := '';

    while not DM.ADOQuery2.Eof do
    begin
      if S1<>DM.ADOQuery2.Fields[6].AsString then
      begin
        S1 := DM.ADOQuery2.Fields[6].AsString;
        S2 := '';
        N1 := NetTree.Items.Add(nil,S1);
      end;
      if S2<>DM.ADOQuery2.Fields[1].AsString then
      begin
        S2 :=DM.ADOQuery2.Fields[0].AsString+ ' ' +DM.ADOQuery2.Fields[1].AsString+' ' +DM.ADOQuery2.Fields[2].AsString+' ' +DM.ADOQuery2.Fields[3].AsString;
        N2 := NetTree.Items.AddChild(N1,S2);
      end;

      DM.ADOQuery2.Next;
    end;
  finally
  
  end;
end;
    //ExtractFilePath(Application.ExeName)







procedure TForm2.NetTreeClick(Sender: TObject);
var
  s,sp,spp:string;
  a,b:char;
Sq,S1q: String;
    iq,jq: Integer;
begin
 try
      Sq := PChar(NetTree.Selected.Text);
  for iq := 1 to Length(Sq) do
    if Sq[iq] = ' ' then
      Break;
  jq := iq+1;
  while Sq[jq] <> ' ' do
    begin
      S1q := S1q+Sq[jq];
      jq := jq+1;
    end;

      Edit2.Text:=s1q  ;
   spp:=  PChar(NetTree.Selected.Text);
     Delete(spp,Pos(' ',spp),Length(spp));
     s:=PChar(NetTree.Selected.Text);
     sp:=PChar(NetTree.Selected.Text);
     Delete(sp,Pos(' ',sp),Length(sp));
      Edit1.Text:=sp;

Delete(s,Pos(' ',s),Length(s));







            DM.ADOTable1.Filtered:= false;
                DM.ADOTable1.Filter:= '';


 except
                   try
                   DM.ADOTable1.Active:= false;
     DM.ADOTable1.Filtered:= True;
     DM.ADOTable1.Filter:= '[id_fio] = '+s;
                      DM.ADOTable1.Active:= true;
                                 Form2.DBGrid1.Refresh;
                                    Form2.DBGrid1.Repaint;
                                      Form2.DBGrid1.Update;
                                        Form2.DBGrid1.UpdateControlState;

                   except



 end;
 end; end;

procedure TForm2.Button11Click(Sender: TObject);
begin
 DM.ADOTable1.Active:= False;
     DM.ADOTable1.Filtered:= True;
     DM.ADOTable1.Filter:= '[id_fio] = '''+Edit1.Text+'';

     DM.ADOTable1.Active:= True;

end;









procedure TForm2.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  s,sp,spp:string;
  a,b:char;
Sq,S1q: String;
    iq,jq: Integer;
begin
 try
      Sq := PChar(NetTree.Selected.Text);
  for iq := 1 to Length(Sq) do
    if Sq[iq] = ' ' then
      Break;
  jq := iq+1;
  while Sq[jq] <> ' ' do
    begin
      S1q := S1q+Sq[jq];
      jq := jq+1;
    end;

      Edit2.Text:=s1q  ;
   spp:=  PChar(NetTree.Selected.Text);
     Delete(spp,Pos(' ',spp),Length(spp));
     s:=PChar(NetTree.Selected.Text);
     sp:=PChar(NetTree.Selected.Text);
     Delete(sp,Pos(' ',sp),Length(sp));
      Edit1.Text:=sp;

Delete(s,Pos(' ',s),Length(s));









     DM.ADOTable1.Filtered:= True;
     DM.ADOTable1.Filter:= '[id_fio] = '+s;






 except

 end; end;

procedure TForm2.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  s,sp,spp:string;
  a,b:char;
Sq,S1q: String;
    iq,jq: Integer;
begin
 try
      Sq := PChar(NetTree.Selected.Text);
  for iq := 1 to Length(Sq) do
    if Sq[iq] = ' ' then
      Break;
  jq := iq+1;
  while Sq[jq] <> ' ' do
    begin
      S1q := S1q+Sq[jq];
      jq := jq+1;
    end;

      Edit2.Text:=s1q  ;
   spp:=  PChar(NetTree.Selected.Text);
     Delete(spp,Pos(' ',spp),Length(spp));
     s:=PChar(NetTree.Selected.Text);
     sp:=PChar(NetTree.Selected.Text);
     Delete(sp,Pos(' ',sp),Length(sp));
      Edit1.Text:=sp;

Delete(s,Pos(' ',s),Length(s));









     DM.ADOTable1.Filtered:= True;
     DM.ADOTable1.Filter:= '[id_fio] = '+s;






 except

 end; end;



procedure TForm2.DBGrid1CellClick(Column: TColumn);
var
  s,sp,spp:string;
  a,b:char;
Sq,S1q: String;
    iq,jq: Integer;
begin
 try
      Sq := PChar(NetTree.Selected.Text);
  for iq := 1 to Length(Sq) do
    if Sq[iq] = ' ' then

  jq := iq+1;
  while Sq[jq] <> ' ' do
    begin
      S1q := S1q+Sq[jq];
      jq := jq+1;

    end;

         Edit2.Text:=s1q  ;
   spp:=  PChar(NetTree.Selected.Text);
     Delete(spp,Pos(' ',spp),Length(spp));
     s:=PChar(NetTree.Selected.Text);
     sp:=PChar(NetTree.Selected.Text);
     Delete(sp,Pos(' ',sp),Length(sp));
      Edit1.Text:=sp;

Delete(s,Pos(' ',s),Length(s));








           DM.ADOTable1.Filtered:= True;

     DM.ADOTable1.Filter:= '[id_fio] = '+s;






 except
    ShowMessage('�������� ���');
 end; end;

procedure TForm2.Button12Click(Sender: TObject);

var
  i: integer;
begin
  for i := 0 to NetTree.Items.Count - 1 do
    if Pos(AnsiUpperCase(Edit3.Text),AnsiUpperCase(NetTree.Items[i].Text)) <> 0 then
    begin
      NetTree.Selected := NetTree.Items[i];
      NetTree.SetFocus;
      Edit3.Text := '';
      break;
    end;
end;





end.





