view: prod_scan_retail {
  sql_table_name: `pocgrupoalen.prod_scan_retail`
    ;;

  dimension: aroma_unif_ {
    type: string
    sql: ${TABLE}.aroma_unif_ ;;
  }

  dimension: display_order {
    type: string
    sql: ${TABLE}.display_order ;;
  }

  dimension: envase_unif____repuesto {
    type: string
    sql: ${TABLE}.envase_unif____repuesto ;;
  }

  dimension: envase_unif____repuesto_ii {
    type: string
    sql: ${TABLE}.envase_unif____repuesto_ii ;;
  }

  dimension: especializados {
    type: string
    sql: ${TABLE}.especializados ;;
  }

  dimension: fabricante_unif_ {
    type: string
    sql: ${TABLE}.fabricante_unif_ ;;
  }

  dimension: fabricante_unif__ii {
    type: string
    sql: ${TABLE}.fabricante_unif__ii ;;
  }

  dimension: fabricante_unif__ii_h2 {
    type: string
    sql: ${TABLE}.fabricante_unif__ii_h2 ;;
  }

  dimension: h1_limpiadores_liquidos_level_0 {
    type: string
    sql: ${TABLE}.h1_limpiadores_liquidos_level_0 ;;
  }

  dimension: h2_colgate_level_0 {
    type: string
    sql: ${TABLE}.h2_colgate_level_0 ;;
  }

  dimension: h2_limpiadores_liquidos_level_0 {
    type: string
    sql: ${TABLE}.h2_limpiadores_liquidos_level_0 ;;
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
    primary_key: yes
    sql: ${TABLE}.item ;;
  }

  dimension: limpiadores_liquidos_sin_cloros_gel {
    type: string
    sql: ${TABLE}.limpiadores_liquidos_sin_cloros_gel ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.long ;;
  }

  dimension: marca_unif_ {
    type: string
    sql: ${TABLE}.marca_unif_ ;;
  }

  dimension: marca_unif__ii {
    type: string
    sql: ${TABLE}.marca_unif__ii ;;
  }

  dimension: marca_unif__ii_h2 {
    type: string
    sql: ${TABLE}.marca_unif__ii_h2 ;;
  }

  dimension: parent_tag {
    type: string
    sql: ${TABLE}.parent_tag ;;
  }

  dimension: peso_convertido {
    type: string
    sql: ${TABLE}.peso_convertido ;;
  }

  dimension: presentacion_unif__i {
    type: string
    sql: ${TABLE}.presentacion_unif__i ;;
  }

  dimension: presentacion_unif_ii {
    type: string
    sql: ${TABLE}.presentacion_unif_ii ;;
  }

  dimension: rangos_unif_ {
    type: string
    sql: ${TABLE}.rangos_unif_ ;;
  }

  dimension: segmento_cp {
    type: string
    sql: ${TABLE}.segmento_cp ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.short ;;
  }

  dimension: submarca_unif_ {
    type: string
    sql: ${TABLE}.submarca_unif_ ;;
  }

  dimension: t10_desinfection_lds___wipes_level_0 {
    type: string
    sql: ${TABLE}.t10_desinfection_lds___wipes_level_0 ;;
  }

  dimension: t11_reckitt_banos_level_0 {
    type: string
    sql: ${TABLE}.t11_reckitt_banos_level_0 ;;
  }

  dimension: t12_reckitt_cocinas_level_0 {
    type: string
    sql: ${TABLE}.t12_reckitt_cocinas_level_0 ;;
  }

  dimension: t1_limpiadores_liquidos__presentacion__level_0 {
    type: string
    sql: ${TABLE}.t1_limpiadores_liquidos__presentacion__level_0 ;;
  }

  dimension: t2_limpiadores_liquidos__rangos_unif___level_0 {
    type: string
    sql: ${TABLE}.t2_limpiadores_liquidos__rangos_unif___level_0 ;;
  }

  dimension: t3_limpiadores_liquidos__t_atomizadores_alen__level_0 {
    type: string
    sql: ${TABLE}.t3_limpiadores_liquidos__t_atomizadores_alen__level_0 ;;
  }

  dimension: t4_limpiadores_liquidos__t_pinol_esencias__level_0 {
    type: string
    sql: ${TABLE}.t4_limpiadores_liquidos__t_pinol_esencias__level_0 ;;
  }

  dimension: t5_limpiadores_liquidos__t_fabricante_sin_gel__level_0 {
    type: string
    sql: ${TABLE}.t5_limpiadores_liquidos__t_fabricante_sin_gel__level_0 ;;
  }

  dimension: t6_limpiadores_liquidos__t_limpiadores_liquidos__level_0 {
    type: string
    sql: ${TABLE}.t6_limpiadores_liquidos__t_limpiadores_liquidos__level_0 ;;
  }

  dimension: t7_limpiadores_liquidos__t_especializados_sin_cloros_gel__level_0 {
    type: string
    sql: ${TABLE}.t7_limpiadores_liquidos__t_especializados_sin_cloros_gel__level_0 ;;
  }

  dimension: t8_limpiadores_liquidos__t_varios__level_0 {
    type: string
    sql: ${TABLE}.t8_limpiadores_liquidos__t_varios__level_0 ;;
  }

  dimension: t9_limpiadores_liquidos__t_fabuloso__level_0 {
    type: string
    sql: ${TABLE}.t9_limpiadores_liquidos__t_fabuloso__level_0 ;;
  }

  dimension: t_atomizadores_alen {
    type: string
    sql: ${TABLE}.t_atomizadores_alen ;;
  }

  dimension: t_cloralex___clorox {
    type: string
    sql: ${TABLE}.t_cloralex___clorox ;;
  }

  dimension: t_desinfection_lds___wipes {
    type: string
    sql: ${TABLE}.t_desinfection_lds___wipes ;;
  }

  dimension: t_fabuloso {
    type: string
    sql: ${TABLE}.t_fabuloso ;;
  }

  dimension: t_pinol_esencias {
    type: string
    sql: ${TABLE}.t_pinol_esencias ;;
  }

  dimension: t_reckitt_banos {
    type: string
    sql: ${TABLE}.t_reckitt_banos ;;
  }

  dimension: t_reckitt_cocinas {
    type: string
    sql: ${TABLE}.t_reckitt_cocinas ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: tipo_unif_ {
    type: string
    sql: ${TABLE}.tipo_unif_ ;;
  }

  dimension: tipo_unif__ii {
    type: string
    sql: ${TABLE}.tipo_unif__ii ;;
  }

  dimension: totales_varios {
    type: string
    sql: ${TABLE}.totales_varios ;;
  }

  dimension: uso___tipo {
    type: string
    sql: ${TABLE}.uso___tipo ;;
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
