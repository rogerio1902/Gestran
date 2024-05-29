program Gestran;

uses
  Vcl.Forms,
  UDM in 'UDM.pas' {DM: TDataModule},
  ULogin in 'ULogin.pas' {FrmLogin},
  UMenu in 'UMenu.pas' {FrmMenu},
  URelConsVendas in 'URelConsVendas.pas' {FrmConsVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmConsVendas, FrmConsVendas);
  Application.Run;
end.
