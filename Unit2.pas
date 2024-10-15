unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Data.Win.ADODB, Vcl.Mask, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBImage1: TDBImage;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton3: TSpeedButton;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Image2: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4, Unit5, Unit6;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
if (messageDlg('Programı Kapatmak İstediğinize Emin Misiniz?.', mtConfirmation, [mbYes, mbNo], 0)= mrYes) then
Form1.Close;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
ADOTable1.Next;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
ADOTable1.Prior;
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
ADOTable1.Refresh;
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
     Form6.ShowModal;
end;

end.
