unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edt_path: TEdit;
    Label1: TLabel;
    btn_restore: TButton;
    btn_backup: TButton;
    OpenDialog1: TOpenDialog;
    ADOConnection1: TADOConnection;
    qry_restore: TADOQuery;
    qry_backup: TADOQuery;
    procedure btn_restoreClick(Sender: TObject);
    procedure btn_backupClick(Sender: TObject);

  private
    { DÈclarations privÈes }
  public
    { DÈclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_backupClick(Sender: TObject);
begin
    edt_path.Text := 'C:\Back UP DATA\' ;
    with qry_backup do
         begin

          SQL.Clear ;
          sql.Add('USE [MASTER] BACKUP DATABASE [TEST] TO DISK = ''C:\Back UP DATA\TEST.bak''') ;
          sql.Add('WITH NOFORMAT, INIT,  NAME = ''TEST-Full Database Backup'',  SKIP, NOREWIND, NOUNLOAD,  STATS = 10');
          ExecSQL ;

          ShowMessage(' „ ⁄„· ‰”Œ… «Õ Ì«ÿÌ… »‰Ã«Õ ... ');
        end;

end;

procedure TForm1.btn_restoreClick(Sender: TObject);
var Back_Db : string ;
begin
     if OpenDialog1.Execute then
       begin
         Back_Db := OpenDialog1.FileName ;
         edt_path.Text := Back_Db ;
       end;

       with qry_restore do

        begin

          SQL.Clear ;
          sql.Add('USE [MASTER] RESTORE DATABASE TEST FROM DISK = ' + QuotedStr (back_db)) ;
          sql.Add('WITH FIle = 1, NOUNLOAD, STATS = 5');
          ExecSQL ;

          ShowMessage('...  „ «” —Ã«⁄ ﬁ«⁄œ… «·»Ì«‰«  »‰Ã«Õ ');
        end;

end;


end.
