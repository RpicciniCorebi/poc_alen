view: fact_data {
  sql_table_name: `pocgrupoalen.fact_data`
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

  dimension: ave {
    type: string
    sql: ${TABLE}.ave ;;
  }

  dimension: avu {
    type: string
    sql: ${TABLE}.avu ;;
  }

  dimension: dn {
    type: string
    sql: ${TABLE}.dn ;;
  }

  dimension: dn1 {
    type: string
    sql: ${TABLE}.dn1 ;;
  }

  dimension: dn4105 {
    type: string
    sql: ${TABLE}.dn4105 ;;
  }

  dimension: dn4110 {
    type: string
    sql: ${TABLE}.dn4110 ;;
  }

  dimension: dn70000 {
    type: string
    sql: ${TABLE}.dn70000 ;;
  }

  dimension: dw {
    type: string
    sql: ${TABLE}.dw ;;
  }

  dimension: dw1 {
    type: string
    sql: ${TABLE}.dw1 ;;
  }

  dimension: dw4105 {
    type: string
    sql: ${TABLE}.dw4105 ;;
  }

  dimension: dw4110 {
    type: string
    sql: ${TABLE}.dw4110 ;;
  }

  dimension: dw70000 {
    type: string
    sql: ${TABLE}.dw70000 ;;
  }

  dimension: e {
    type: string
    sql: ${TABLE}.e ;;
  }

  dimension: e1 {
    type: string
    sql: ${TABLE}.e1 ;;
  }

  dimension: mkt_tag {
    type: string
    sql: ${TABLE}.mkt_tag ;;
  }

  dimension: p {
    type: string
    sql: ${TABLE}.p ;;
  }

  dimension: p1 {
    type: string
    sql: ${TABLE}.p1 ;;
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

  dimension: pu1 {
    type: string
    sql: ${TABLE}.pu1 ;;
  }

  dimension: rose {
    type: string
    sql: ${TABLE}.rose ;;
  }

  dimension: rosu {
    type: string
    sql: ${TABLE}.rosu ;;
  }

  dimension: u {
    type: string
    sql: ${TABLE}.u ;;
  }

  dimension: u1 {
    type: string
    sql: ${TABLE}.u1 ;;
  }

  dimension: v {
    type: string
    sql: ${TABLE}.v ;;
  }

  dimension: v1 {
    type: string
    sql: ${TABLE}.v1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
