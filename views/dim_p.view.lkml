view: dim_p {
  sql_table_name: `pocgrupoalen.dim_p`
    ;;

  dimension: long {
    type: string
    sql: ${TABLE}.long ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.short ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
