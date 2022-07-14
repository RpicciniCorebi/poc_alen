view: fact_data_retail_2 {
  derived_table: {
    sql: SELECT a_prod_p.item, a_fact_p.*, a_per_p.*
      FROM `poc-349018.pocgrupoalen.fact_data_p` as a_fact_p
      INNER JOIN (SELECT a.item, b.*
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
                  WHERE a.fabricante_unif_ = 'INDS. ALEN' AND a.hier_level_num = '10') as a_prod_p
       ON a_fact_p.prod_tag = a_prod_p.tag
      INNER JOIN `poc-349018.pocgrupoalen.per_p` as a_per_p
       ON a_fact_p.per_tag = a_per_p.TAG
      WHERE a_fact_p.mkt_tag = 'MQ2LD'
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

  dimension: mkt_tag {
    type: string
    sql: ${TABLE}.mkt_tag ;;
  }

  dimension: prod_tag {
    type: string
    sql: ${TABLE}.prod_tag ;;
  }

  dimension: per_tag {
    type: string
    sql: ${TABLE}.per_tag ;;
  }

  dimension: u {
    type: string
    sql: ${TABLE}.u ;;
  }

  dimension: e {
    type: string
    sql: ${TABLE}.e ;;
  }

  dimension: v {
    type: string
    sql: ${TABLE}.v ;;
  }

  dimension: sh_u {
    type: string
    sql: ${TABLE}.sh_u ;;
  }

  dimension: sh_e {
    type: string
    sql: ${TABLE}.sh_e ;;
  }

  dimension: sh_v {
    type: string
    sql: ${TABLE}.sh_v ;;
  }

  dimension: p {
    type: string
    sql: ${TABLE}.p ;;
  }

  dimension: pu {
    type: string
    sql: ${TABLE}.pu ;;
  }

  dimension: stto {
    type: string
    sql: ${TABLE}.stto ;;
  }

  dimension: shl_dw {
    type: string
    sql: ${TABLE}.shl_dw ;;
  }

  dimension: shl_dw65101 {
    type: string
    sql: ${TABLE}.shl_dw65101 ;;
  }

  dimension: shl_dw65102 {
    type: string
    sql: ${TABLE}.shl_dw65102 ;;
  }

  dimension: shl_dw65103 {
    type: string
    sql: ${TABLE}.shl_dw65103 ;;
  }

  dimension: shl_dw65104 {
    type: string
    sql: ${TABLE}.shl_dw65104 ;;
  }

  dimension: shl_dw65105 {
    type: string
    sql: ${TABLE}.shl_dw65105 ;;
  }

  dimension: e_purch {
    type: string
    sql: ${TABLE}.e_purch ;;
  }

  dimension: u_purch {
    type: string
    sql: ${TABLE}.u_purch ;;
  }

  dimension: ee {
    type: string
    sql: ${TABLE}.ee ;;
  }

  dimension: stu {
    type: string
    sql: ${TABLE}.stu ;;
  }

  dimension: sh_u_st {
    type: string
    sql: ${TABLE}.sh_u_st ;;
  }

  dimension: sh_u_purch {
    type: string
    sql: ${TABLE}.sh_u_purch ;;
  }

  dimension: avu_st_month {
    type: string
    sql: ${TABLE}.avu_st_month ;;
  }

  dimension: sh_e_st {
    type: string
    sql: ${TABLE}.sh_e_st ;;
  }

  dimension: sh_e_pu {
    type: string
    sql: ${TABLE}.sh_e_pu ;;
  }

  dimension: dw_pu {
    type: string
    sql: ${TABLE}.dw_pu ;;
  }

  dimension: dw_oos {
    type: string
    sql: ${TABLE}.dw_oos ;;
  }

  dimension: sh_e_fst {
    type: string
    sql: ${TABLE}.sh_e_fst ;;
  }

  dimension: dw {
    type: string
    sql: ${TABLE}.dw ;;
  }

  dimension: u_st_av_h {
    type: string
    sql: ${TABLE}.u_st_av_h ;;
  }

  dimension: acv_dw_h {
    type: string
    sql: ${TABLE}.acv_dw_h ;;
  }

  dimension: av_e_s_c {
    type: string
    sql: ${TABLE}.av_e_s_c ;;
  }

  dimension: av_st_c {
    type: string
    sql: ${TABLE}.av_st_c ;;
  }

  dimension: ave_cal {
    type: string
    sql: ${TABLE}.ave_cal ;;
  }

  dimension: ndh_cal {
    type: string
    sql: ${TABLE}.ndh_cal ;;
  }

  dimension: ndh_cal65101 {
    type: string
    sql: ${TABLE}.ndh_cal65101 ;;
  }

  dimension: ndh_cal65102 {
    type: string
    sql: ${TABLE}.ndh_cal65102 ;;
  }

  dimension: ndh_cal65103 {
    type: string
    sql: ${TABLE}.ndh_cal65103 ;;
  }

  dimension: ndh_cal65104 {
    type: string
    sql: ${TABLE}.ndh_cal65104 ;;
  }

  dimension: ndh_cal65105 {
    type: string
    sql: ${TABLE}.ndh_cal65105 ;;
  }

  dimension: dn_oos_cal {
    type: string
    sql: ${TABLE}.dn_oos_cal ;;
  }

  dimension: dn_cal {
    type: string
    sql: ${TABLE}.dn_cal ;;
  }

  dimension: dn_pur_cal {
    type: string
    sql: ${TABLE}.dn_pur_cal ;;
  }

  dimension: avu_cal {
    type: string
    sql: ${TABLE}.avu_cal ;;
  }

  dimension: a_st_u {
    type: string
    sql: ${TABLE}.a_st_u ;;
  }

  dimension: a_st_e {
    type: string
    sql: ${TABLE}.a_st_e ;;
  }

  dimension: sh_stu {
    type: string
    sql: ${TABLE}.sh_stu ;;
  }

  dimension: dn_oos_4w {
    type: string
    sql: ${TABLE}.dn_oos_4w ;;
  }

  dimension: sgv_dw_oos_4w_nw {
    type: string
    sql: ${TABLE}.sgv_dw_oos_4w_nw ;;
  }

  dimension: tag {
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

  set: detail {
    fields: [
      item,
      mkt_tag,
      prod_tag,
      per_tag,
      u,
      e,
      v,
      sh_u,
      sh_e,
      sh_v,
      p,
      pu,
      stto,
      shl_dw,
      shl_dw65101,
      shl_dw65102,
      shl_dw65103,
      shl_dw65104,
      shl_dw65105,
      e_purch,
      u_purch,
      ee,
      stu,
      sh_u_st,
      sh_u_purch,
      avu_st_month,
      sh_e_st,
      sh_e_pu,
      dw_pu,
      dw_oos,
      sh_e_fst,
      dw,
      u_st_av_h,
      acv_dw_h,
      av_e_s_c,
      av_st_c,
      ave_cal,
      ndh_cal,
      ndh_cal65101,
      ndh_cal65102,
      ndh_cal65103,
      ndh_cal65104,
      ndh_cal65105,
      dn_oos_cal,
      dn_cal,
      dn_pur_cal,
      avu_cal,
      a_st_u,
      a_st_e,
      sh_stu,
      dn_oos_4w,
      sgv_dw_oos_4w_nw,
      tag,
      short,
      long,
      display_order,
      parent_tag,
      hier_num,
      hier_name,
      hier_level_num,
      hier_level_name
    ]
  }
}
