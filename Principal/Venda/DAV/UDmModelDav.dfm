inherited DmModelDav: TDmModelDav
  inherited CDSItem: TClientDataSet
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
