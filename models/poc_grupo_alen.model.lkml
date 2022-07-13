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

}

explore: fact_data_p {
  label: "Nielsen Retail"
  view_label: "Fact Data Retail"
  description: "Vista Factica de los datos Retail de Nielsen"
  always_join: [mkt_p, per_p, prod_scan_retail]

  join: prod_scan_retail {
    view_label: "Prod Scantrack-Retail Nielsen"
    relationship: many_to_one
    type: inner
    sql_on: ${fact_data_p.prod_tag} = ${prod_scan_retail.tag} ;;
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
