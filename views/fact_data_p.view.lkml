view: fact_data_p {
  sql_table_name: `pocgrupoalen.fact_data_p`   ;;

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

  measure: vta_unidades_eq {
    label: "Ventas en unidades eq (in 000 KILOS/LITR)"
    type: sum
    sql: IFNULL(SAFE_CAST(${e} as INT64), 0) ;;
  }

  measure: pdm_volumen {
    label: "PdM volumen"
    type: percent_of_total
    sql: ${vta_unidades_eq} ;;
  }

  measure: vts_unidades {
    label: "Ventas en unidades (in 000)"
    type: sum
    sql: IFNULL(SAFE_CAST(${u} as INT64), 0) ;;
  }

  measure: pdm_piezas {
    label: "PdM piezas"
    type: percent_of_total
    sql: ${vts_unidades} ;;
  }

  measure: ventas_valor {
    label: "Ventas en valor (in 000 PESOS)"
    type: sum
    sql: IFNULL(SAFE_CAST(${v} as INT64), 0) ;;
  }

  measure: pdm_valor {
    label: "PdM valor"
    type: percent_of_total
    sql: ${ventas_valor} ;;
  }

  measure: precio_kilo_litro {
    label: "Precio kilo/litro"
    type: sum
    sql: IFNULL(SAFE_CAST(${p} as INT64), 0) ;;
  }

  measure: precio_piezas {
    label: "Precio Piezas "
    type: sum
    sql: IFNULL(SAFE_CAST(${pu} as INT64), 0) ;;
  }

  measure: indice_precio {
    label: "Indice de Precios"
    type: percent_of_total
    sql: ${pdm_valor} / ${pdm_volumen} ;;
  }

  dimension: per_tag {
    type: string
    sql: ${TABLE}.per_tag ;;
  }

  dimension: prod_tag {
    type: string
    sql: ${TABLE}.prod_tag ;;
  }

  dimension: mkt_tag {
    type: string
    sql: ${TABLE}.mkt_tag ;;
  }


  dimension: e {
    type: string
    hidden: yes
    sql: ${TABLE}.e ;;
  }

  dimension: u {
    type: string
    hidden: yes
    sql: ${TABLE}.u  ;;
  }

  dimension: v {
    type: string
    hidden: yes
    sql: ${TABLE}.v  ;;
  }

  dimension: p {
    type: string
    hidden: yes
    sql: ${TABLE}.p  ;;
  }

  dimension: pu {
    type: string
    hidden: yes
    sql: ${TABLE}.pu ;;
  }


  dimension: a_st_e {
    type: string
    hidden: yes
    sql: ${TABLE}.a_st_e ;;
  }

  dimension: a_st_u {
    type: string
    hidden: yes
    sql: ${TABLE}.a_st_u ;;
  }

  dimension: acv_dw_h {
    type: string
    hidden: yes
    sql: ${TABLE}.acv_dw_h ;;
  }

  dimension: av_e_s_c {
    type: string
    hidden: yes
    sql: ${TABLE}.av_e_s_c ;;
  }

  dimension: av_st_c {
    type: string
    hidden: yes
    sql: ${TABLE}.av_st_c ;;
  }

  dimension: ave_cal {
    type: string
    hidden: yes
    sql: ${TABLE}.ave_cal ;;
  }

  dimension: avu_cal {
    type: string
    hidden: yes
    sql: ${TABLE}.avu_cal ;;
  }

  dimension: avu_st_month {
    type: string
    hidden: yes
    sql: ${TABLE}.avu_st_month ;;
  }

  dimension: dn_cal {
    type: string
    hidden: yes
    sql: ${TABLE}.dn_cal ;;
  }

  dimension: dn_oos_4w {
    type: string
    hidden: yes
    sql: ${TABLE}.dn_oos_4w ;;
  }

  dimension: dn_oos_cal {
    type: string
    hidden: yes
    sql: ${TABLE}.dn_oos_cal ;;
  }

  dimension: dn_pur_cal {
    type: string
    hidden: yes
    sql: ${TABLE}.dn_pur_cal ;;
  }

  dimension: dw {
    type: string
    hidden: yes
    sql: ${TABLE}.dw ;;
  }

  dimension: dw_oos {
    type: string
    hidden: yes
    sql: ${TABLE}.dw_oos ;;
  }

  dimension: dw_pu {
    type: string
    hidden: yes
    sql: ${TABLE}.dw_pu ;;
  }


  dimension: e_purch {
    type: string
    hidden: yes
    sql: ${TABLE}.e_purch ;;
  }

  dimension: ee {
    type: string
    hidden: yes
    sql: ${TABLE}.ee ;;
  }

  dimension: ndh_cal {
    type: string
    hidden: yes
    sql: ${TABLE}.ndh_cal ;;
  }

  dimension: ndh_cal65101 {
    type: string
    hidden: yes
    sql: ${TABLE}.ndh_cal65101 ;;
  }

  dimension: ndh_cal65102 {
    type: string
    hidden: yes
    sql: ${TABLE}.ndh_cal65102 ;;
  }

  dimension: ndh_cal65103 {
    type: string
    hidden: yes
    sql: ${TABLE}.ndh_cal65103 ;;
  }

  dimension: ndh_cal65104 {
    type: string
    hidden: yes
    sql: ${TABLE}.ndh_cal65104 ;;
  }

  dimension: ndh_cal65105 {
    type: string
    hidden: yes
    sql: ${TABLE}.ndh_cal65105 ;;
  }


  dimension: sgv_dw_oos_4w_nw {
    type: string
    hidden: yes
    sql: ${TABLE}.sgv_dw_oos_4w_nw ;;
  }

  dimension: sh_e {
    type: string
    hidden: yes
    sql: ${TABLE}.sh_e ;;
  }

  dimension: sh_e_fst {
    type: string
    hidden: yes
    sql: ${TABLE}.sh_e_fst ;;
  }

  dimension: sh_e_pu {
    type: string
    hidden: yes
    sql: ${TABLE}.sh_e_pu ;;
  }

  dimension: sh_e_st {
    type: string
    hidden: yes
    sql: ${TABLE}.sh_e_st ;;
  }

  dimension: sh_stu {
    type: string
    hidden: yes
    sql: ${TABLE}.sh_stu ;;
  }

  dimension: sh_u {
    type: string
    hidden: yes
    sql: ${TABLE}.sh_u ;;
  }

  dimension: sh_u_purch {
    type: string
    hidden: yes
    sql: ${TABLE}.sh_u_purch ;;
  }

  dimension: sh_u_st {
    type: string
    hidden: yes
    sql: ${TABLE}.sh_u_st ;;
  }

  dimension: sh_v {
    type: string
    hidden: yes
    sql: ${TABLE}.sh_v ;;
  }

  dimension: shl_dw {
    type: string
    hidden: yes
    sql: ${TABLE}.shl_dw ;;
  }

  dimension: shl_dw65101 {
    type: string
    hidden: yes
    sql: ${TABLE}.shl_dw65101 ;;
  }

  dimension: shl_dw65102 {
    type: string
    hidden: yes
    sql: ${TABLE}.shl_dw65102 ;;
  }

  dimension: shl_dw65103 {
    type: string
    hidden: yes
    sql: ${TABLE}.shl_dw65103 ;;
  }

  dimension: shl_dw65104 {
    type: string
    hidden: yes
    sql: ${TABLE}.shl_dw65104 ;;
  }

  dimension: shl_dw65105 {
    type: string
    hidden: yes
    sql: ${TABLE}.shl_dw65105 ;;
  }

  dimension: stto {
    type: string
    hidden: yes
    sql: ${TABLE}.stto ;;
  }

  dimension: stu {
    type: string
    hidden: yes
    sql: ${TABLE}.stu ;;
  }

  dimension: u_purch {
    type: string
    hidden: yes
    sql: ${TABLE}.u_purch ;;
  }

  dimension: u_st_av_h {
    type: string
    hidden: yes
    sql: ${TABLE}.u_st_av_h ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
