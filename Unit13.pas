unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ShellAPI, StdCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  TForm13 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Button2: TButton;
    DBEdit1: TDBEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses Unit2, Unit14, Unit15;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
 const
  NewPath = '/doc/';
var
  CurrentFile, NewFile: string;
 OpStruc:TSHFileOpStruct;
 frombuf,tobuf:array[0..128] of Char;
    begin
    with OpenDialog1 do
    OpenDialog1.InitialDir := 'C:\';
   OpenDialog1.Filename := '*.*';
   OpenDialog1.Options := [ofAllowMultiSelect, ofFileMustExist];
   If OpenDialog1.Execute Then
    begin
      CurrentFile := OpenDialog1.FileName;
    NewFile := ExtractFilePath(Application.ExeName)+ NewPath + ExtractFileName(CurrentFile);

    
        if FileExists(NewFile) then
      DeleteFile(NewFile);
    CopyFile(PChar(CurrentFile), PChar(NewFile), True)
  end;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
DM.ADOTable10.Append;
Form14.show;
end;

procedure TForm13.Button3Click(Sender: TObject);
begin
   DM.adotable10.Edit;


DBEdit1.Text:=
DM.ADOtable1.Fields.Fields[0].AsString ;



DBEdit1.Text:= DM.ADOtable1.Fields.Fields[0].AsString  ;
DM.ADOtable10.Fields.Fields[1].AsString:= DBEdit1.Text;
 // DM.ADOTable8.FieldByName('id').AsString :='20';


end;

procedure TForm13.FormActivate(Sender: TObject);
var
ids:string;

begin
ids:=DM.ADOtable1.Fields.Fields[0].AsString ;
 DM.ADOTable10.Active:= False;
     DM.ADOTable10.Filtered:= True;
     DM.ADOTable10.Filter:= '[id] ='+ids;
     DM.ADOTable10.Active:= True;
end;

procedure TForm13.Button4Click(Sender: TObject);
begin
Form15.show;
end;

procedure TForm13.DBGrid1DblClick(Sender: TObject);
var
  asd,dsa,c:string;
begin
   asd:=ExtractFilePath(Application.ExeName);
 dsa:= DM.ADOtable10.Fields.Fields[3].AsString ;
 c:= ExtractFilePath(Application.ExeName)+'doc\'+dsa;
ShellExecute(Handle,
  'open', PChar(c), nil, nil, SW_SHOWNORMAL);
end;
  /// +DM.ADOtable10.Fields.Fields[3].AsString
procedure TForm13.Button5Click(Sender: TObject);
var
  asd,dsa,c:string;
begin
   asd:=ExtractFilePath(Application.ExeName);
 dsa:= DM.ADOtable10.Fields.Fields[3].AsString ;
 c:= ExtractFilePath(Application.ExeName)+'doc\'+dsa;
ShellExecute(handle,
  'open', PChar(c), nil, nil, SW_SHOWNORMAL);
end;



procedure TForm13.Button6Click(Sender: TObject);
Var R:Word;
begin

 r:= MessageDLG('¬ы действительно хотите удалить?', mtWarning, [mbYes,mbNo], 0);
   if R = mrYes then
    DBGrid1.DataSource.DataSet.Delete;

if R=mrNo then
   begin //ShowMessage('сообщение');
   end;   end;


end.





