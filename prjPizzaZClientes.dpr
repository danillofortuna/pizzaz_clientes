program prjPizzaZClientes;

uses
  Vcl.Forms,
  uFrmMasterCad in 'uFrmMasterCad.pas' {FrmMasterCad},
  UfrmMasterDetalhe in 'UfrmMasterDetalhe.pas' {frmMasterDetalhe},
  uFrmMasterMenu in 'uFrmMasterMenu.pas' {FrmMasterMenu},
  UfrmMasterPesquisa in 'UfrmMasterPesquisa.pas' {frmMasterPesquisa},
  uFrmCadClientes in 'uFrmCadClientes.pas' {FrmCadClientes},
  uDM in 'uDM.pas' {DM: TDataModule},
  uFrmFicha in 'uFrmFicha.pas' {frmFicha},
  uFrmBackup in 'uFrmBackup.pas' {frmBackup},
  uFrmImprimir in 'uFrmImprimir.pas' {frmImprimir};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmMasterMenu, FrmMasterMenu);
  Application.Run;
end.
