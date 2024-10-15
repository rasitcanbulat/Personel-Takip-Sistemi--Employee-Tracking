unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Imaging.jpeg, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    Button2: TButton;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Image2: TImage;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm6.Button1Click(Sender: TObject);
begin

if Edit6.Text=Edit7.Text then
  begin Showmessage('Kayıt İşlemi Gerçekleşti.');
  ADOTable1.Append;
  ADOTable1.FieldByName('isim').AsString:= Edit1.Text;
  ADOTable1.FieldByName('soyisim').AsString:=Edit2.Text;
  ADOTable1.FieldByName('email').AsString:=Edit4.Text;
  ADOTable1.FieldByName('kullaniciadi').AsString:=Edit5.Text;
  ADOTable1.FieldByName('sifre').AsString:=Edit6.Text;
  ADOTable1.Post;
  ADOTable1.Refresh;
  ADOTable1.Open;
  ShowMessage('Kayıt İşleminin Tamamlanması İçin Program Yeniden Başlatılacaktır.');
  Form6.Close;
  Form1.Show;
  Application.Terminate;
  end

  else
    begin
        showmessage('Sifreler Uyuşmuyor');
        Edit1.Text:=(' '); Edit2.Text:=(' ');
    end;

end;


procedure TForm6.Button2Click(Sender: TObject);
begin
  ADOTable1.Delete;
end;

end.
