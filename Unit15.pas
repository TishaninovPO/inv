unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,ShellAPI, Mask, DBCtrls;

type
  TForm15 = class(TForm)
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    DBEdit3: TDBEdit;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm15.BitBtn1Click(Sender: TObject);

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
  Edit1.Text:=ExtractFileName(CurrentFile);
    DBEdit2.Text:=Edit1.Text;
    
        if FileExists(NewFile) then
      DeleteFile(NewFile);
    CopyFile(PChar(CurrentFile), PChar(NewFile), True)
  end;
end;

procedure TForm15.Button1Click(Sender: TObject);
begin
      Button3.Click;
  if DM.ADOTable10.Modified then    DM.ADOTable10.Post;     close;
end;

procedure TForm15.Button3Click(Sender: TObject);
begin
DM.adotable10.Edit;


DBEdit3.Text:=
DM.ADOtable1.Fields.Fields[0].AsString ;



DBEdit3.Text:= DM.ADOtable1.Fields.Fields[0].AsString  ;
DM.ADOtable10.Fields.Fields[1].AsString:= DBEdit3.Text;
 // DM.ADOTable8.FieldByName('id').AsString :='20';


end;

end.
