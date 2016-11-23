unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  DB,  ADODB, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls, Menus, DBCtrls, ImgList, ShellAPI, ComObj, DBTables,
  Gauges, jpeg ,StdActns,IniFiles, Mask;

type
  TForm18 = class(TForm)
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;
   ids:string;
implementation

uses Unit2;

{$R *.dfm}

procedure TForm18.BitBtn1Click(Sender: TObject);

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
        DM.ADOTable1.Filter:= '';
    ids:= DBEdit3.Text ;


   DM.ADOTable1.Active:= False;
     DM.ADOTable1.Filtered:= True;
     DM.ADOTable1.Filter:= '[id_mesto] ='+ids;

     DM.ADOTable1.Active:= True;







 XLApp:= CreateOleObject('Excel.Application');
 XLApp.Visible:=true;

 XLApp.Workbooks.Add(-4167);
 XLApp.Workbooks[1].WorkSheets[1].Name:='asd';
    XLApp.Selection.WrapText:=true;

    XLApp.Worksheets[1].PageSetup.Orientation := 2;
 Colum:=XLApp.Workbooks[1].WorkSheets['asd'].Columns;
 Colum.Columns[1].ColumnWidth:=29;
 Colum.Columns[2].ColumnWidth:=29;
 Colum.Columns[3].ColumnWidth:=5;
 Colum.Columns[4].ColumnWidth:=15;
 Colum.Columns[5].ColumnWidth:=10;
 Colum.Columns[6].ColumnWidth:=20;
  Colum.Columns[7].ColumnWidth:=13;



 Colum:=XLApp.Workbooks[1].WorkSheets['ASD'].Rows;




 Colum.Rows[1].Font.Size:=8;
  Colum.Rows[2].Font.Size:=8;
   Colum.Rows[3].Font.Size:=8;

      Colum.Range['A1:C5'].Select;
 Sheet:=XLApp.Workbooks[1].WorkSheets['asd'];









  XLApp.WorkBooks[1].WorkSheets[1].Cells[4, 1].HorizontalAlignment := 3;
  XLApp.WorkBooks[1].WorkSheets[1].Cells[4, 2].HorizontalAlignment := 3;
   XLApp.WorkBooks[1].WorkSheets[1].Cells[4, 3].HorizontalAlignment := 3;
    XLApp.WorkBooks[1].WorkSheets[1].Cells[4, 4].HorizontalAlignment := 3;
     XLApp.WorkBooks[1].WorkSheets[1].Cells[4, 5].HorizontalAlignment := 3;
      XLApp.WorkBooks[1].WorkSheets[1].Cells[4, 6].HorizontalAlignment := 3;
       XLApp.WorkBooks[1].WorkSheets[1].Cells[4, 7].HorizontalAlignment := 3;






  XLApp.WorkBooks[1].WorkSheets[1].Cells[3, 1].HorizontalAlignment := 3;
  XLApp.WorkBooks[1].WorkSheets[1].Cells[3, 2].HorizontalAlignment := 3;
   XLApp.WorkBooks[1].WorkSheets[1].Cells[3, 3].HorizontalAlignment := 3;
    XLApp.WorkBooks[1].WorkSheets[1].Cells[3, 4].HorizontalAlignment := 3;
     XLApp.WorkBooks[1].WorkSheets[1].Cells[3, 5].HorizontalAlignment := 3;
      XLApp.WorkBooks[1].WorkSheets[1].Cells[3, 6].HorizontalAlignment := 3;
       XLApp.WorkBooks[1].WorkSheets[1].Cells[3, 7].HorizontalAlignment := 3;



 Sheet.Cells[3,1]:='���';
 Sheet.Cells[3,2]:='������������, �����, ������';
 Sheet.Cells[3,3]:='���-��';
 Sheet.Cells[3,4]:='S/N';
 Sheet.Cells[3,5]:='���.�����';
 Sheet.Cells[3,6]:='����� ���������';
 Sheet.Cells[3,7]:='�����-���';

           Colum.Rows[4].Font.Size:=8;
  Sheet.Cells[4,1]:='1';
 Sheet.Cells[4,2]:='2';
 Sheet.Cells[4,3]:='3';
 Sheet.Cells[4,4]:='4';
 Sheet.Cells[4,5]:='5';
 Sheet.Cells[4,6]:='6';
 Sheet.Cells[4,7]:='7';


 index:=5;
 DM.ADOTable1.First;
for i:=0 to DM.ADOTable1.RecordCount-1 do
 begin


   Sheet.Cells[index,1]:=DM.ADOTable1.Fields.Fields[9].AsString + ' ' +  DM.ADOTable1.Fields.Fields[10].AsString+ ' ' +  DM.ADOTable1.Fields.Fields[11].AsString;
   Sheet.Cells[index,2]:=DM.ADOTable1.Fields.Fields[1].AsString + ' ' +  DM.ADOTable1.Fields.Fields[3].AsString;
   Sheet.Cells[index,3]:=DM.ADOTable1.Fields.Fields[27].AsString;
   Sheet.Cells[index,4]:=DM.ADOTable1.Fields.Fields[5].AsString;
   Sheet.Cells[index,5]:=DM.ADOTable1.Fields.Fields[6].AsString;
   Sheet.Cells[index,6]:=DM.ADOTable1.Fields.Fields[14].AsString;
   Sheet.Cells[index,7]:=' '+DM.ADOTable1.Fields.Fields[30].AsString;
      Sheet.range[Sheet.Cells[index,7], Sheet.Cells[index,7] ].numberformat:='0';

   Inc(index);
   DM.ADOTable1.Next;

      Colum.Rows[INDEX-1].Font.Size:=8;


 end;
Sheet.Cells[2,1].WrapText := True;
Sheet.Cells[2,2].WrapText := True;
Sheet.Cells[2,3].WrapText := True;
Sheet.Cells[2,4].WrapText := True;
Sheet.Cells[2,5].WrapText := True;
Sheet.Cells[2,6].WrapText := True;
Sheet.Cells[2,7].WrapText := True;





     exRange := Sheet.Range[
    Sheet.Cells[3, 1],
    Sheet.Cells[index-1, 7]
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







 end;
end.
