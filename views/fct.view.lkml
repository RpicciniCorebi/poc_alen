view: fct {
  sql_table_name: `pocgrupoalen.fct`
    ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: denominator {
    type: string
    sql: ${TABLE}.denominator ;;
  }

  dimension: display_order {
    type: string
    sql: ${TABLE}.display_order ;;
  }

  dimension: fact_type {
    type: string
    sql: ${TABLE}.fact_type ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.long ;;
  }

  dimension: mkt_aggregation {
    type: string
    sql: ${TABLE}.mkt_aggregation ;;
  }

  dimension: per_aggregation {
    type: string
    sql: ${TABLE}.per_aggregation ;;
  }

  dimension: precision {
    type: string
    sql: ${TABLE}.precision ;;
  }

  dimension: prod_aggregation {
    type: string
    sql: ${TABLE}.prod_aggregation ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.short ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
