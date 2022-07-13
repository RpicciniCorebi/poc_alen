view: prod_scan_retail {
  derived_table: {
    sql: SELECT a.item, b.*
          FROM `poc-349018.pocgrupoalen.prod` as a
          INNER JOIN `poc-349018.pocgrupoalen.prod_p` as b
              ON a.h1_limpiadores_liquidos_level_0 = b.h1_limpiadores_liquidos_level_0
              AND a.fabricante_unif_ = b.fabricante_unif_
              AND a.marca_unif_ = b.marca_unif_
              AND a.uso___tipo = b.uso___tipo
              AND a.presentacion_unif_ii = b.presentacion_unif_ii
              AND a.submarca_unif_ = b.submarca_unif_
              AND a.aroma_unif_ = b.aroma_unif_
              AND a.envase_unif____repuesto = b.envase_unif____repuesto
              AND a.peso_convertido = b.peso_convertido
              AND b.fabricante_unif_ = 'INDS. ALEN'
              AND  b.hier_level_num = '9'
          WHERE a.fabricante_unif_ = 'INDS. ALEN' AND a.hier_level_num = '10'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: item {
    type: string
    sql: ${TABLE}.item ;;
  }

  dimension: tag {
    primary_key: yes
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.short ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.long ;;
  }

  dimension: display_order {
    type: string
    sql: ${TABLE}.display_order ;;
  }

  dimension: parent_tag {
    type: string
    sql: ${TABLE}.parent_tag ;;
  }

  dimension: hier_num {
    type: string
    sql: ${TABLE}.hier_num ;;
  }

  dimension: hier_name {
    type: string
    sql: ${TABLE}.hier_name ;;
  }

  dimension: hier_level_num {
    type: string
    sql: ${TABLE}.hier_level_num ;;
  }

  dimension: hier_level_name {
    type: string
    sql: ${TABLE}.hier_level_name ;;
  }

  dimension: h1_limpiadores_liquidos_level_0 {
    type: string
    sql: ${TABLE}.h1_limpiadores_liquidos_level_0 ;;
  }

  dimension: fabricante_unif_ {
    type: string
    sql: ${TABLE}.fabricante_unif_ ;;
  }

  dimension: marca_unif_ {
    type: string
    sql: ${TABLE}.marca_unif_ ;;
  }

  dimension: uso___tipo {
    type: string
    sql: ${TABLE}.uso___tipo ;;
  }

  dimension: presentacion_unif_ii {
    type: string
    sql: ${TABLE}.presentacion_unif_ii ;;
  }

  dimension: submarca_unif_ {
    type: string
    sql: ${TABLE}.submarca_unif_ ;;
  }

  dimension: aroma_unif_ {
    type: string
    sql: ${TABLE}.aroma_unif_ ;;
  }

  dimension: envase_unif____repuesto {
    type: string
    sql: ${TABLE}.envase_unif____repuesto ;;
  }

  dimension: peso_convertido {
    type: string
    sql: ${TABLE}.peso_convertido ;;
  }

  dimension: envase_unif____repuesto_ii {
    type: string
    sql: ${TABLE}.envase_unif____repuesto_ii ;;
  }

  dimension: fabricante_unif__ii_h2 {
    type: string
    sql: ${TABLE}.fabricante_unif__ii_h2 ;;
  }

  dimension: h2_colgate_level_0 {
    type: string
    sql: ${TABLE}.h2_colgate_level_0 ;;
  }

  dimension: marca_unif__ii_h2 {
    type: string
    sql: ${TABLE}.marca_unif__ii_h2 ;;
  }

  dimension: segmento_cp {
    type: string
    sql: ${TABLE}.segmento_cp ;;
  }

  dimension: h2_limpiadores_liquidos_level_0 {
    type: string
    sql: ${TABLE}.h2_limpiadores_liquidos_level_0 ;;
  }

  dimension: tipo_unif_ {
    type: string
    sql: ${TABLE}.tipo_unif_ ;;
  }

  dimension: uso_unif_ {
    type: string
    sql: ${TABLE}.uso_unif_ ;;
  }

  dimension: fabricante_unif__ii {
    type: string
    sql: ${TABLE}.fabricante_unif__ii ;;
  }

  dimension: marca_unif__ii {
    type: string
    sql: ${TABLE}.marca_unif__ii ;;
  }

  dimension: presentacion_unif__i {
    type: string
    sql: ${TABLE}.presentacion_unif__i ;;
  }

  dimension: t1_limpiadores_liquidos__presentacion__level_0 {
    type: string
    sql: ${TABLE}.t1_limpiadores_liquidos__presentacion__level_0 ;;
  }

  dimension: tipo_unif__ii {
    type: string
    sql: ${TABLE}.tipo_unif__ii ;;
  }

  dimension: rangos_unif_ {
    type: string
    sql: ${TABLE}.rangos_unif_ ;;
  }

  dimension: t2_limpiadores_liquidos__rangos_unif___level_0 {
    type: string
    sql: ${TABLE}.t2_limpiadores_liquidos__rangos_unif___level_0 ;;
  }

  dimension: t_atomizadores_alen {
    type: string
    sql: ${TABLE}.t_atomizadores_alen ;;
  }

  dimension: t3_limpiadores_liquidos__t_atomizadores_alen__level_0 {
    type: string
    sql: ${TABLE}.t3_limpiadores_liquidos__t_atomizadores_alen__level_0 ;;
  }

  dimension: t_pinol_esencias {
    type: string
    sql: ${TABLE}.t_pinol_esencias ;;
  }

  dimension: t4_limpiadores_liquidos__t_pinol_esencias__level_0 {
    type: string
    sql: ${TABLE}.t4_limpiadores_liquidos__t_pinol_esencias__level_0 ;;
  }

  dimension: t_cloralex___clorox {
    type: string
    sql: ${TABLE}.t_cloralex___clorox ;;
  }

  dimension: t5_limpiadores_liquidos__t_fabricante_sin_gel__level_0 {
    type: string
    sql: ${TABLE}.t5_limpiadores_liquidos__t_fabricante_sin_gel__level_0 ;;
  }

  dimension: limpiadores_liquidos_sin_cloros_gel {
    type: string
    sql: ${TABLE}.limpiadores_liquidos_sin_cloros_gel ;;
  }

  dimension: t6_limpiadores_liquidos__t_limpiadores_liquidos__level_0 {
    type: string
    sql: ${TABLE}.t6_limpiadores_liquidos__t_limpiadores_liquidos__level_0 ;;
  }

  dimension: especializados {
    type: string
    sql: ${TABLE}.especializados ;;
  }

  dimension: t7_limpiadores_liquidos__t_especializados_sin_cloros_gel__level_0 {
    type: string
    sql: ${TABLE}.t7_limpiadores_liquidos__t_especializados_sin_cloros_gel__level_0 ;;
  }

  dimension: t8_limpiadores_liquidos__t_varios__level_0 {
    type: string
    sql: ${TABLE}.t8_limpiadores_liquidos__t_varios__level_0 ;;
  }

  dimension: totales_varios {
    type: string
    sql: ${TABLE}.totales_varios ;;
  }

  dimension: t_fabuloso {
    type: string
    sql: ${TABLE}.t_fabuloso ;;
  }

  dimension: t9_limpiadores_liquidos__t_fabuloso__level_0 {
    type: string
    sql: ${TABLE}.t9_limpiadores_liquidos__t_fabuloso__level_0 ;;
  }

  dimension: t_desinfection_lds___wipes {
    type: string
    sql: ${TABLE}.t_desinfection_lds___wipes ;;
  }

  dimension: t10_desinfection_lds___wipes_level_0 {
    type: string
    sql: ${TABLE}.t10_desinfection_lds___wipes_level_0 ;;
  }

  dimension: t_reckitt_banos {
    type: string
    sql: ${TABLE}.t_reckitt_banos ;;
  }

  dimension: t11_reckitt_banos_level_0 {
    type: string
    sql: ${TABLE}.t11_reckitt_banos_level_0 ;;
  }

  dimension: t_reckitt_cocinas {
    type: string
    sql: ${TABLE}.t_reckitt_cocinas ;;
  }

  dimension: t12_reckitt_cocinas_level_0 {
    type: string
    sql: ${TABLE}.t12_reckitt_cocinas_level_0 ;;
  }

  set: detail {
    fields: [
      item,
      tag,
      short,
      long,
      display_order,
      parent_tag,
      hier_num,
      hier_name,
      hier_level_num,
      hier_level_name,
      h1_limpiadores_liquidos_level_0,
      fabricante_unif_,
      marca_unif_,
      uso___tipo,
      presentacion_unif_ii,
      submarca_unif_,
      aroma_unif_,
      envase_unif____repuesto,
      peso_convertido,
      envase_unif____repuesto_ii,
      fabricante_unif__ii_h2,
      h2_colgate_level_0,
      marca_unif__ii_h2,
      segmento_cp,
      h2_limpiadores_liquidos_level_0,
      tipo_unif_,
      uso_unif_,
      fabricante_unif__ii,
      marca_unif__ii,
      presentacion_unif__i,
      t1_limpiadores_liquidos__presentacion__level_0,
      tipo_unif__ii,
      rangos_unif_,
      t2_limpiadores_liquidos__rangos_unif___level_0,
      t_atomizadores_alen,
      t3_limpiadores_liquidos__t_atomizadores_alen__level_0,
      t_pinol_esencias,
      t4_limpiadores_liquidos__t_pinol_esencias__level_0,
      t_cloralex___clorox,
      t5_limpiadores_liquidos__t_fabricante_sin_gel__level_0,
      limpiadores_liquidos_sin_cloros_gel,
      t6_limpiadores_liquidos__t_limpiadores_liquidos__level_0,
      especializados,
      t7_limpiadores_liquidos__t_especializados_sin_cloros_gel__level_0,
      t8_limpiadores_liquidos__t_varios__level_0,
      totales_varios,
      t_fabuloso,
      t9_limpiadores_liquidos__t_fabuloso__level_0,
      t_desinfection_lds___wipes,
      t10_desinfection_lds___wipes_level_0,
      t_reckitt_banos,
      t11_reckitt_banos_level_0,
      t_reckitt_cocinas,
      t12_reckitt_cocinas_level_0
    ]
  }
}
