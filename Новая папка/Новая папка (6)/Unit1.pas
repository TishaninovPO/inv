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
  exApp, exBook, exSheet, exRange : Variant;
  Arr : array of array of Integer;
  i, j, Row1, Row2, Col1, Col2 : Integer;
begin
  (*
  try
    //Попытка подключиться к уже запущенному экземпляру Excel.
    exApp := GetActiveOleObject('Excel.Application');
  except
    try
      //Попытка запустить и подключиться к Excel.
      exApp := CreateOleObject('Excel.Application');
    except
      MessageDlg(
        'Не удалось подключиться к Excel. Действие отменено.'
        ,mtError, [mbOK], 0
      );
      Exit;
    end;
  end;
  *)

  //Попытка запустить и подключиться к Excel.
  exApp := CreateOleObject('Excel.Application');

  SetLength(Arr, M, N);
  Randomize;
  for i := 0 to M - 1 do
  for j := 0 to N - 1 do begin
    Arr[i, j] := Random(10); //0..9.
  end;

  //Делаем видимым окно Excel.
  exApp.Visible := True;
  //Создаём рабочую книгу.
  exBook := exApp.Workbooks.Add;
  //Подключаемся к первому листу раб. книги.
  exSheet := exBook.Worksheets[1];

  //Для ускорения вывода данных в Excel, можно отключать обновление окна Excel.
  //Это полезно выполнять в случае, когда на лист передаётся много данных -
  //например, таблица из нескольких тысяч строк.
  //exApp.ScreenUpdating := False;

  //Надпись.
  exSheet.Cells[2, 2].Value := 'Таблица, переданная из внешней программы.';

  //Координаты левого верхнего угла таблицы.
  Row1 := 3;
  Col1 := 3;

  //Шапка таблицы.
  for j := 0 to N - 1 do begin
    exSheet.Cells[Row1, Col1 + j].Value := 'Колонка №' + IntToStr(j + 1);
  end;

  //Переносим данные на лист Excel.
  Row2 := Row1 + 1;
  for i := 0 to M - 1 do begin
    Col2 := Col1;
    for j := 0 to N - 1 do begin
      exSheet.Cells[Row2, Col2].Value := Arr[i, j];
      Inc(Col2);
    end;
    Inc(Row2);
  end;

  //Координаты правого нижнего угла таблицы.
  Dec(Row2);
  Dec(Col2);

  //Выравниваем ширину столбцов таблицы по ширине содержащихся в них данных.
  for j := 0 to N - 1 do begin
    exSheet.Columns[Col1 + j].AutoFit;
  end;

  //Получаем ссылку на диапазон, содержащий таблицу на листе Excel.
  exRange := exSheet.Range[
    exSheet.Cells[Row1, Col1],
    exSheet.Cells[Row2, Col2]
  ];

  //Обрамление таблицы.
  //Внутренние линии делаем сплошными и тонкими.
  exRange.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
  exRange.Borders[xlInsideHorizontal].Weight := xlThin;
  exRange.Borders[xlInsideVertical].LineStyle := xlContinuous;
  exRange.Borders[xlInsideVertical].Weight := xlThin;
  //Обрамление диапазона выполняем слошными толстыми линиями.
  exRange.Borders[xlEdgeTop].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeBottom].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeLeft].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeRight].LineStyle := xlContinuous;
  exRange.Borders[xlEdgeTop].Weight := xlThick;
  exRange.Borders[xlEdgeBottom].Weight := xlThick;
  exRange.Borders[xlEdgeLeft].Weight := xlThick;
  exRange.Borders[xlEdgeRight].Weight := xlThick;

  //Включаем режим обновления окна Excel.
  //exApp.ScreenUpdating := True;
 
  //Отключаемся от объектов OLE-автоматизации.
  //В этом примере это делать не обязательно, т. к. соответствующие
  //переменные являются локальными и связанные с ними объекты будут
  //освобождены автоматически при выходе из процедуры.
  //Но если переменные являются глобальными и нам они в дальнейшем
  //не понадобятся, то следует их освободить.
  //Код обнуления, в случае глобальных переменных, следует добавить,
  //например, в обработчик события OnDestroy формы. Или в раздел
  //finalization модуля.
  //Если объекты OLE-автоматизации не освободить, то процесс Excel и связанные
  //объекты Excel так и останутся в памяти.
  exRange := Unassigned;
  exSheet := Unassigned;
  exBook := Unassigned;
  exApp := Unassigned;
end;

end.
