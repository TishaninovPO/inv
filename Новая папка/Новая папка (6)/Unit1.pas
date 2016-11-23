unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  ComObj;

procedure TForm1.Button1Click(Sender: TObject);
const
  M = 7;
  N = 10;

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
  exApp, exBook, exSheet, exRange : Variant;
  Arr : array of array of Integer;
  i, j, Row1, Row2, Col1, Col2 : Integer;
begin
  (*
  try
    //������� ������������ � ��� ����������� ���������� Excel.
    exApp := GetActiveOleObject('Excel.Application');
  except
    try
      //������� ��������� � ������������ � Excel.
      exApp := CreateOleObject('Excel.Application');
    except
      MessageDlg(
        '�� ������� ������������ � Excel. �������� ��������.'
        ,mtError, [mbOK], 0
      );
      Exit;
    end;
  end;
  *)

  //������� ��������� � ������������ � Excel.
  exApp := CreateOleObject('Excel.Application');

  SetLength(Arr, M, N);
  Randomize;
  for i := 0 to M - 1 do
  for j := 0 to N - 1 do begin
    Arr[i, j] := Random(10); //0..9.
  end;

  //������ ������� ���� Excel.
  exApp.Visible := True;
  //������ ������� �����.
  exBook := exApp.Workbooks.Add;
  //������������ � ������� ����� ���. �����.
  exSheet := exBook.Worksheets[1];

  //��� ��������� ������ ������ � Excel, ����� ��������� ���������� ���� Excel.
  //��� ������� ��������� � ������, ����� �� ���� ��������� ����� ������ -
  //��������, ������� �� ���������� ����� �����.
  //exApp.ScreenUpdating := False;

  //�������.
  exSheet.Cells[2, 2].Value := '�������, ���������� �� ������� ���������.';

  //���������� ������ �������� ���� �������.
  Row1 := 3;
  Col1 := 3;

  //����� �������.
  for j := 0 to N - 1 do begin
    exSheet.Cells[Row1, Col1 + j].Value := '������� �' + IntToStr(j + 1);
  end;

  //��������� ������ �� ���� Excel.
  Row2 := Row1 + 1;
  for i := 0 to M - 1 do begin
    Col2 := Col1;
    for j := 0 to N - 1 do begin
      exSheet.Cells[Row2, Col2].Value := Arr[i, j];
      Inc(Col2);
    end;
    Inc(Row2);
  end;

  //���������� ������� ������� ���� �������.
  Dec(Row2);
  Dec(Col2);

  //����������� ������ �������� ������� �� ������ ������������ � ��� ������.
  for j := 0 to N - 1 do begin
    exSheet.Columns[Col1 + j].AutoFit;
  end;

  //�������� ������ �� ��������, ���������� ������� �� ����� Excel.
  exRange := exSheet.Range[
    exSheet.Cells[Row1, Col1],
    exSheet.Cells[Row2, Col2]
  ];

  //���������� �������.
  //���������� ����� ������ ��������� � �������.
  exRange.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
  exRange.Borders[xlInsideHorizontal].Weight := xlThin;
  exRange.Borders[xlInsideVertical].LineStyle := xlContinuous;
  exRange.Borders[xlInsideVertical].Weight := xlThin;
  //���������� ��������� ��������� �������� �������� �������.
  exRange.Borders[xlEdgeTop].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeBottom].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeLeft].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeRight].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeTop].Weight := xlThick;
  exRange.Borders[xlEdgeBottom].Weight := xlThick;
  exRange.Borders[xlEdgeLeft].Weight := xlThick;
  exRange.Borders[xlEdgeRight].Weight := xlThick;

  //�������� ����� ���������� ���� Excel.
  //exApp.ScreenUpdating := True;
 
  //����������� �� �������� OLE-�������������.
  //� ���� ������� ��� ������ �� �����������, �. �. ���������������
  //���������� �������� ���������� � ��������� � ���� ������� �����
  //����������� ������������� ��� ������ �� ���������.
  //�� ���� ���������� �������� ����������� � ��� ��� � ����������
  //�� �����������, �� ������� �� ����������.
  //��� ���������, � ������ ���������� ����������, ������� ��������,
  //��������, � ���������� ������� OnDestroy �����. ��� � ������
  //finalization ������.
  //���� ������� OLE-������������� �� ����������, �� ������� Excel � ���������
  //������� Excel ��� � ��������� � ������.
  exRange := Unassigned;
  exSheet := Unassigned;
  exBook := Unassigned;
  exApp := Unassigned;
end;

end.
