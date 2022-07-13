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

  join: nielsen_retail {
    view_label: "Fact Data Retail"
    relationship: many_to_many
    type: left_outer
    sql_on: ${materiales.cveupccmp} = ${nielsen_retail.item}  ;;
  }
}
