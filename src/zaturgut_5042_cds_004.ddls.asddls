@AbapCatalog.sqlViewName: 'ZATURGUT_CDS_004'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ödev 2 - CDS 2'
define view zaturgut_5042_cds_004 as select from zaturgut_5042_cds_003 as z03
{
    key z03.vbeln,
    sum(z03.conversion_netwr) as sum_of_conversion_netwr,
    z03.kunnrAd,
    count(*) as count_of_bill,
    division( cast(sum(z03.conversion_netwr) as abap.curr( 15, 2 )), cast(count(*) as abap.int1), 2 ) as average_netwr,
    substring(z03.fkdat, 1, 4) as billing_year,
    substring(z03.fkdat, 5, 2) as billing_month,
    substring(z03.fkdat, 7, 2) as billing_day,
    substring(z03.inco2_l, 1, 3) as incoterm
} group by z03.vbeln, z03.kunnrAd, z03.fkdat, z03.inco2_l
