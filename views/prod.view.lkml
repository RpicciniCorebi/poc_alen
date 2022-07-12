view: prod {
  sql_table_name: `pocgrupoalen.prod`
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

  dimension: aroma_unif_ {
    type: string
    sql: ${TABLE}.aroma_unif_ ;;
  }

  dimension: aroma_unif__ii {
    type: string
    sql: ${TABLE}.aroma_unif__ii ;;
  }

  dimension: display_order {
    type: string
    sql: ${TABLE}.display_order ;;
  }

  dimension: fabricante_unif_ {
    type: string
    sql: ${TABLE}.fabricante_unif_ ;;
  }

  dimension: h1_detergentes_trastes_level_0 {
    type: string
    sql: ${TABLE}.h1_detergentes_trastes_level_0 ;;
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

  dimension: item {
    type: string
    sql: ${TABLE}.item ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.long ;;
  }

  dimension: marca_unif_ {
    type: string
    sql: ${TABLE}.marca_unif_ ;;
  }

  dimension: marca_unif__aroma_unif_ {
    type: string
    sql: ${TABLE}.marca_unif__aroma_unif_ ;;
  }

  dimension: marca_unif__ii {
    type: string
    sql: ${TABLE}.marca_unif__ii ;;
  }

  dimension: parent_tag {
    type: string
    sql: ${TABLE}.parent_tag ;;
  }

  dimension: peso_convertido {
    type: string
    sql: ${TABLE}.peso_convertido ;;
  }

  dimension: peso_convertido_ii {
    type: string
    sql: ${TABLE}.peso_convertido_ii ;;
  }

  dimension: presentacion_unif_ {
    type: string
    sql: ${TABLE}.presentacion_unif_ ;;
  }

  dimension: presentacion_unif__iii {
    type: string
    sql: ${TABLE}.presentacion_unif__iii ;;
  }

  dimension: salvo_concentrado {
    type: string
    sql: ${TABLE}.salvo_concentrado ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.short ;;
  }

  dimension: submarca_unif_ {
    type: string
    sql: ${TABLE}.submarca_unif_ ;;
  }

  dimension: t1_detergentes_trastes_uso_unif__level_0 {
    type: string
    sql: ${TABLE}.t1_detergentes_trastes_uso_unif__level_0 ;;
  }

  dimension: t2_detergentes_trastes_presentacion_unif__level_0 {
    type: string
    sql: ${TABLE}.t2_detergentes_trastes_presentacion_unif__level_0 ;;
  }

  dimension: t3_detergentes_trastes_marca_unif__level_0 {
    type: string
    sql: ${TABLE}.t3_detergentes_trastes_marca_unif__level_0 ;;
  }

  dimension: t4_detergentes_trastes_salvo_limon__level_0 {
    type: string
    sql: ${TABLE}.t4_detergentes_trastes_salvo_limon__level_0 ;;
  }

  dimension: t5_detergentes_trastes_salvo_concentrado__level_0 {
    type: string
    sql: ${TABLE}.t5_detergentes_trastes_salvo_concentrado__level_0 ;;
  }

  dimension: t6_detergentes_trastes_rangos_unif__level_0 {
    type: string
    sql: ${TABLE}.t6_detergentes_trastes_rangos_unif__level_0 ;;
  }

  dimension: t7_detergentes_trastes_axion_salvo_eficaz__level_0 {
    type: string
    sql: ${TABLE}.t7_detergentes_trastes_axion_salvo_eficaz__level_0 ;;
  }

  dimension: t8_detergentes_trastes_t__axion__level_0 {
    type: string
    sql: ${TABLE}.t8_detergentes_trastes_t__axion__level_0 ;;
  }

  dimension: t_axion {
    type: string
    sql: ${TABLE}.t_axion ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: total_mercado {
    type: string
    sql: ${TABLE}.total_mercado ;;
  }

  dimension: uso_unif_ {
    type: string
    sql: ${TABLE}.uso_unif_ ;;
  }

  measure: count {
    type: count
    drill_fields: [hier_name, hier_level_name]
  }
}
