view: prod_p {
  sql_table_name: `pocgrupoalen.prod_p`
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

  dimension: display_order {
    type: string
    sql: ${TABLE}.display_order ;;
  }

  dimension: fabricante_unif_ {
    type: string
    sql: ${TABLE}.fabricante_unif_ ;;
  }

  dimension: h1_jabon_en_barra_level_0 {
    type: string
    sql: ${TABLE}.h1_jabon_en_barra_level_0 ;;
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

  dimension: marca_unif_ {
    type: string
    sql: ${TABLE}.marca_unif_ ;;
  }

  dimension: parent_tag {
    type: string
    sql: ${TABLE}.parent_tag ;;
  }

  dimension: peso_convertido {
    type: string
    sql: ${TABLE}.peso_convertido ;;
  }

  dimension: presentacion_unif_ {
    type: string
    sql: ${TABLE}.presentacion_unif_ ;;
  }

  dimension: presentacion_unif__ii {
    type: string
    sql: ${TABLE}.presentacion_unif__ii ;;
  }

  dimension: presentacion_unif__iii {
    type: string
    sql: ${TABLE}.presentacion_unif__iii ;;
  }

  dimension: presentacion_unif__iv {
    type: string
    sql: ${TABLE}.presentacion_unif__iv ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.short ;;
  }

  dimension: t1_jabon_en_barra__presentacion__level_0 {
    type: string
    sql: ${TABLE}.t1_jabon_en_barra__presentacion__level_0 ;;
  }

  dimension: t2_jabon_en_barra__liquido___solido__level_0 {
    type: string
    sql: ${TABLE}.t2_jabon_en_barra__liquido___solido__level_0 ;;
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
