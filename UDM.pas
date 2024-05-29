unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, SimpleDS, Vcl.ImgList, Vcl.Controls, Windows,
  Vcl.Forms, Variants, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc,
  Data.Win.ADODB, StrUtils;

type
  TDM = class(TDataModule)
    ImgLstGen: TImageList;
    XMLDViaCEP: TXMLDocument;
    ADOConnection: TADOConnection;
    ADOQRel: TADOQuery;
    ADOQVend: TADOQuery;
    DSRel: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    function Abrir: Boolean;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDM.Abrir: Boolean;
begin
  // Abre banco e tabela
  with ADOConnection do
    try
      if not Connected then
        Connected := True;
      Result := True;
    except
      Result := False;
    end;
end;

end.
