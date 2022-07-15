view: copa_sr {
  sql_table_name: `pocgrupoalen.copa_sr`
    ;;

  dimension: anio {
    type: string
    sql: ${TABLE}.Anio ;;
  }

  dimension: anio_mes {
    type: string
    sql: ${TABLE}.anio_mes ;;
  }

  dimension: copa_cajas_vend_eq {
    hidden: yes
    type: number
    sql: ${TABLE}.copa_cajas_vend_eq ;;
  }

  dimension: copa_cajas_vend_est {
    hidden: yes
    type: number
    sql: ${TABLE}.copa_cajas_vend_est ;;
  }

  dimension: copa_condiciones_comerciales {
    hidden: yes
    type: number
    sql: ${TABLE}.copa_condiciones_comerciales ;;
  }

  dimension: copa_descuento_financiero {
    hidden: yes
    type: number
    sql: ${TABLE}.copa_descuento_financiero ;;
  }

  dimension: copa_devoluciones {
    hidden: yes
    type: number
    sql: ${TABLE}.copa_devoluciones ;;
  }

  dimension: copa_inversion_promocion {
    hidden: yes
    type: number
    sql: ${TABLE}.copa_inversion_promocion ;;
  }

  dimension: copa_promocion_regular {
    hidden: yes
    type: number
    sql: ${TABLE}.copa_promocion_regular ;;
  }

  dimension: copa_venta_precio_lista {
    hidden: yes
    type: number
    sql: ${TABLE}.copa_venta_precio_lista ;;
  }

  dimension: matnr {
    type: string
    sql: ${TABLE}.MATNR ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}.Mes ;;
  }

  measure:cajas_vend_est {
    label: "Cajas Vend Est (Miles)"
    type: sum
    sql:  ${copa_cajas_vend_est} ;;
  }

  measure:cajas_vend_eq {
    label: "Cajas Vend Eq (Miles)"
    type: sum
    sql:  ${copa_cajas_vend_eq} ;;
  }

  measure:venta_precio_lista {
    label: "Venta Precio de Lista"
    type: sum
    sql:  ${copa_venta_precio_lista} ;;
  }

  measure:promocion_regular {
    label: "Promoción Regular"
    type: sum
    sql:  ${copa_promocion_regular} ;;
  }

  measure:descuento_financiero {
    label: "Decuentos Financieros"
    type: sum
    sql:  ${copa_descuento_financiero} ;;
  }

  measure:inversion_promocion {
    label: "Inversión Promoción"
    type: sum
    sql:  ${copa_inversion_promocion} ;;
  }

  measure:condiciones_comerciales {
    label: "Condiciones Comerciales"
    type: sum
    sql:  ${copa_condiciones_comerciales} ;;
  }

  measure:venta_bruta {
    label: "Ventas Brutas"
    type: sum
    sql:  ${copa_venta_precio_lista} - (${copa_promocion_regular}+${copa_descuento_financiero}+${copa_inversion_promocion}+${copa_condiciones_comerciales}) ;;
  }

  measure:devoluciones {
    label: "Devoluciones"
    type: sum
    sql:  ${copa_devoluciones} ;;
  }

  measure:venta_neta {
    label: "Ventas Neta"
    type: sum
    sql:  (${copa_venta_precio_lista} - (${copa_promocion_regular}+${copa_descuento_financiero}+${copa_inversion_promocion}+${copa_condiciones_comerciales})) - ${copa_devoluciones} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
