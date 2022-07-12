view: dim {
  sql_table_name: `pocgrupoalen.dim`
    ;;

  dimension: long {
    type: string
    sql: ${TABLE}.LONG ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.SHORT ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
