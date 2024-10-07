unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Yeni: TButton;
    Exit: TButton;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Panel5: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;

    procedure puantoplayıcı;
    procedure Enable_False;
    procedure Sil_Yenioyun ;
    procedure Button1Click(Sender: TObject);
    procedure YeniClick(Sender: TObject);
    procedure ExitClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Kontrol: boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TForm1.Button1Click(Sender: TObject);
begin
 if Kontrol = False then

begin
    Button1.Text :='X';    //Caption,bir bileşenin metin içeriğinin görüntülenmesini ve istersek değiştirilmesini sağlar.
    Kontrol :=True;
end
else if Kontrol =True then
begin
    Button1.Text :='O';
    Kontrol :=False;
end;
    puantoplayıcı;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
      if Kontrol = False then

begin
    Button2.Text :='X';
    Kontrol :=True;
end
else if Kontrol =True then
begin
    Button2.Text :='O';
    Kontrol :=False;
end;
    puantoplayıcı;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   if Kontrol = False then

begin
    Button3.Text :='X';
    Kontrol :=True;
end
else if Kontrol =True then
begin
    Button3.Text :='O';
    Kontrol :=False;
end;
    puantoplayıcı;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     if Kontrol = False then

begin
    Button4.Text :='X';
    Kontrol :=True;
end
else if Kontrol =True then
begin
    Button4.Text :='O';
    Kontrol :=False;
end;
    puantoplayıcı;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    if Kontrol = False then

begin
    Button5.Text :='X';
    Kontrol :=True;
end
else if Kontrol =True then
begin
    Button5.Text :='O';
    Kontrol :=False;
end;
    puantoplayıcı;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
   if Kontrol = False then
begin
    Button6.Text :='X';
    Kontrol :=True;
end
else if Kontrol =True then
begin
    Button6.Text :='O';
    Kontrol :=False;
end;
    puantoplayıcı;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
   if Kontrol = False then

begin
    Button7.Text :='X';
    Kontrol :=True;
end
else if Kontrol =True then
begin
    Button7.Text :='O';
    Kontrol :=False;
end;
    puantoplayıcı;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
if Kontrol = False then

begin
    Button8.Text :='X';
    Kontrol :=True;
end
else if Kontrol =True then
begin
    Button8.Text :='O';
    Kontrol :=False;
end;
    puantoplayıcı;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
    if Kontrol = False then

begin
    Button9.Text :='X';
    Kontrol :=True;
end
else if Kontrol =True then
begin
    Button9.Text :='O';
    Kontrol :=False;
end;
    puantoplayıcı;
end;

procedure TForm1.Enable_False;
begin
          Button1.Enabled := False;      //Enable_False fonksiyonu,metodu oyun alanındaki düğmeleri devre dışı
          Button2.Enabled := False;      //bırakmayı sağlar.button 1 ile button 9 un erişebilirlik özelliği
          Button3.Enabled := False;      //Enable özelliği false olarak ayarlanırsa oyuncular bu buttonlarda
          Button4.Enabled := False;      //değişiklik yapamazlar  .Eğer Enable özelliği true ise oyuncular
          Button5.Enabled := False;      //bu buttonlara erişebilirler,buttonlar etkin olur.Enable birşeyin etkin veya devre dışı olmasını
          Button6.Enabled := False;      //kontrol eder.
          Button7.Enabled := False;
          Button8.Enabled := False;
          Button9.Enabled := False;
end;

procedure TForm1.ExitClick(Sender: TObject);
begin
     Close;
end;

procedure TForm1.puantoplayıcı;
var  x,o :Integer;
begin
          x:= StrToInt(Label2.Text);    //label3x deki metni tam sayıya dönüştürür.
          o:= StrToInt(Label3.Text);

if (Button1.Text ='X') and (Button2.Text ='X') and (Button3.Text ='X')then
begin
   Label2.Text := IntToStr(x+1); // x değişkenine 1 ekleyerek elde edilen sayıyı metine dönüştürüp, Text özelliği sayesinde  label3x e yazar.
   ShowMessage('Kazanan X');
   Enable_False;
end

 else if (Button4.Text ='X') and (Button5.Text ='X') and (Button6.Text ='X')then
  begin
   Label2.Text := IntToStr(x+1);
   ShowMessage('Kazanan X');
   Enable_False;
end

     else if (Button7.Text ='X') and (Button8.Text ='X') and (Button9.Text ='X')then
  begin
   Label2.Text := IntToStr(x+1);
   ShowMessage('Kazanan X');
   Enable_False;
end

   else if (Button1.Text ='X') and (Button4.Text ='X') and (Button7.Text ='X')then
  begin
   Label2.Text := IntToStr(x+1);
   ShowMessage('Kazanan X');
   Enable_False;
end

     else if (Button2.Text ='X') and (Button5.Text ='X') and (Button8.Text ='X')then
  begin
   Label2.Text := IntToStr(x+1);
   ShowMessage('Kazanan X');
   Enable_False;
end

        else if (Button3.Text ='X') and (Button6.Text ='X') and (Button9.Text ='X')then
  begin
   Label2.Text := IntToStr(x+1);
   ShowMessage('Kazanan X');
   Enable_False;
end

          else if (Button1.Text ='X') and (Button5.Text ='X') and (Button9.Text ='X')then
  begin
   Label2.Text := IntToStr(x+1);
   ShowMessage('Kazanan X');
   Enable_False;
end

         else if (Button3.Text ='X') and (Button5.Text ='X') and (Button7.Text ='X')then
  begin
   Label2.Text := IntToStr(x+1);
   ShowMessage('Kazanan X');
   Enable_False;
end

 ////////////////////////////////////////o oyuncusu için///////////////////////////////////////

   else if (Button1.Text ='O') and (Button2.Text ='O') and (Button3.Text ='O')then
begin
   Label3.Text := IntToStr(o+1);
   ShowMessage('Kazanan O');
   Enable_False;
end

 else if (Button4.Text ='O') and (Button5.Text ='O') and (Button6.Text ='O')then
  begin
   Label3.Text := IntToStr(o+1);
   ShowMessage('Kazanan O');
   Enable_False;
end

     else if (Button7.Text ='O') and (Button8.Text ='O') and (Button9.Text ='O')then
  begin
   Label3.Text := IntToStr(o+1);
   ShowMessage('Kazanan O');
   Enable_False;
end

   else if (Button1.Text ='O') and (Button4.Text ='O') and (Button7.Text ='O')then
  begin
   Label3.Text := IntToStr(o+1);
   ShowMessage('Kazanan O');
   Enable_False;
end

     else if (Button2.Text ='O') and (Button5.Text ='O') and (Button8.Text ='O')then
  begin
   Label3.Text := IntToStr(o+1);
   ShowMessage('Kazanan O');
   Enable_False;
end

        else if (Button3.Text ='O') and (Button6.Text ='O') and (Button9.Text ='O')then
  begin
   Label3.Text := IntToStr(o+1);
   ShowMessage('Kazanan O');
   Enable_False;
end

          else if (Button1.Text ='O') and (Button5.Text ='O') and (Button9.Text ='O')then
  begin
   Label3.Text := IntToStr(o+1);
   ShowMessage('Kazanan O');
   Enable_False;
end

         else if (Button3.Text ='O') and (Button5.Text ='O') and (Button7.Text ='O')then
  begin
   Label3.Text := IntToStr(o+1);
   ShowMessage('Kazanan O');
   Enable_False;
end

end;

procedure TForm1.Sil_Yenioyun;
begin
          Button1.Enabled := True;   //oyuncu buttonlara erişebilir.
          Button2.Enabled := True;
          Button2.Enabled := True;
          Button3.Enabled := True;
          Button4.Enabled := True;
          Button5.Enabled := True;
          Button6.Enabled := True;
          Button7.Enabled := True;
          Button8.Enabled := True;
          Button9.Enabled := True;


          Button1.Text := ' ';
          Button2.Text := ' ';
          Button3.Text := ' ';
          Button4.Text := ' ';
          Button5.Text := ' ';
          Button6.Text := ' ';
          Button7.Text := ' ';
          Button8.Text := ' ';
          Button9.Text := ' ';
end;

procedure TForm1.YeniClick(Sender: TObject);
begin
    Sil_Yenioyun;
end;

end.
