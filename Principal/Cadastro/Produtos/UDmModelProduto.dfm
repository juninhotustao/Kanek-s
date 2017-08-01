inherited DmModelProduto: TDmModelProduto
  OldCreateOrder = True
  Height = 212
  Width = 126
  inherited DTS: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'SELECT'#13#10'    PRO_ID, PRO_DATA_CADASTRO, PRO_REFERENCIA,'#13#10'    PRO_' +
      'EAN, PRO_DESCRICAO, PRO_ESTOQUE, PRO_PRECO_CUSTO,'#13#10'    PRO_PRECO' +
      '_CUSTO_REAL, PRO_PRECO_MEDIO_COMPRA,'#13#10'    PRO_PRECO_VENDA'#13#10'FROM'#13 +
      #10'    PRODUTOS'#13#10'WHERE'#13#10'    ISNULL(PRO_EAN,'#39#39') LIKE :EAN AND'#13#10'    ' +
      'PRO_DESCRICAO LIKE :PRO_DESCRICAO AND PRO_REFERENCIA LIKE :REF'
    Params = <
      item
        DataType = ftUnknown
        Name = 'EAN'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PRO_DESCRICAO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'REF'
        ParamType = ptInput
      end>
    Left = 50
    object DTSPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DTSPRO_REFERENCIA: TStringField
      FieldName = 'PRO_REFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object DTSPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object DTSPRO_ESTOQUE: TFMTBCDField
      FieldName = 'PRO_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object DTSPRO_PRECO_CUSTO: TFMTBCDField
      FieldName = 'PRO_PRECO_CUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object DTSPRO_PRECO_CUSTO_REAL: TFMTBCDField
      FieldName = 'PRO_PRECO_CUSTO_REAL'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object DTSPRO_PRECO_MEDIO_COMPRA: TFMTBCDField
      FieldName = 'PRO_PRECO_MEDIO_COMPRA'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object DTSPRO_PRECO_VENDA: TFMTBCDField
      FieldName = 'PRO_PRECO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 3
    end
    object DTSPRO_EAN: TStringField
      FieldName = 'PRO_EAN'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object DTSPRO_DATA_CADASTRO: TSQLTimeStampField
      FieldName = 'PRO_DATA_CADASTRO'
      ProviderFlags = [pfInUpdate]
    end
  end
  inherited DSP: TDataSetProvider
    OnGetTableName = DSPGetTableName
    Left = 50
  end
  inherited CDS: TClientDataSet
    PacketRecords = 50
    Params = <
      item
        DataType = ftString
        Name = 'EAN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRO_DESCRICAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'REF'
        ParamType = ptInput
      end>
    AfterInsert = CDSAfterInsert
    Left = 50
    object CDSPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object CDSPRO_REFERENCIA: TStringField
      FieldName = 'PRO_REFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object CDSPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CDSPRO_ESTOQUE: TFMTBCDField
      FieldName = 'PRO_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      Precision = 9
      Size = 3
    end
    object CDSPRO_PRECO_CUSTO: TFMTBCDField
      FieldName = 'PRO_PRECO_CUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 3
    end
    object CDSPRO_PRECO_CUSTO_REAL: TFMTBCDField
      FieldName = 'PRO_PRECO_CUSTO_REAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 3
    end
    object CDSPRO_PRECO_MEDIO_COMPRA: TFMTBCDField
      FieldName = 'PRO_PRECO_MEDIO_COMPRA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 3
    end
    object CDSPRO_PRECO_VENDA: TFMTBCDField
      FieldName = 'PRO_PRECO_VENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 3
    end
    object CDSPRO_EAN: TStringField
      FieldName = 'PRO_EAN'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object CDSPRO_DATA_CADASTRO: TSQLTimeStampField
      FieldName = 'PRO_DATA_CADASTRO'
      ProviderFlags = [pfInUpdate]
    end
  end
end
