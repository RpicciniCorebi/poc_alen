view: per_p {
  sql_table_name: `pocgrupoalen.per_p`
    ;;

  dimension: display_order {
    type: number
    sql: cast(${TABLE}.display_order as int64) ;;
  }

  dimension: hier_level_name {
    type: string
    sql: ${TABLE}.hier_level_name ;;
  }

  dimension: hier_level_num {
    type: string
    sql: ${TABLE}.hier_level_num ;;
  }

  dimension: hier_name {
    type: string
    sql: ${TABLE}.hier_name ;;
  }

  dimension: hier_num {
    type: string
    sql: ${TABLE}.hier_num ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.long ;;
  }

  dimension: Anio {
    label: "Year"
    type: number
    sql: cast(split(${long}, " ") [OFFSET(1)] as int64) ;;
  }

  dimension: Mes {
    label: "Month"
    type: string
    sql: split(${long}, " ") [OFFSET(0)] ;;
  }

  dimension: Mes_short {
    label: "Month Short"
    type: string
    sql: substring(split(${long}, " ") [OFFSET(0)], 1, 3) ;;
  }

  dimension: parent_tag {
    type: string
    sql: ${TABLE}.parent_tag ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.short ;;
  }

  dimension: tag {
    primary_key: yes
    type: string
    sql: ${TABLE}.tag ;;
  }

  measure: count {
    type: count
    drill_fields: [hier_name, hier_level_name]
  }
}
