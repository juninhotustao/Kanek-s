inherited DmModelDav: TDmModelDav
  inherited DTS: TSQLDataSet
    object DTSVEN_ID: TIntegerField
      FieldName = 'VEN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DTSVEN_DATA: TSQLTimeStampField
      FieldName = 'VEN_DATA'
    end
    object DTSCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object DTSVEN_TOTAL: TFMTBCDField
      FieldName = 'VEN_TOTAL'
      Precision = 15
      Size = 2
    end
    object DTSVEN_DESCONTO: TFMTBCDField
      FieldName = 'VEN_DESCONTO'
      Precision = 15
      Size = 2
    end
    object DTSVEN_SITUACAO: TStringField
      FieldName = 'VEN_SITUACAO'
      Size = 1
    end
    object DTSVEN_OBSERVACAO: TStringField
      FieldName = 'VEN_OBSERVACAO'
      Size = 1000
    end
  end
  inherited DSP: TDataSetProvider
    OnGetTableName = DSPGetTableName
    Top = 80
  end
  inherited CDS: TClientDataSet
    inherited CDSVEN_ID: TIntegerField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  inherited DTSItem: TSQLDataSet
    CommandText = 
      'SELECT '#13#10#9'ITV_ID, VEN_ID,'#9'VEN_DATA, PRO_ID, ITV_REFER,'#13#10#9'ITV_QTD' +
      'E, ITV_DESCONTO,'#9'ITV_PRECOVENDA,'#13#10#9'ITV_VALORTOTAL,'#9'ITV_DATA, ITV' +
      '_UN, ITV_DESCRICAO'#13#10'FROM'#13#10#9'ITEM_VENDA'#13#10'WHERE'#13#10'                VE' +
      'N_ID = :VEN_ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'VEN_ID'
        ParamType = ptInput
      end>
  end
  inherited CDSItem: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'VEN_ID'
        ParamType = ptInput
      end>
    BeforePost = CDSItemBeforePost
    AfterPost = CDSItemAfterPost
    inherited CDSItemITV_QTDE: TFMTBCDField
      DisplayFormat = '#,##0.000'
    end
    inherited CDSItemITV_DESCONTO: TFMTBCDField
      DisplayFormat = '#,##0.00'
    end
    inherited CDSItemITV_PRECOVENDA: TFMTBCDField
      DisplayFormat = '#,##0.00'
    end
    inherited CDSItemITV_VALORTOTAL: TFMTBCDField
      DisplayFormat = '#,##0.00'
    end
  end
end
