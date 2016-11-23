unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    ADOTable1ID_gruppa: TAutoIncField;
    ADOTable1Naimenovanie: TWideStringField;
    ADOTable2ID_student: TAutoIncField;
    ADOTable2FIO: TWideStringField;
    ADOTable2Mob: TIntegerField;
    ADOTable2Pol: TWideStringField;
    ADOTable2Gr: TStringField;
    ADOTable2Gruppa: TIntegerField;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation
uses unit1;

{$R *.dfm}


end.
