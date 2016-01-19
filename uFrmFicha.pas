unit uFrmFicha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmFicha = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl10: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl11: TLabel;
    edtreferencia: TDBEdit;
    edtbloco: TDBEdit;
    edtapartamento: TDBEdit;
    edtedificio: TDBEdit;
    edtsetor: TDBEdit;
    edtquadra: TDBEdit;
    lbl5: TLabel;
    edtlote: TDBEdit;
    edtrua: TDBEdit;
    edttelefone: TDBEdit;
    edtnome: TDBEdit;
    edtid: TDBEdit;
    lblFicha: TLabel;
    qryMaster: TFDQuery;
    fdtncfldMasterid: TFDAutoIncField;
    strngfldMasternome: TStringField;
    strngfldMasterrua: TStringField;
    strngfldMasterquadra: TStringField;
    strngfldMasterlote: TStringField;
    strngfldMastersetor: TStringField;
    strngfldMasteredificio: TStringField;
    strngfldMasterapartamento: TStringField;
    strngfldMasterbloco: TStringField;
    strngfldMastertelefone: TStringField;
    strngfldMasterreferencia: TStringField;
    dsMaster: TDataSource;
    fdgxwtcrsrFDWaitCursor: TFDGUIxWaitCursor;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFicha: TfrmFicha;

implementation

{$R *.dfm}

procedure TfrmFicha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Close;
end;

procedure TfrmFicha.FormShow(Sender: TObject);
begin
  self.Left := Trunc((Screen.WorkAreaWidth - self.Width )/2);
  self.Top  := Trunc((Screen.WorkAreaHeight- self.Height)/2);
end;

end.