view: fact_data_p_sr {
  sql_table_name: `pocgrupoalen.fact_data_p_sr`
    ;;

  dimension: a_st_e {
    type: string
    sql: ${TABLE}.a_st_e ;;
  }

  dimension: a_st_u {
    type: string
    sql: ${TABLE}.a_st_u ;;
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

  dimension: avu_cal {
    type: string
    sql: ${TABLE}.avu_cal ;;
  }

  dimension: avu_st_month {
    type: string
    sql: ${TABLE}.avu_st_month ;;
  }

  dimension: display_order {
    type: string
    sql: ${TABLE}.display_order ;;
  }

  dimension: dn_cal {
    type: string
    sql: ${TABLE}.dn_cal ;;
  }

  dimension: dn_oos_4w {
    type: string
    sql: ${TABLE}.dn_oos_4w ;;
  }

  dimension: dn_oos_cal {
    type: string
    sql: ${TABLE}.dn_oos_cal ;;
  }

  dimension: dn_pur_cal {
    type: string
    sql: ${TABLE}.dn_pur_cal ;;
  }

  dimension: dw {
    type: string
    sql: ${TABLE}.dw ;;
  }

  dimension: dw_oos {
    type: string
    sql: ${TABLE}.dw_oos ;;
  }

  dimension: dw_pu {
    type: string
    sql: ${TABLE}.dw_pu ;;
  }

  dimension: e {
    type: string
    sql: ${TABLE}.e ;;
  }

  dimension: e_purch {
    type: string
    sql: ${TABLE}.e_purch ;;
  }

  dimension: ee {
    type: string
    sql: ${TABLE}.ee ;;
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

  dimension: mkt_tag {
    type: string
    sql: ${TABLE}.mkt_tag ;;
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

  dimension: p {
    type: string
    sql: ${TABLE}.p ;;
  }

  dimension: parent_tag {
    type: string
    sql: ${TABLE}.parent_tag ;;
  }

  dimension: per_tag {
    type: string
    sql: ${TABLE}.per_tag ;;
  }

  dimension: prod_tag {
    type: string
    sql: ${TABLE}.prod_tag ;;
  }

  dimension: pu {
    type: string
    sql: ${TABLE}.pu ;;
  }

  dimension: sgv_dw_oos_4w_nw {
    type: string
    sql: ${TABLE}.sgv_dw_oos_4w_nw ;;
  }

  dimension: sh_e {
    type: string
    sql: ${TABLE}.sh_e ;;
  }

  dimension: sh_e_fst {
    type: string
    sql: ${TABLE}.sh_e_fst ;;
  }

  dimension: sh_e_pu {
    type: string
    sql: ${TABLE}.sh_e_pu ;;
  }

  dimension: sh_e_st {
    type: string
    sql: ${TABLE}.sh_e_st ;;
  }

  dimension: sh_stu {
    type: string
    sql: ${TABLE}.sh_stu ;;
  }

  dimension: sh_u {
    type: string
    sql: ${TABLE}.sh_u ;;
  }

  dimension: sh_u_purch {
    type: string
    sql: ${TABLE}.sh_u_purch ;;
  }

  dimension: sh_u_st {
    type: string
    sql: ${TABLE}.sh_u_st ;;
  }

  dimension: sh_v {
    type: string
    sql: ${TABLE}.sh_v ;;
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

  dimension: short {
    type: string
    sql: ${TABLE}.short ;;
  }

  dimension: stto {
    type: string
    sql: ${TABLE}.stto ;;
  }

  dimension: stu {
    type: string
    sql: ${TABLE}.stu ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: u {
    type: string
    sql: ${TABLE}.u ;;
  }

  dimension: u_purch {
    type: string
    sql: ${TABLE}.u_purch ;;
  }

  dimension: u_st_av_h {
    type: string
    sql: ${TABLE}.u_st_av_h ;;
  }

  dimension: v {
    type: string
    sql: ${TABLE}.v ;;
  }

  measure: count {
    type: count
    drill_fields: [hier_name, hier_level_name]
  }
}
