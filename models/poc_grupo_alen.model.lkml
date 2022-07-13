## Configuración de Modelo
label: "POC Grupo AleN"

connection: "poc_grupo_alen"

datagroup: poc_grupo_alen_default_datagroup {
  label: "Grupo de Datos POC Alen "
  description: "Modelo Copa (SAP) vs Nielsen"
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: poc_grupo_alen_default_datagroup

# include all the views
include: "/views/*.view.lkml"

## Explores
explore: copa {
  label: "SAP vs Nielsen"
  view_label: "Copa SAP"
  description: "Modelo de la POC de Alen que busca relacionar los registros de SAP con los de Nielsen"

  join: materiales {
    view_label: "Materiales SAP"
    relationship: many_to_one
    type: left_outer
    sql_on: ${copa.matnr} = ${materiales.idmaterial} ;;
  }

  join: prod_scan_retail {
    view_label: "Prod Scantrack-Retail Nielsen"
    relationship: many_to_one
    type: left_outer
    sql_on: ${materiales.cveupccmp} = ${prod_scan_retail.item}  ;;
  }

  join: fact_data_p {
    view_label: "Fact Data Retail"
    relationship: one_to_many
    type: inner
    sql_on: ${prod_scan_retail.tag} = ${fact_data_p.prod_tag} and  ${mkt_p.tag} = "MQ2LD" ;;
  }

  join: per_p {
    view_label: "Período Retail Nielsen"
    relationship: many_to_one
    type: left_outer
    sql_on: ${fact_data_p.per_tag} = ${per_p.tag} ;;
  }

  join: mkt_p {
    view_label: "Market Retail Nielsen"
    relationship: many_to_one
    type: left_outer
    sql_on: ${fact_data_p.mkt_tag} = ${mkt_p.tag} and ${mkt_p.tag} = "MQ2LD" ;;
  }

}
