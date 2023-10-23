@AbapCatalog.sqlViewName: 'ZATURGUT_CDS_001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 001'
define view zaturgut_5042_cds_001 as select from mara
left outer join makt on makt.matnr = mara.matnr
{
    mara.matnr,
    makt.maktx
}
