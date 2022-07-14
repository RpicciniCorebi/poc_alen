# If necessary, uncomment the line below to include explore_source.
# include: "poc_grupo_alen.model.lkml"

view: nielsen_retail {
  derived_table: {
    explore_source: fact_data_p {
      column: item { field: prod_scan_retail.item }
      column: fabricante_unif_ { field: prod_scan_retail.fabricante_unif_ }
      column: marca_unif_ { field: prod_scan_retail.marca_unif_ }
      column: submarca_unif_ { field: prod_scan_retail.submarca_unif_ }
      column: uso___tipo { field: prod_scan_retail.uso___tipo }
      column: long { field: prod_scan_retail.long }
      column: short { field: prod_scan_retail.short }
      column: mkt_tag {}
      column: per_tag {}
      column: prod_tag {}
      column: vts_unidades {}
      column: vta_unidades_eq {}
      column: ventas_valor {}
      column: precio_kilo_litro {}
      column: precio_piezas {}
      filters: {
        field: prod_scan_retail.item
        value: "-NULL"
      }
    }
  }
  dimension: item {
    label: "Nielsen Prod Scantrack-Retail  Item"
    primary_key: yes
    description: ""
  }
  dimension: fabricante_unif_ {
    label: "Nielsen Prod Scantrack-Retail  Fabricante Unif "
    description: ""
  }
  dimension: marca_unif_ {
    label: "Nielsen Prod Scantrack-Retail  Marca Unif "
    description: ""
  }
  dimension: submarca_unif_ {
    label: "Nielsen Prod Scantrack-Retail  Submarca Unif "
    description: ""
  }
  dimension: uso___tipo {
    label: "Nielsen Prod Scantrack-Retail  Uso Tipo"
    description: ""
  }
  dimension: long {
    label: "Nielsen Prod Scantrack-Retail  Long"
    description: ""
  }
  dimension: short {
    label: "Nielsen Prod Scantrack-Retail  Short"
    description: ""
  }
  dimension: mkt_tag {
    label: "Fact Data Retail Mkt Tag"
    description: ""
  }
  dimension: per_tag {
    label: "Fact Data Retail Per Tag"
    description: ""
  }
  dimension: prod_tag {
    label: "Fact Data Retail Prod Tag"
    description: ""
  }
  dimension: vts_unidades {
    label: "Fact Data Retail Ventas en unidades (in 000)"
    description: ""
    type: number
  }
  dimension: vta_unidades_eq {
    label: "Fact Data Retail Ventas en unidades eq (in 000 KILOS/LITR)"
    description: ""
    type: number
  }
  dimension: ventas_valor {
    label: "Fact Data Retail Ventas en valor (in 000 PESOS)"
    description: ""
    type: number
  }
  dimension: precio_kilo_litro {
    label: "Fact Data Retail Precio kilo/litro"
    description: ""
    type: number
  }
  dimension: precio_piezas {
    label: "Fact Data Retail Precio Piezas "
    description: ""
    type: number
  }
}
