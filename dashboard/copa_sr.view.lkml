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
    type: number
    sql: ${TABLE}.copa_cajas_vend_eq ;;
  }

  dimension: copa_cajas_vend_est {
    type: number
    sql: ${TABLE}.copa_cajas_vend_est ;;
  }

  dimension: copa_condiciones_comerciales {
    type: number
    sql: ${TABLE}.copa_condiciones_comerciales ;;
  }

  dimension: copa_descuento_financiero {
    type: number
    sql: ${TABLE}.copa_descuento_financiero ;;
  }

  dimension: copa_devoluciones {
    type: number
    sql: ${TABLE}.copa_devoluciones ;;
  }

  dimension: copa_inversion_promocion {
    type: number
    sql: ${TABLE}.copa_inversion_promocion ;;
  }

  dimension: copa_promocion_regular {
    type: number
    sql: ${TABLE}.copa_promocion_regular ;;
  }

  dimension: copa_venta_precio_lista {
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

  measure: count {
    type: count
    drill_fields: []
  }
}
