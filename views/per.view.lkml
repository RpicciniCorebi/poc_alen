view: per {
  sql_table_name: `pocgrupoalen.per`
    ;;

  dimension: display_order {
    type: string
    sql: ${TABLE}.DISPLAY_ORDER ;;
  }

  dimension: hier_level_name {
    type: string
    sql: ${TABLE}.HIER_LEVEL_NAME ;;
  }

  dimension: hier_level_num {
    type: string
    sql: ${TABLE}.HIER_LEVEL_NUM ;;
  }

  dimension: hier_name {
    type: string
    sql: ${TABLE}.HIER_NAME ;;
  }

  dimension: hier_num {
    type: string
    sql: ${TABLE}.HIER_NUM ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.LONG ;;
  }

  dimension: parent_tag {
    type: string
    sql: ${TABLE}.PARENT_TAG ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.SHORT ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.TAG ;;
  }

  measure: count {
    type: count
    drill_fields: [hier_name, hier_level_name]
  }
}
