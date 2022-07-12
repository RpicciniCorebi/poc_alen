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
  label: "Copa SAP"
  description: "Tabla Copa de SAP"
}
