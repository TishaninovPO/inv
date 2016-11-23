unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  DB,  ADODB, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls, Menus, DBCtrls, ImgList, ShellAPI, ComObj, DBTables,
  Gauges, jpeg ,StdActns,IniFiles, Mask;

type
  TForm16 = class(TForm)
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

ids:string;
implementation

uses Unit2;

{$R *.dfm}

procedure TForm16.BitBtn1Click(Sender: TObject);

  const
  M = 2;
  N = 7;

  //Константы Excel.

  //Группа констант XlBordersIndex. Задаёт расположение линий.
  //
  //Линия по диагонали сверху - вниз.
  xlDiagonalDown = 5;
  //Линия по диагонали снизу - вверх.
  xlDiagonalUp = 6;
  //Линия, обрамляющая диапазон снизу.
  xlEdgeBottom = 9;
  //Линия, обрамляющая диапазон слева.
  xlEdgeLeft = 7;
  //Линия, обрамляющая диапазон справа.
  xlEdgeRight = 10;
  //Линия, обрамляющая диапазон сверху.
  xlEdgeTop = 8;
  //Все горизонтальные линии внутри диапазона.
  xlInsideHorizontal = 12;
  //Все вертикальные линии внутри диапазона.
  xlInsideVertical = 11;

  //Группа констант XlBorderWeight. Задаёт стиль линий.
  //
  //(_________) Непрерывная.
  xlContinuous = 1;
  //(_ _ _ _ _) В виде последовательности тире.
  xlDash = -4115;
  //(_._._._._) В виде тире и точек.
  xlDashDot = 4;
  //(_.._.._..) В виде тире и двойных точек.
  xlDashDotDot = 5;
  //(.........) В виде точек.
  xlDot = -4118;
  //(=========) В виде двойной линии.
  xlDouble = -4119;
  //(         ) Отсутствие линии.
  xlLineStyleNone = -4142;
  //(/././././) В виде наклонных тире и точек.
  xlSlantDashDot = 13;

  //Группа констант XlBorderWeight. Задаёт толщину линий.
  //
  //Очень тонкая.
  xlHairline = 1;
  //Тонкая
  xlThin = 2;
  //Средняя.
  xlMedium = -4138;
  //Толстая.
  xlThick = 4;


var
 XLApp,Sheet,Colum, xlNone,  exRange :Variant;
 index,i:Integer;
begin
        DM.ADOTable1.Filter:= '';
    ids:= DBEdit1.Text ;


   DM.ADOTable1.Active:= False;
     DM.ADOTable1.Filtered:= True;
     DM.ADOTable1.Filter:= '[id_fio] ='+ids;

     DM.ADOTable1.Active:= True;







 XLApp:= CreateOleObject('Excel.Application');
 XLApp.Visible:=true;

 XLApp.Workbooks.Add(-4167);
 XLApp.Workbooks[1].WorkSheets[1].Name:='asd';
    XLApp.Selection.WrapText:=true;
    XLApp.Selection.HorizontalAlignment:=3;
    XLApp.Worksheets[1].PageSetup.Orientation := 2;
 Colum:=XLApp.Workbooks[1].WorkSheets['asd'].Columns;
 Colum.Columns[1].ColumnWidth:=30;
 Colum.Columns[2].ColumnWidth:=12;
 Colum.Columns[3].ColumnWidth:=7;
 Colum.Columns[4].ColumnWidth:=8;
 Colum.Columns[5].ColumnWidth:=8;
 Colum.Columns[6].ColumnWidth:=7;
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
 Sheet.Cells[1,9]:='Типовая форма № МБ-2';
  Sheet.Cells[2,9]:='Утверждена Постановлением Госкомстата России';
    Sheet.Cells[3,9]:='от 30.10.1997 № 71а';
  Sheet.Cells[4,3]:='КАРТОЧКА №________________________';
  Sheet.Cells[5,2]:='учета малоценных и быстроизнашивающихся предметов';
    Sheet.Cells[4,12]:='Коды';
    Sheet.Cells[5,10]:='Форма по ОКУД';
    Sheet.Cells[5,12]:='0320001';
    Sheet.Cells[6,10]:='по ОКПО';

            Sheet.Cells.Rows[5.10].Font.Size:=11;



    Sheet.Cells[6,1]:='Организация___ООО "Сибэлетро"____________________';
        Sheet.Cells[7,1]:='Структурное подразделение___отдел АСУ____________';

          Sheet.Cells[8,6]:='Дата составления';

              Sheet.Cells[8,7]:='Код вида операции';
               Sheet.Cells[8,8]:='Структурное подразделение';
               
               Sheet.Cells[8,9]:='Вид деятельности';
                Sheet.Cells[8,10]:='Корреспондирующий счет';
                 Sheet.Cells[9,10]:='счет, субсчет';
                 Sheet.Cells[9,11]:='код аналити-ческого учета';
                  Sheet.Cells[8,12]:='Табельный номер получателя';

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




                   Sheet.Cells[11,1]:='Фамилия, и., о.___'+DM.ADOTable1.Fields.Fields[9].AsString +' ' +DM.ADOTable1.Fields.Fields[10].AsString+' '+DM.ADOTable1.Fields.Fields[11].AsString+'_____';

                   Sheet.Cells[12,1]:='Профессия__________________________________';
                   Sheet.Cells[13,1]:='Должность__'+DM.ADOTable1.Fields.Fields[29].AsString+'___';

                           Sheet.Cells[14, 1].Resize[1,2].Merge;
                   Sheet.Cells[14,1]:='Предмет';
                    Sheet.Cells[14, 3].Resize[1,3].Merge;
                    Sheet.Cells[14,3]:='Выдано';
                     Sheet.Cells[14, 6].Resize[1,3].Merge;
                   Sheet.Cells[14,6]:='Возвращено';
                    Sheet.Cells[14, 9].Resize[1,2].Merge;
                     Sheet.Cells[14,9]:='Акт выбытия';
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


 Sheet.Cells[15,1]:='Наименование, марка, размер';
 Sheet.Cells[15,2]:='Номенклатурный номер';
 Sheet.Cells[15,3]:='Дата';
 Sheet.Cells[15,4]:='Количество';
 Sheet.Cells[15,5]:='Подпись работника';
 Sheet.Cells[15,6]:='Дата';
 Sheet.Cells[15,7]:='Количество';
 Sheet.Cells[15,8]:='Подпись кладовщика';
 Sheet.Cells[15,9]:='номер';
 Sheet.Cells[15,10]:='дата';
 Sheet.Cells[14,11]:='Срок службы';
 Sheet.Cells[14,12]:='Номер паспорта';

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
                                                                                               



Sheet.Cells[INDEX+1,1]:='Карточку заполнил_________________   _____________  ___________________________';
Sheet.Cells[INDEX+2,1]:='                                            (должность)               (подпись)           (расшифровка подписи) ';
Sheet.Cells[INDEX+3,1]:='                                        "___"________________  20___г.';




 end;

end.
