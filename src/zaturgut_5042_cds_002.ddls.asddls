@AbapCatalog.sqlViewName: 'ZATURGUT_CDS_002'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 002'
define view zaturgut_5042_cds_002 as select from ekko
left outer join ekpo on ekpo.ebeln = ekko.ebeln
left outer join mara on mara.matnr = ekpo.matnr
left outer join makt on makt.matnr = mara.matnr
                    and makt.spras = $session.system_language
left outer join lfa1 on lfa1.lifnr = ekko.lifnr
{
    ekpo.ebeln,
    ekpo.ebelp,
    ekpo.matnr,
    makt.maktx,
    ekpo.werks,
    ekpo.lgort,
    ekpo.meins,
    lfa1.lifnr,
    lfa1.name1,
    concat_with_space(lfa1.stras, lfa1.mcod3, 1) as satici_adresi
}
