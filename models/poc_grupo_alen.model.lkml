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

## SAP Copa
explore: copa_sr {
  label: "SAP vs Nielsen"
  view_label: "Copa SAP"
  description: "Modelo de la POC de Alen que busca relacionar los registros de SAP con los de Nielsen"

  join: materiales {
    view_label: "Materiales SAP"
    relationship: many_to_one
    type: left_outer
    sql_on: ${copa_sr.matnr} = ${materiales.idmaterial} ;;
  }

## Nielsen dentro de SAP
  join: fact_data_p_sr {
    view_label: "Fact Data Retail"
    relationship: many_to_one
    type: left_outer
    sql_on: ${materiales.cveupccmp} = ${fact_data_p_sr.item}  and ${copa_sr.anio_mes} = ${fact_data_p_sr.anio_mes};;
  }

}

## Nielsen
explore: fact_data_p_sr {
  label: "Nielsen Retail"
  view_label: "Fact Data Retail"
  always_join: [prod_scan_retail, per_p, mkt_p]

  join: prod_scan_retail {
    view_label: "Nielsen Prod Scantrack-Retail "
    relationship: many_to_one
    type: left_outer
      sql_on: ${fact_data_p_sr.prod_tag} = ${prod_scan_retail.tag}  ;;
  }

  join: per_p {
    view_label: "Nielsen Período Retail"
    relationship: many_to_one
    type: left_outer
    sql_on: ${fact_data_p_sr.per_tag} = ${per_p.tag} ;;
  }

  join: mkt_p {
    view_label: "Nielsen Mkt Retail"
    relationship: many_to_one
    type: inner
    sql_on: ${fact_data_p_sr.mkt_tag} = ${mkt_p.tag} and ${mkt_p.tag} = "MQ2LD" ;;
  }


}
