unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  Vcl.Imaging.jpeg;

type
  TForm3 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBImage1: TDBImage;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Label5: TLabel;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1,Unit2;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
ADOTable1.First;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
ADOTable1.Prior;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
ADOTable1.Next;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
ADOTable1.Last;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
ADOTable1.Insert;
end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
begin
ADOTable1.Edit;
ADOTable1.Post;
if (messageDlg('Kaydetmek İstediğinize Emin Misiniz? Program Yeniden Başlatılacaktır.', mtConfirmation, [mbYes, mbNo], 0)= mrYes) then
Form1.Close;
end;

procedure TForm3.SpeedButton7Click(Sender: TObject);
begin
ADOTable1.Cancel;
end;

procedure TForm3.SpeedButton8Click(Sender: TObject);
begin
Form3.Close;
end;

end.
