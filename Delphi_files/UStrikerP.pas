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
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, UPlayerP;

type
  TFStrikerP = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Button4: TButton;
    ComboBox2: TComboBox;
    Button3: TButton;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure checkConditions;
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
    StrValue := StringReplace(ComboBox2.Text, '$', '', [rfReplaceAll]);

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



procedure TFStrikerP.Button3Click(Sender: TObject);
var IntValue: integer;
begin
  IntValue := StrToInt(ComboBox2.Text);

  IntValue := IntValue + 1;

  ComboBox2.Text := IntValue.ToString;

  ComboBox2.OnChange(ComboBox2);
end;

procedure TFStrikerP.Button4Click(Sender: TObject);
var IntValue : integer;
begin
  IntValue := StrToInt(ComboBox2.Text);

  IntValue := IntValue - 1;

  ComboBox2.Text := IntValue.ToString;

  ComboBox2.OnChange(ComboBox2);
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

   ComboBox2.Items.Add('20');
   ComboBox2.Items.Add('25');
   ComboBox2.Items.Add('30');
   ComboBox2.Items.Add('35');
   ComboBox2.Items.Add('40');
end;

end.
