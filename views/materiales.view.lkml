view: materiales {
  sql_table_name: `pocgrupoalen.materiales`
    ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.CATEGORIA ;;
  }

  dimension: cvecategoria {
    type: string
    sql: ${TABLE}.CVECATEGORIA ;;
  }

  dimension: cveclasificacion {
    type: string
    sql: ${TABLE}.CVECLASIFICACION ;;
  }

  dimension: cveextension {
    type: string
    sql: ${TABLE}.CVEEXTENSION ;;
  }

  dimension: cvemarca {
    type: string
    sql: ${TABLE}.CVEMARCA ;;
  }

  dimension: cvetamanio {
    type: string
    sql: ${TABLE}.CVETAMANIO ;;
  }

  dimension: cveupc {
    type: string
    sql: ${TABLE}.CVEUPC ;;
  }

  dimension: cveupccmp {
    type: string
    sql: ${TABLE}.CVEUPCCMP ;;
  }

  dimension: cvevariante {
    type: string
    sql: ${TABLE}.CVEVARIANTE ;;
  }

  dimension: extension {
    type: string
    sql: ${TABLE}.EXTENSION ;;
  }

  dimension: idmaterial {
    type: string
    sql: ${TABLE}.IDMATERIAL ;;
  }

  dimension: litros {
    type: number
    sql: ${TABLE}.LITROS ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.MARCA ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.MATERIAL ;;
  }

  dimension: piezas {
    type: number
    sql: ${TABLE}.PIEZAS ;;
  }

  dimension: tamanio {
    type: string
    sql: ${TABLE}.TAMANIO ;;
  }

  dimension: variante {
    type: string
    sql: ${TABLE}.VARIANTE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
