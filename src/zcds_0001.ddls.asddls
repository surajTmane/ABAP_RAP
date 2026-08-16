@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Test CDS view'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_0001 as select from zyrdorder000
association to zyrditem000 as _item on $projection.Uuid = _item.uuid
{
 key zyrdorder000.uuid as Uuid,
 zyrdorder000.order_id as OrderId,
 zyrdorder000.customer_id as CustomerId,
 zyrdorder000.order_date as OrderDate,
 zyrdorder000.status as Status,
 zyrdorder000.currency_code as CurrencyCode,
 @Semantics.amount.currencyCode: 'CurrencyCode'
 zyrdorder000.net_amount as NetAmount,
 zyrdorder000.local_created_by as LocalCreatedBy,
 zyrdorder000.local_created_at as LocalCreatedAt,
 zyrdorder000.local_last_changed_by as LocalLastChangedBy,
 zyrdorder000.local_last_changed_at as LocalLastChangedAt,
 zyrdorder000.last_changed_at as LastChangedAt
    
}
