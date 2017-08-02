unit UDmModelDav;

interface

uses
  System.SysUtils, System.Classes, UDmModelVenda, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TDmModelDav = class(TDmModelVenda)
    DTSVEN_ID: TIntegerField;
    DTSVEN_DATA: TSQLTimeStampField;
    DTSCLI_ID: TIntegerField;
    DTSVEN_TOTAL: TFMTBCDField;
    DTSVEN_DESCONTO: TFMTBCDField;
    DTSVEN_SITUACAO: TStringField;
    DTSVEN_OBSERVACAO: TStringField;
    procedure DSPGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure CDSAfterPost(DataSet: TDataSet);
    procedure CDSItemBeforePost(DataSet: TDataSet);
    procedure CDSItemAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmModelDav: TDmModelDav;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDmCon;

{$R *.dfm}

procedure TDmModelDav.CDSAfterPost(DataSet: TDataSet);
begin
  CDS.ApplyUpdates(0);
end;

procedure TDmModelDav.CDSItemAfterPost(DataSet: TDataSet);
begin
  CDSItem.ApplyUpdates(0);
end;

procedure TDmModelDav.CDSItemBeforePost(DataSet: TDataSet);
begin
  CDSItemVEN_ID.AsInteger    := CDSVEN_ID.AsInteger;
  CDSItemVEN_DATA.AsDateTime := CDSVEN_DATA.AsDateTime;
  CDSItemITV_DATA.AsDateTime := Date + Time;
end;

procedure TDmModelDav.DSPGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: string);
begin
  inherited;

  TableName := 'VENDA';
end;

end.
