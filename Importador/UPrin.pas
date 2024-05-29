unit UPrin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ADOConnection: TADOConnection;
    EdtArq: TEdit;
    BtnSel: TButton;
    BtnImp: TButton;
    Label1: TLabel;
    ODlgArq: TOpenDialog;
    ADOQImp: TADOQuery;
    LblImp: TLabel;
    procedure BtnSelClick(Sender: TObject);
    procedure BtnImpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnImpClick(Sender: TObject);
var
  SL,
  SLLinha: TStringList;
  Linha:   String;
  I:       Integer;
begin
  // Preenche a String List
  SL                := TStringList.Create;
  SLLinha           := TStringList.Create;
  SLLinha.Delimiter := ',';
  LblImp.Visible    := True;
  Application.ProcessMessages;
  try
    SL.LoadFromFile(EdtArq.Text);
  except
    ShowMessage('Não foi possível abrir arquivo ' + #13 + EdtArq.Text);
    SL.Free;
    SLLinha.Free;
    LblImp.Visible := False;
    Exit;
  end;
  // Conecta ao banco
  try
    ADOConnection.Connected := True;
  except
    ShowMessage('Não foi possível conectar ao banco');
    LblImp.Visible := False;
    Exit;
  end;
  // Lê e importa
  for I := 1 to SL.Count - 1 do
    with ADOQImp do
    begin
      SLLinha.DelimitedText := SL[I];
      try
        SQL.Text := 'SET IDENTITY_INSERT Venda ON';
        ExecSQL;
        SQL.Text := 'INSERT INTO Venda(Id, DataVenda, Vendedor, Valor, Descto, Total) VALUES(' +
          SLLinha[0] + ',''' + SLLinha[1] + ''',''' + SLLinha[2] + ' ' + SLLinha[3] + ''', ' +
          SLLinha[4] + ',' + SLLinha[5] + ',' + SLLinha[6] + ')';
          ExecSQL;
        SQL.Text := 'SET IDENTITY_INSERT Venda OFF';
        ExecSQL;
      except
        ShowMessage('Não foi possível executar comando'#13#13 + SQL.Text);
        LblImp.Visible := False;
        Exit;
      end;
    end;
  SL.Free;
  SLLinha.Free;
  LblImp.Visible := False;
  ShowMessage('Importação concluída');
end;

procedure TForm1.BtnSelClick(Sender: TObject);
begin
  if ODlgArq.Execute then
    EdtArq.Text := ODlgArq.FileName;
end;

end.
