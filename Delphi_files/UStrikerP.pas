unit UStrikerP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Phys.MySQL, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, UPlayerP, Vcl.Imaging.pngimage,
  Vcl.Buttons;

type
  TFStrikerP = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBText1: TDBText;
    DBText42: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText14: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBText15: TDBText;
    Label18: TLabel;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBText29: TDBText;
    Label32: TLabel;
    DBText30: TDBText;
    DBText31: TDBText;
    DBText32: TDBText;
    DBText33: TDBText;
    DBText34: TDBText;
    DBText35: TDBText;
    DBText36: TDBText;
    DBText37: TDBText;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    Image1: TImage;
    Label2: TLabel;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel7: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    SpeedButton3: TSpeedButton;
    ComboBox3: TComboBox;
    SpeedButton4: TSpeedButton;
    Image2: TImage;
    DBText38: TDBText;
    DBText39: TDBText;
    DBText40: TDBText;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure checkConditions;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    sqlText : string;
    okPrice: boolean;
    okAge: boolean;
  public
    { Public declarations }
  end;

var
  FStrikerP: TFStrikerP;

implementation

{$R *.dfm}

procedure TFStrikerP.checkConditions;
var
  StrValue: string;
  FloatValue: Double;
  IntValue : integer;
begin
  sqlText := '';
  sqlText :=  'SELECT * FROM strikers_2012 WHERE ';

  if okPrice then
  begin
    // Remove the '$' character from the string
    StrValue := StringReplace(ComboBox1.Text, '$', '', [rfReplaceAll]);

    // Convert the modified string to a float
    FloatValue := StrToFloat(StrValue);

    sqlText := sqlText + 'Value <= ' + FloatValue.ToString + ' AND ';

  end;

  if okAge then
  begin
    // Remove the '$' character from the string
    StrValue := StringReplace(ComboBox3.Text, '$', '', [rfReplaceAll]);

    // Convert the modified string to a float
    IntValue := StrToInt(StrValue);

    sqlText := sqlText + 'Age <= ' + IntValue.ToString  + ' AND ';

  end;

  sqlText := sqlText + '1 = 1';

  //ShowMessage(sqlText);


  FDQuery1.Active := False;
  FDQuery1.SQL.Text := sqlText;
  FDQuery1.Active := True;


end;


procedure TFStrikerP.ComboBox1Change(Sender: TObject);
var
  StrValue: string;
  FloatValue: Double;
begin

  okPrice := true;

  checkConditions();

end;

procedure TFStrikerP.ComboBox2Change(Sender: TObject);
var
  StrValue: string;
  IntValue: integer;
begin

  okAge := true;

  checkConditions();
end;

procedure TFStrikerP.ComboBox3Change(Sender: TObject);
var
  StrValue: string;
  IntValue: integer;
begin
  okAge := true;

  checkConditions();
end;

procedure TFStrikerP.Button1Click(Sender: TObject);
var
  StrValue: string;
  FloatValue: Double;
begin
  // Remove the '$' character from the string
  StrValue := StringReplace(ComboBox1.Text, '$', '', [rfReplaceAll]);

  // Convert the modified string to a float
  FloatValue := StrToFloat(StrValue);

  FloatValue := FloatValue - 0.1;

  ComboBox1.Text := FloatValue.ToString + '$';

  ComboBox1.OnChange(ComboBox1);
end;

procedure TFStrikerP.Button2Click(Sender: TObject);
var
  StrValue: string;
  FloatValue: Double;
begin
  // Remove the '$' character from the string
  StrValue := StringReplace(ComboBox1.Text, '$', '', [rfReplaceAll]);

  // Convert the modified string to a float
  FloatValue := StrToFloat(StrValue);

  FloatValue := FloatValue + 0.1;

  ComboBox1.Text := FloatValue.ToString + '$';

  ComboBox1.OnChange(ComboBox1);
end;



procedure TFStrikerP.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if FDQuery1.FieldByName('Difference').AsFloat < 0 then
      DBText40.Font.Color := clRed
    else
      DBText40.Font.Color := clGreen;
end;

procedure TFStrikerP.DBGrid1CellClick(Column: TColumn);
begin
  FPlayerP.playerName := Column.Field.AsString;
  FPlayerP.ShowModal();
end;

procedure TFStrikerP.DBGrid1TitleClick(Column: TColumn);
var name : string;
    StrValue: string;
    FloatValue: Double;
    IntValue : integer;
begin

  //ShowMessage(Column.Title.Caption);

  checkConditions();

  if Column.Title.Caption = 'Value'  then
  begin
    sqlText := sqlText + ' ORDER BY ' + Column.FieldName +' DESC';
  end;

  if Column.Title.Caption = 'Age'  then
  begin
    sqlText := sqlText + ' ORDER BY ' + Column.FieldName +' DESC';
  end;

  if Column.Title.Caption = 'Difference'  then
  begin
    sqlText := sqlText + ' ORDER BY ' + Column.FieldName +' DESC';
  end;

  if Column.Title.Caption = 'Predicted Value'  then
  begin
    sqlText := sqlText + ' ORDER BY ' + Column.FieldName +' DESC';
  end;


  //ShowMessage(sqlText);


  FDQuery1.Active := False;
  FDQuery1.SQL.Text := sqlText;
  FDQuery1.Active := True;


end;

procedure TFStrikerP.FormShow(Sender: TObject);
begin
   ComboBox1.Items.Add('0.0$');
   ComboBox1.Items.Add('0.5$');
   ComboBox1.Items.Add('1.0$');
   ComboBox1.Items.Add('2.0$');
   ComboBox1.Items.Add('5.0$');
   ComboBox1.Items.Add('10.0$');
   ComboBox1.Items.Add('20.0$');
   ComboBox1.Items.Add('50.0$');

   ComboBox3.Items.Add('20');
   ComboBox3.Items.Add('25');
   ComboBox3.Items.Add('30');
   ComboBox3.Items.Add('35');
   ComboBox3.Items.Add('40');

   if FDQuery1.FieldByName('Cor').AsInteger >= 15 then
    DBText2.Font.Color := clBlue
  else
    DBText2.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Cro').AsInteger >= 15 then
    DBText3.Font.Color := clBlue
  else
    DBText3.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Dri').AsInteger >= 15 then
    DBText4.Font.Color := clBlue
  else
    DBText4.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Fin').AsInteger >= 15 then
    DBText5.Font.Color := clBlue
  else
    DBText5.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Fir').AsInteger >= 15 then
    DBText6.Font.Color := clBlue
  else
    DBText6.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Fre').AsInteger >= 15 then
    DBText7.Font.Color := clBlue
  else
    DBText7.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Hea').AsInteger >= 15 then
    DBText8.Font.Color := clBlue
  else
    DBText8.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Lon').AsInteger >= 15 then
    DBText9.Font.Color := clBlue
  else
    DBText9.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('LTh').AsInteger >= 15 then
    DBText10.Font.Color := clBlue
  else
    DBText10.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Mar').AsInteger >= 15 then
    DBText11.Font.Color := clBlue
  else
    DBText11.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Pas').AsInteger >= 15 then
    DBText12.Font.Color := clBlue
  else
    DBText12.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Pen').AsInteger >= 15 then
    DBText13.Font.Color := clBlue
  else
    DBText13.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Tac').AsInteger >= 15 then
    DBText14.Font.Color := clBlue
  else
    DBText14.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Tec').AsInteger >= 15 then
    DBText15.Font.Color := clBlue
  else
    DBText15.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Agg').AsInteger >= 15 then
    DBText16.Font.Color := clBlue
  else
    DBText16.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Ant').AsInteger >= 15 then
    DBText17.Font.Color := clBlue
  else
    DBText17.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Bra').AsInteger >= 15 then
    DBText18.Font.Color := clBlue
  else
    DBText18.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Cmp').AsInteger >= 15 then
    DBText19.Font.Color := clBlue
  else
    DBText19.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Cnt').AsInteger >= 15 then
    DBText20.Font.Color := clBlue
  else
    DBText20.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Cre').AsInteger >= 15 then
    DBText21.Font.Color := clBlue
  else
    DBText21.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Dec').AsInteger >= 15 then
    DBText26.Font.Color := clBlue
  else
    DBText26.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Det').AsInteger >= 15 then
    DBText27.Font.Color := clBlue
  else
    DBText27.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Fla').AsInteger >= 15 then
    DBText22.Font.Color := clBlue
  else
    DBText22.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Inf').AsInteger >= 15 then
    DBText23.Font.Color := clBlue
  else
    DBText23.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Off').AsInteger >= 15 then
    DBText24.Font.Color := clBlue
  else
    DBText24.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Pos').AsInteger >= 15 then
    DBText25.Font.Color := clBlue
  else
    DBText25.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Tea').AsInteger >= 15 then
    DBText28.Font.Color := clBlue
  else
    DBText28.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Wor').AsInteger >= 15 then
    DBText29.Font.Color := clBlue
  else
    DBText29.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Acc').AsInteger >= 15 then
    DBText30.Font.Color := clBlue
  else
    DBText30.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Agi').AsInteger >= 15 then
    DBText31.Font.Color := clBlue
  else
    DBText31.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Bal').AsInteger >= 15 then
    DBText32.Font.Color := clBlue
  else
    DBText32.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Jum').AsInteger >= 15 then
    DBText33.Font.Color := clBlue
  else
    DBText33.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Nat').AsInteger >= 15 then
    DBText34.Font.Color := clBlue
  else
    DBText34.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Pac').AsInteger >= 15 then
    DBText35.Font.Color := clBlue
  else
    DBText35.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Sta').AsInteger >= 15 then
    DBText36.Font.Color := clBlue
  else
    DBText36.Font.Color := $00AA020B;

  if FDQuery1.FieldByName('Str').AsInteger >= 15 then
    DBText37.Font.Color := clBlue
  else
    DBText37.Font.Color := $00AA020B;

  DBText38.Caption := FormatFloat('#0.00', FDQuery1.FieldByName('Value').AsFloat);
  DBText39.Caption := FormatFloat('#0.00', FDQuery1.FieldByName('Predicted_value').AsFloat);
  DBText40.Caption := FormatFloat('#0.00', FDQuery1.FieldByName('Difference').AsFloat);

  if FDQuery1.FieldByName('Difference').AsFloat < 0 then
    DBText40.Font.Color := clRed
  else
    DBText40.Font.Color := clGreen;
end;

procedure TFStrikerP.SpeedButton1Click(Sender: TObject);
var
  StrValue: string;
  FloatValue: Double;
begin
// Remove the '$' character from the string
  StrValue := StringReplace(ComboBox1.Text, '$', '', [rfReplaceAll]);

  // Convert the modified string to a float
  FloatValue := StrToFloat(StrValue);

  FloatValue := FloatValue - 0.1;

  ComboBox1.Text := FloatValue.ToString + '$';

  ComboBox1.OnChange(ComboBox1);
end;

procedure TFStrikerP.SpeedButton2Click(Sender: TObject);
var
  StrValue: string;
  FloatValue: Double;
begin
// Remove the '$' character from the string
  StrValue := StringReplace(ComboBox1.Text, '$', '', [rfReplaceAll]);

  // Convert the modified string to a float
  FloatValue := StrToFloat(StrValue);

  FloatValue := FloatValue + 0.1;

  ComboBox1.Text := FloatValue.ToString + '$';

  ComboBox1.OnChange(ComboBox1);
end;

procedure TFStrikerP.SpeedButton3Click(Sender: TObject);
var IntValue : integer;
begin
  IntValue := StrToInt(ComboBox3.Text);

  IntValue := IntValue - 1;

  ComboBox3.Text := IntValue.ToString;

  ComboBox3.OnChange(ComboBox3);
end;

procedure TFStrikerP.SpeedButton4Click(Sender: TObject);
var IntValue: integer;
begin
  IntValue := StrToInt(ComboBox3.Text);

  IntValue := IntValue + 1;

  ComboBox3.Text := IntValue.ToString;

  ComboBox3.OnChange(ComboBox3);
end;

end.
