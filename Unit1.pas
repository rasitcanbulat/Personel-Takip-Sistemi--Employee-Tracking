unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, Data.DB, Data.Win.ADODB, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Image2: TImage;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    ADOTable1: TADOTable;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit4,Unit3,Unit2,Unit6;

procedure TForm1.Button1Click(Sender: TObject);
var
kullaniciadi,sifre:String;
begin
ADOTable1.Refresh;
ADOTable1.Open;
kullaniciadi:=Edit1.Text;
sifre:=Edit2.Text;
if ADOTable1.Locate('KullaniciAdi',kullaniciadi,[])= True  then
  begin
      if ADOTable1['sifre']=sifre then
      begin
        Form1.Hide;
        Form2.Show;
      end;
  end
else ShowMessage('Lütfen Kullanıcı Adı Ve Şifrenizi Doğru Giriniz');


end;
procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=True then
  begin
  Edit2.PasswordChar:=(#0);
  end;
if CheckBox1.Checked=False then
  begin
     Edit2.PasswordChar:=('*');
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
    Form6.Show;
end;

end.
