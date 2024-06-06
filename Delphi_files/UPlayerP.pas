unit UPlayerP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,StrUtils;

type
  TFPlayerP = class(TForm)
    Panel1: TPanel;
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
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBText15: TDBText;
    Label14: TLabel;
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
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBText29: TDBText;
    Label28: TLabel;
    DBText30: TDBText;
    DBText31: TDBText;
    DBText32: TDBText;
    DBText33: TDBText;
    DBText34: TDBText;
    DBText35: TDBText;
    DBText36: TDBText;
    DBText37: TDBText;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDConnection1: TFDConnection;
    Label37: TLabel;
    Label38: TLabel;
    DBText38: TDBText;
    DBText39: TDBText;
    Label39: TLabel;
    DBText40: TDBText;
    DBText41: TDBText;
    Label40: TLabel;
    DBText1: TDBText;
    DBText42: TDBText;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    playerName : string;
  end;

var
  FPlayerP: TFPlayerP;

implementation

{$R *.dfm}




procedure TFPlayerP.FormShow(Sender: TObject);
begin

  FPlayerP.Caption := '';

  FDQuery1.Active := False;
  FDQuery1.Filtered := False;
  FDQuery1.Filter := 'Name = ' + QuotedStr(playerName);
  FDQuery1.Filtered := True;
  FDQuery1.Active := True;

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

end.
