{******************************************************************************}
{*                                                                            *}
{*  Programa para teste prático admissional para a Gestran Software           *}
{*  Início..........: 23/05/2024                                              *}
{*  Término.........: 29/05/2024                                              *}
{*  Versão do Delphi: XE4                                                     *}
{*  Banco...........: Banco: SQL Server 2022 Express Edition                  *}
{*                                                                            *}
{******************************************************************************}

unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Grids,
  Vcl.DBGrids, StrUtils;

type
  TFrmMenu = class(TForm)
    MainMenu: TMainMenu;
    MICad: TMenuItem;
    MIRel: TMenuItem;
    MISep1: TMenuItem;
    MISair: TMenuItem;
    ImgMenu: TImage;
    SBrPrin: TStatusBar;
    MIRelConsVendas: TMenuItem;
    procedure MISairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MIRelConsVendasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses UDM, ULogin, URelConsVendas;

procedure TFrmMenu.FormActivate(Sender: TObject);
begin
  if not DM.Abrir then
    Application.Terminate;
end;

procedure TFrmMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Application.MessageBox('Tem certeza que deseja encerrar?', 'Confirmação', mb_YesNo + mb_IconQuestion + mb_DefButton2) <> mrYes then
    Abort;
end;

procedure TFrmMenu.FormShow(Sender: TObject);
begin
  if FrmLogin.ShowModal = mrCancel then // Tela de login
    Application.Terminate;
end;

procedure TFrmMenu.MIRelConsVendasClick(Sender: TObject);
begin
  FrmConsVendas.ShowModal;
end;

procedure TFrmMenu.MISairClick(Sender: TObject);
begin
  Close;
end;

end.
