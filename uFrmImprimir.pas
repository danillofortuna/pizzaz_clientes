unit uFrmImprimir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList;

type
  TfrmImprimir = class(TForm)
    mmoImp: TMemo;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    actlst1: TActionList;
    actImp: TAction;
    actCancel: TAction;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actImpExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImprimir: TfrmImprimir;

implementation

{$R *.dfm}

procedure TfrmImprimir.actCancelExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmImprimir.actImpExecute(Sender: TObject);
begin
  ShowMessage('imprimindo');
end;

procedure TfrmImprimir.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmImprimir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mmoImp.Lines.Clear;
end;

procedure TfrmImprimir.FormShow(Sender: TObject);
begin
  self.Left := Trunc((Screen.WorkAreaWidth - self.Width )/2);
  self.Top  := Trunc((Screen.WorkAreaHeight- self.Height)/2);
end;

end.
