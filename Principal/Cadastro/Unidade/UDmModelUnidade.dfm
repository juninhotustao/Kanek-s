inherited DmModelUnidade: TDmModelUnidade
  inherited DTS: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'SELECT'#13#10#9#9'UN_ID, UN_CODIGO, UN_DESCRICAO'#13#10'    FROM'#13#10'    '#9'UNIDADE' +
      #13#10'    WHERE'#13#10#9#9'UN_CODIGO LIKE :UN_CODIGO AND UN_DESCRICAO LIKE :' +
      'UN_DESCRICAO'
    Params = <
      item
        DataType = ftString
        Name = 'UN_CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UN_DESCRICAO'
        ParamType = ptInput
      end>
    object DTSUN_ID: TIntegerField
      FieldName = 'UN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DTSUN_CODIGO: TStringField
      FieldName = 'UN_CODIGO'
      Size = 3
    end
    object DTSUN_DESCRICAO: TStringField
      FieldName = 'UN_DESCRICAO'
    end
  end
  inherited DSP: TDataSetProvider
    OnGetTableName = DSPGetTableName
  end
  inherited CDS: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'UN_CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UN_DESCRICAO'
        ParamType = ptInput
      end>
    object CDSUN_ID: TIntegerField
      FieldName = 'UN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSUN_CODIGO: TStringField
      FieldName = 'UN_CODIGO'
      Size = 3
    end
    object CDSUN_DESCRICAO: TStringField
      FieldName = 'UN_DESCRICAO'
    end
  end
end
