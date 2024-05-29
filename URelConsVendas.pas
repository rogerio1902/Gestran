unit URelConsVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, DateUtils,
  StrUtils, frxClass, frxDBSet, frxExportPDF;

type
  TFrmConsVendas = class(TForm)
    GBoxPeriodo: TGroupBox;
    DTPIni: TDateTimePicker;
    LblDe: TLabel;
    LblAte: TLabel;
    DTPFin: TDateTimePicker;
    LblVend: TLabel;
    CBoxVend: TComboBox;
    BBtnImpr: TBitBtn;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    frxPDFExport: TfrxPDFExport;
    BBtnPDF: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BBtnImprClick(Sender: TObject);
    procedure BBtnPDFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PreencherCombo;
    procedure Preparar;
  end;

var
  FrmConsVendas: TFrmConsVendas;

implementation

{$R *.dfm}

uses UDM;

{ TFrmConsVendas }

procedure TFrmConsVendas.Preparar;
var
  I: Byte;
begin
  with DM.ADOQRel, CBoxVend do
  begin
    if Active then
      Active := False;
    for I := 0 to Parameters.Count - 1 do
    begin
      if Parameters[I].Name = 'D1' then
        Parameters[I].Value := DTPIni.Date;
      if Parameters[I].Name = 'D2' then
        Parameters[I].Value := DTPFin.Date;
      if Parameters[I].Name = 'Vendedor' then
        Parameters[I].Value := IfThen(ItemIndex = 0, '', Text);
    end;
    Active := True;
    if RecordCount = 0 then
    begin
      ShowMessage('Não há dados para imprimir');
      Abort;
    end;
  end;
  frxReport.PrepareReport;
end;

procedure TFrmConsVendas.BBtnImprClick(Sender: TObject);
begin
  Preparar;
  frxReport.ShowPreparedReport;
end;

procedure TFrmConsVendas.BBtnPDFClick(Sender: TObject);
begin
  Preparar;
  frxReport.Export(frxPDFExport);
end;

procedure TFrmConsVendas.FormShow(Sender: TObject);
begin
  DTPIni.Date := Today;
  DTPFin.Date := Today;
  PreencherCombo;
end;

procedure TFrmConsVendas.PreencherCombo;
begin
  with DM.ADOQVend, CBoxVend, Items do
  begin
    Clear;
    Add('<TODOS>');
    Active := True;
    while not Eof do
    begin
      Add(FieldByName('Vendedor').AsString);
      Next;
    end;
    Active    := False;
    ItemIndex := 0;
  end;
end;

end.
