unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids,
  Data.DB, Data.Win.ADODB, Vcl.DBGrids, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    MonthCalendar1: TMonthCalendar;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Image2: TImage;
    Label10: TLabel;
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.MonthCalendar1DblClick(Sender: TObject);
var
  selectedDate: TDate;
  izin,soyisim,isim,vardiya: string;
begin
  selectedDate := MonthCalendar1.Date;
  isim:= InputBox('Personelin Adını Giriniz', 'Personelin Adı:', '');
  soyisim:= InputBox('Personelin Soyadını Giriniz', 'Personelin Soyadı:', '');
  izin := InputBox('İzin Sebebini Giriniz', 'İzin Sebebi:', '');

  if izin <> '' then
  begin
    ADOTable1.Append;
    ADOTable1.FieldByName('personeladi').AsString:= isim;
    ADOTable1.FieldByName('personelsoyadi').AsString:= isim;
    ADOTable1.FieldByName('tarih').AsDateTime := selectedDate;
    ADOTable1.FieldByName('izinsebebi').AsString := izin;
    ADOTable1.Post;
  end;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
      ADOTable1.Delete;
end;

end.
