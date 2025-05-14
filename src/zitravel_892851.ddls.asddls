@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel View Entity'
@Metadata.ignorePropagatedAnnotations: true
@AbapCatalog.extensibility: {
  extensible: true,
  elementSuffix: 'ZMF',
  quota: {
    maximumFields: 500,
    maximumBytes: 5000
  },
  dataSources: [ '_Travel' ]
}

define root view entity ZITRAVEL_892851 as select from ztravel_892851 as _Travel
{
    key travel_id as TravelId,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    total_price as TotalPrice,
    currency_code as CurrencyCode,
    description as Description  
}
