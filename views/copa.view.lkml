view: copa {
  sql_table_name: `pocgrupoalen.copa`
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

  measure: cajas_vend_est {
    label: "Cajas Vend Est (Miles)"
    type: sum
    sql: ${vv033} ;;
  }

  measure: cajas_vend_eq {
    label: "Cajas Vend Eq (Miles)"
    type: sum
    sql: ${vv002}/15 ;;
  }

  measure: promocion_regular {
    label: "Promoción Regular"
    type: sum
    sql: ${vv001} + ${vv025} + ${vv044};;
  }

  measure: descuento_financiero {
    label: "Descuentos Financieros"
    type: sum
    sql: ${vv003} ;;
  }

  measure: inversion_promocion {
    label: "Inversión a Promoción"
    type: sum
    sql: ${vv005} ;;
  }

  measure: condiciones_comerciales {
    label: "Condiciones Comerciales"
    type: sum
    sql: ${vv004} + ${vv042} ;;
  }



  dimension: absmg {
    type: number
    sql: ${TABLE}.ABSMG ;;
  }

  dimension: absmg_me {
    type: string
    sql: ${TABLE}.ABSMG_ME ;;
  }

  dimension: altperio {
    type: string
    sql: ${TABLE}.ALTPERIO ;;
  }

  dimension: artnr {
    type: string
    sql: ${TABLE}.ARTNR ;;
  }

  dimension: augru {
    type: string
    sql: ${TABLE}.AUGRU ;;
  }

  dimension: belnr {
    type: string
    sql: ${TABLE}.BELNR ;;
  }

  dimension: budat {
    type: string
    sql: ${TABLE}.BUDAT ;;
  }

  dimension: bukrs {
    type: string
    sql: ${TABLE}.BUKRS ;;
  }

  dimension: bzirk {
    type: string
    sql: ${TABLE}.BZIRK ;;
  }

  dimension: copa_aworg {
    type: string
    sql: ${TABLE}.COPA_AWORG ;;
  }

  dimension: copa_awsys {
    type: string
    sql: ${TABLE}.COPA_AWSYS ;;
  }

  dimension: copa_awtyp {
    type: string
    sql: ${TABLE}.COPA_AWTYP ;;
  }

  dimension: copa_bwzpt {
    type: string
    sql: ${TABLE}.COPA_BWZPT ;;
  }

  dimension: crmcsty {
    type: string
    sql: ${TABLE}.CRMCSTY ;;
  }

  dimension: erlos {
    type: number
    sql: ${TABLE}.ERLOS ;;
  }

  dimension: fadat {
    type: string
    sql: ${TABLE}.FADAT ;;
  }

  dimension: fkart {
    type: string
    sql: ${TABLE}.FKART ;;
  }

  dimension: frwae {
    type: string
    sql: ${TABLE}.FRWAE ;;
  }

  dimension: gjahr {
    type: string
    sql: ${TABLE}.GJAHR ;;
  }

  dimension: gsber {
    type: string
    sql: ${TABLE}.GSBER ;;
  }

  dimension: hrkft {
    type: string
    sql: ${TABLE}.HRKFT ;;
  }

  dimension: hzdat {
    type: string
    sql: ${TABLE}.HZDAT ;;
  }

  dimension: kaufn {
    type: string
    sql: ${TABLE}.KAUFN ;;
  }

  dimension: kdpos {
    type: string
    sql: ${TABLE}.KDPOS ;;
  }

  dimension: kmbrnd {
    type: string
    sql: ${TABLE}.KMBRND ;;
  }

  dimension: kmhi01 {
    type: string
    sql: ${TABLE}.KMHI01 ;;
  }

  dimension: kmhi02 {
    type: string
    sql: ${TABLE}.KMHI02 ;;
  }

  dimension: kmhi03 {
    type: string
    sql: ${TABLE}.KMHI03 ;;
  }

  dimension: kmmakl {
    type: string
    sql: ${TABLE}.KMMAKL ;;
  }

  dimension: kmvkbu {
    type: string
    sql: ${TABLE}.KMVKBU ;;
  }

  dimension: kndnr {
    type: string
    sql: ${TABLE}.KNDNR ;;
  }

  dimension: kokrs {
    type: string
    sql: ${TABLE}.KOKRS ;;
  }

  dimension: kstar {
    type: string
    sql: ${TABLE}.KSTAR ;;
  }

  dimension: kstrg {
    type: string
    sql: ${TABLE}.KSTRG ;;
  }

  dimension: ktokd {
    type: string
    sql: ${TABLE}.KTOKD ;;
  }

  dimension: kunwe {
    type: string
    sql: ${TABLE}.KUNWE ;;
  }

  dimension: kursbk {
    type: number
    sql: ${TABLE}.KURSBK ;;
  }

  dimension: kursf {
    type: number
    sql: ${TABLE}.KURSF ;;
  }

  dimension: kurskz {
    type: number
    sql: ${TABLE}.KURSKZ ;;
  }

  dimension: kwsohd {
    type: number
    sql: ${TABLE}.KWSOHD ;;
  }

  dimension: kwsvme {
    type: number
    sql: ${TABLE}.KWSVME ;;
  }

  dimension: kwsvme_me {
    type: string
    sql: ${TABLE}.KWSVME_ME ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.MANDT ;;
  }

  dimension: matnr {
    type: string
    sql: ${TABLE}.MATNR ;;
  }

  dimension: mtart {
    type: string
    sql: ${TABLE}.MTART ;;
  }

  dimension: paledger {
    type: string
    sql: ${TABLE}.PALEDGER ;;
  }

  dimension: paobjnr {
    type: string
    sql: ${TABLE}.PAOBJNR ;;
  }

  dimension: papaobjnr {
    type: string
    sql: ${TABLE}.PAPAOBJNR ;;
  }

  dimension: papasubnr {
    type: string
    sql: ${TABLE}.PAPASUBNR ;;
  }

  dimension: paph1 {
    type: string
    sql: ${TABLE}.PAPH1 ;;
  }

  dimension: paph2 {
    type: string
    sql: ${TABLE}.PAPH2 ;;
  }

  dimension: paph3 {
    type: string
    sql: ${TABLE}.PAPH3 ;;
  }

  dimension: paph4 {
    type: string
    sql: ${TABLE}.PAPH4 ;;
  }

  dimension: paph5 {
    type: string
    sql: ${TABLE}.PAPH5 ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.PARTNER ;;
  }

  dimension: pasubnr {
    type: string
    sql: ${TABLE}.PASUBNR ;;
  }

  dimension: perde {
    type: string
    sql: ${TABLE}.PERDE ;;
  }

  dimension: perio {
    type: string
    sql: ${TABLE}.PERIO ;;
  }

  dimension: plikz {
    type: string
    sql: ${TABLE}.PLIKZ ;;
  }

  dimension: posnr {
    type: string
    sql: ${TABLE}.POSNR ;;
  }

  dimension: pprctr {
    type: string
    sql: ${TABLE}.PPRCTR ;;
  }

  dimension: prctr {
    type: string
    sql: ${TABLE}.PRCTR ;;
  }

  dimension: prodh {
    type: string
    sql: ${TABLE}.PRODH ;;
  }

  dimension: prznr {
    type: string
    sql: ${TABLE}.PRZNR ;;
  }

  dimension: pspnr {
    type: string
    sql: ${TABLE}.PSPNR ;;
  }

  dimension: rbeln {
    type: string
    sql: ${TABLE}.RBELN ;;
  }

  dimension: rec_waers {
    type: string
    sql: ${TABLE}.REC_WAERS ;;
  }

  dimension: rkaufnr {
    type: string
    sql: ${TABLE}.RKAUFNR ;;
  }

  dimension: rkestatu {
    type: string
    sql: ${TABLE}.RKESTATU ;;
  }

  dimension: rposn {
    type: string
    sql: ${TABLE}.RPOSN ;;
  }

  dimension: skost {
    type: string
    sql: ${TABLE}.SKOST ;;
  }

  dimension: spart {
    type: string
    sql: ${TABLE}.SPART ;;
  }

  dimension: stdpr {
    type: number
    sql: ${TABLE}.STDPR ;;
  }

  dimension: sto_belnr {
    type: string
    sql: ${TABLE}.STO_BELNR ;;
  }

  dimension: sto_posnr {
    type: string
    sql: ${TABLE}.STO_POSNR ;;
  }

  dimension: timestmp {
    type: number
    sql: ${TABLE}.TIMESTMP ;;
  }

  dimension: usnam {
    type: string
    sql: ${TABLE}.USNAM ;;
  }

  dimension: versi {
    type: string
    sql: ${TABLE}.VERSI ;;
  }

  dimension: vkorg {
    type: string
    sql: ${TABLE}.VKORG ;;
  }

  dimension: vrgar {
    type: string
    sql: ${TABLE}.VRGAR ;;
  }

  dimension: vtweg {
    type: string
    sql: ${TABLE}.VTWEG ;;
  }

  dimension: vv001 {
    type: number
    sql: ${TABLE}.VV001 ;;
  }

  dimension: vv002 {
    type: number
    sql: ${TABLE}.VV002 ;;
  }

  dimension: vv002_me {
    type: string
    sql: ${TABLE}.VV002_ME ;;
  }

  dimension: vv003 {
    type: number
    sql: ${TABLE}.VV003 ;;
  }

  dimension: vv004 {
    type: number
    sql: ${TABLE}.VV004 ;;
  }

  dimension: vv005 {
    type: number
    sql: ${TABLE}.VV005 ;;
  }

  dimension: vv006 {
    type: number
    sql: ${TABLE}.VV006 ;;
  }

  dimension: vv007 {
    type: number
    sql: ${TABLE}.VV007 ;;
  }

  dimension: vv008 {
    type: number
    sql: ${TABLE}.VV008 ;;
  }

  dimension: vv009 {
    type: number
    sql: ${TABLE}.VV009 ;;
  }

  dimension: vv010 {
    type: number
    sql: ${TABLE}.VV010 ;;
  }

  dimension: vv011 {
    type: number
    sql: ${TABLE}.VV011 ;;
  }

  dimension: vv012 {
    type: number
    sql: ${TABLE}.VV012 ;;
  }

  dimension: vv013 {
    type: number
    sql: ${TABLE}.VV013 ;;
  }

  dimension: vv014 {
    type: number
    sql: ${TABLE}.VV014 ;;
  }

  dimension: vv015 {
    type: number
    sql: ${TABLE}.VV015 ;;
  }

  dimension: vv016 {
    type: number
    sql: ${TABLE}.VV016 ;;
  }

  dimension: vv017 {
    type: number
    sql: ${TABLE}.VV017 ;;
  }

  dimension: vv018 {
    type: number
    sql: ${TABLE}.VV018 ;;
  }

  dimension: vv019 {
    type: number
    sql: ${TABLE}.VV019 ;;
  }

  dimension: vv020 {
    type: number
    sql: ${TABLE}.VV020 ;;
  }

  dimension: vv021 {
    type: number
    sql: ${TABLE}.VV021 ;;
  }

  dimension: vv022 {
    type: number
    sql: ${TABLE}.VV022 ;;
  }

  dimension: vv023 {
    type: number
    sql: ${TABLE}.VV023 ;;
  }

  dimension: vv024 {
    type: number
    sql: ${TABLE}.VV024 ;;
  }

  dimension: vv025 {
    type: number
    sql: ${TABLE}.VV025 ;;
  }

  dimension: vv026 {
    type: number
    sql: ${TABLE}.VV026 ;;
  }

  dimension: vv027 {
    type: number
    sql: ${TABLE}.VV027 ;;
  }

  dimension: vv028 {
    type: number
    sql: ${TABLE}.VV028 ;;
  }

  dimension: vv029 {
    type: number
    sql: ${TABLE}.VV029 ;;
  }

  dimension: vv029_me {
    type: string
    sql: ${TABLE}.VV029_ME ;;
  }

  dimension: vv030 {
    type: number
    sql: ${TABLE}.VV030 ;;
  }

  dimension: vv031 {
    type: number
    sql: ${TABLE}.VV031 ;;
  }

  dimension: vv031_me {
    type: string
    sql: ${TABLE}.VV031_ME ;;
  }

  dimension: vv032 {
    type: number
    sql: ${TABLE}.VV032 ;;
  }

  dimension: vv032_me {
    type: string
    sql: ${TABLE}.VV032_ME ;;
  }

  dimension: vv033 {
    type: number
    sql: ${TABLE}.VV033 ;;
  }

  dimension: vv033_me {
    type: string
    sql: ${TABLE}.VV033_ME ;;
  }

  dimension: vv034 {
    type: number
    sql: ${TABLE}.VV034 ;;
  }

  dimension: vv034_me {
    type: string
    sql: ${TABLE}.VV034_ME ;;
  }

  dimension: vv035 {
    type: number
    sql: ${TABLE}.VV035 ;;
  }

  dimension: vv036 {
    type: number
    sql: ${TABLE}.VV036 ;;
  }

  dimension: vv037 {
    type: number
    sql: ${TABLE}.VV037 ;;
  }

  dimension: vv038 {
    type: number
    sql: ${TABLE}.VV038 ;;
  }

  dimension: vv039 {
    type: number
    sql: ${TABLE}.VV039 ;;
  }

  dimension: vv040 {
    type: number
    sql: ${TABLE}.VV040 ;;
  }

  dimension: vv041 {
    type: number
    sql: ${TABLE}.VV041 ;;
  }

  dimension: vv042 {
    type: number
    sql: ${TABLE}.VV042 ;;
  }

  dimension: vv043 {
    type: number
    sql: ${TABLE}.VV043 ;;
  }

  dimension: vv044 {
    type: number
    sql: ${TABLE}.VV044 ;;
  }

  dimension: vv045 {
    type: number
    sql: ${TABLE}.VV045 ;;
  }

  dimension: vv046 {
    type: number
    sql: ${TABLE}.VV046 ;;
  }

  dimension: vv047 {
    type: number
    sql: ${TABLE}.VV047 ;;
  }

  dimension: vv048 {
    type: number
    sql: ${TABLE}.VV048 ;;
  }

  dimension: vv049 {
    type: number
    sql: ${TABLE}.VV049 ;;
  }

  dimension: vv050 {
    type: number
    sql: ${TABLE}.VV050 ;;
  }

  dimension: vv051 {
    type: number
    sql: ${TABLE}.VV051 ;;
  }

  dimension: vv052 {
    type: number
    sql: ${TABLE}.VV052 ;;
  }

  dimension: vv053 {
    type: number
    sql: ${TABLE}.VV053 ;;
  }

  dimension: vv054 {
    type: number
    sql: ${TABLE}.VV054 ;;
  }

  dimension: vv055 {
    type: number
    sql: ${TABLE}.VV055 ;;
  }

  dimension: vv056 {
    type: number
    sql: ${TABLE}.VV056 ;;
  }

  dimension: vv057 {
    type: number
    sql: ${TABLE}.VV057 ;;
  }

  dimension: vv058 {
    type: number
    sql: ${TABLE}.VV058 ;;
  }

  dimension: vv059 {
    type: number
    sql: ${TABLE}.VV059 ;;
  }

  dimension: vv060 {
    type: number
    sql: ${TABLE}.VV060 ;;
  }

  dimension: vv061 {
    type: number
    sql: ${TABLE}.VV061 ;;
  }

  dimension: vv062 {
    type: number
    sql: ${TABLE}.VV062 ;;
  }

  dimension: vv063 {
    type: number
    sql: ${TABLE}.VV063 ;;
  }

  dimension: vv064 {
    type: number
    sql: ${TABLE}.VV064 ;;
  }

  dimension: vv065 {
    type: number
    sql: ${TABLE}.VV065 ;;
  }

  dimension: vv066 {
    type: number
    sql: ${TABLE}.VV066 ;;
  }

  dimension: vv067 {
    type: number
    sql: ${TABLE}.VV067 ;;
  }

  dimension: vv068 {
    type: number
    sql: ${TABLE}.VV068 ;;
  }

  dimension: vv069 {
    type: number
    sql: ${TABLE}.VV069 ;;
  }

  dimension: vv070 {
    type: number
    sql: ${TABLE}.VV070 ;;
  }

  dimension: vv071 {
    type: number
    sql: ${TABLE}.VV071 ;;
  }

  dimension: vv072 {
    type: number
    sql: ${TABLE}.VV072 ;;
  }

  dimension: vv073 {
    type: number
    sql: ${TABLE}.VV073 ;;
  }

  dimension: vv074 {
    type: number
    sql: ${TABLE}.VV074 ;;
  }

  dimension: vv075 {
    type: number
    sql: ${TABLE}.VV075 ;;
  }

  dimension: vv076 {
    type: number
    sql: ${TABLE}.VV076 ;;
  }

  dimension: vv077 {
    type: number
    sql: ${TABLE}.VV077 ;;
  }

  dimension: vv078 {
    type: number
    sql: ${TABLE}.VV078 ;;
  }

  dimension: vv079 {
    type: number
    sql: ${TABLE}.VV079 ;;
  }

  dimension: vv080 {
    type: number
    sql: ${TABLE}.VV080 ;;
  }

  dimension: vv081 {
    type: number
    sql: ${TABLE}.VV081 ;;
  }

  dimension: vv082 {
    type: number
    sql: ${TABLE}.VV082 ;;
  }

  dimension: vv083 {
    type: number
    sql: ${TABLE}.VV083 ;;
  }

  dimension: vv084 {
    type: number
    sql: ${TABLE}.VV084 ;;
  }

  dimension: vv085 {
    type: number
    sql: ${TABLE}.VV085 ;;
  }

  dimension: vv086 {
    type: number
    sql: ${TABLE}.VV086 ;;
  }

  dimension: vv087 {
    type: number
    sql: ${TABLE}.VV087 ;;
  }

  dimension: vv088 {
    type: number
    sql: ${TABLE}.VV088 ;;
  }

  dimension: vv089 {
    type: number
    sql: ${TABLE}.VV089 ;;
  }

  dimension: vv090 {
    type: number
    sql: ${TABLE}.VV090 ;;
  }

  dimension: vv091 {
    type: number
    sql: ${TABLE}.VV091 ;;
  }

  dimension: vv092 {
    type: number
    sql: ${TABLE}.VV092 ;;
  }

  dimension: vv100 {
    type: number
    sql: ${TABLE}.VV100 ;;
  }

  dimension: vv101 {
    type: number
    sql: ${TABLE}.VV101 ;;
  }

  dimension: vv102 {
    type: number
    sql: ${TABLE}.VV102 ;;
  }

  dimension: vv103 {
    type: number
    sql: ${TABLE}.VV103 ;;
  }

  dimension: vv104 {
    type: number
    sql: ${TABLE}.VV104 ;;
  }

  dimension: vv105 {
    type: number
    sql: ${TABLE}.VV105 ;;
  }

  dimension: vv106 {
    type: number
    sql: ${TABLE}.VV106 ;;
  }

  dimension: vv107 {
    type: number
    sql: ${TABLE}.VV107 ;;
  }

  dimension: vv300 {
    type: number
    sql: ${TABLE}.VV300 ;;
  }

  dimension: vv301 {
    type: number
    sql: ${TABLE}.VV301 ;;
  }

  dimension: vv302 {
    type: number
    sql: ${TABLE}.VV302 ;;
  }

  dimension: vv303 {
    type: number
    sql: ${TABLE}.VV303 ;;
  }

  dimension: vv304 {
    type: number
    sql: ${TABLE}.VV304 ;;
  }

  dimension: vv305 {
    type: number
    sql: ${TABLE}.VV305 ;;
  }

  dimension: vv306 {
    type: number
    sql: ${TABLE}.VV306 ;;
  }

  dimension: vv307 {
    type: number
    sql: ${TABLE}.VV307 ;;
  }

  dimension: vv309 {
    type: number
    sql: ${TABLE}.VV309 ;;
  }

  dimension: vv310 {
    type: number
    sql: ${TABLE}.VV310 ;;
  }

  dimension: vv311 {
    type: number
    sql: ${TABLE}.VV311 ;;
  }

  dimension: vv312 {
    type: number
    sql: ${TABLE}.VV312 ;;
  }

  dimension: vv313 {
    type: number
    sql: ${TABLE}.VV313 ;;
  }

  dimension: vv314 {
    type: number
    sql: ${TABLE}.VV314 ;;
  }

  dimension: vv315 {
    type: number
    sql: ${TABLE}.VV315 ;;
  }

  dimension: vv316 {
    type: number
    sql: ${TABLE}.VV316 ;;
  }

  dimension: vv317 {
    type: number
    sql: ${TABLE}.VV317 ;;
  }

  dimension: vv318 {
    type: number
    sql: ${TABLE}.VV318 ;;
  }

  dimension: vv319 {
    type: number
    sql: ${TABLE}.VV319 ;;
  }

  dimension: vv320 {
    type: number
    sql: ${TABLE}.VV320 ;;
  }

  dimension: vv321 {
    type: number
    sql: ${TABLE}.VV321 ;;
  }

  dimension: vv322 {
    type: number
    sql: ${TABLE}.VV322 ;;
  }

  dimension: vv323 {
    type: number
    sql: ${TABLE}.VV323 ;;
  }

  dimension: vv324 {
    type: number
    sql: ${TABLE}.VV324 ;;
  }

  dimension: vv325 {
    type: number
    sql: ${TABLE}.VV325 ;;
  }

  dimension: vv326 {
    type: number
    sql: ${TABLE}.VV326 ;;
  }

  dimension: vv327 {
    type: number
    sql: ${TABLE}.VV327 ;;
  }

  dimension: vv328 {
    type: number
    sql: ${TABLE}.VV328 ;;
  }

  dimension: vv329 {
    type: number
    sql: ${TABLE}.VV329 ;;
  }

  dimension: vv330 {
    type: number
    sql: ${TABLE}.VV330 ;;
  }

  dimension: vv331 {
    type: number
    sql: ${TABLE}.VV331 ;;
  }

  dimension: vv332 {
    type: number
    sql: ${TABLE}.VV332 ;;
  }

  dimension: vv333 {
    type: number
    sql: ${TABLE}.VV333 ;;
  }

  dimension: vv334 {
    type: number
    sql: ${TABLE}.VV334 ;;
  }

  dimension: vv335 {
    type: number
    sql: ${TABLE}.VV335 ;;
  }

  dimension: vv336 {
    type: number
    sql: ${TABLE}.VV336 ;;
  }

  dimension: vv337 {
    type: number
    sql: ${TABLE}.VV337 ;;
  }

  dimension: vv338 {
    type: number
    sql: ${TABLE}.VV338 ;;
  }

  dimension: vv339 {
    type: number
    sql: ${TABLE}.VV339 ;;
  }

  dimension: vv340 {
    type: number
    sql: ${TABLE}.VV340 ;;
  }

  dimension: vv341 {
    type: number
    sql: ${TABLE}.VV341 ;;
  }

  dimension: vv342 {
    type: number
    sql: ${TABLE}.VV342 ;;
  }

  dimension: vv343 {
    type: number
    sql: ${TABLE}.VV343 ;;
  }

  dimension: vv344 {
    type: number
    sql: ${TABLE}.VV344 ;;
  }

  dimension: vv345 {
    type: number
    sql: ${TABLE}.VV345 ;;
  }

  dimension: vv346 {
    type: number
    sql: ${TABLE}.VV346 ;;
  }

  dimension: vv347 {
    type: number
    sql: ${TABLE}.VV347 ;;
  }

  dimension: vv348 {
    type: number
    sql: ${TABLE}.VV348 ;;
  }

  dimension: vv349 {
    type: number
    sql: ${TABLE}.VV349 ;;
  }

  dimension: vv350 {
    type: number
    sql: ${TABLE}.VV350 ;;
  }

  dimension: vv351 {
    type: number
    sql: ${TABLE}.VV351 ;;
  }

  dimension: vv352 {
    type: number
    sql: ${TABLE}.VV352 ;;
  }

  dimension: vv353 {
    type: number
    sql: ${TABLE}.VV353 ;;
  }

  dimension: vv354 {
    type: number
    sql: ${TABLE}.VV354 ;;
  }

  dimension: vv355 {
    type: number
    sql: ${TABLE}.VV355 ;;
  }

  dimension: vv356 {
    type: number
    sql: ${TABLE}.VV356 ;;
  }

  dimension: vv357 {
    type: number
    sql: ${TABLE}.VV357 ;;
  }

  dimension: vv358 {
    type: number
    sql: ${TABLE}.VV358 ;;
  }

  dimension: vv359 {
    type: number
    sql: ${TABLE}.VV359 ;;
  }

  dimension: vv360 {
    type: number
    sql: ${TABLE}.VV360 ;;
  }

  dimension: vv361 {
    type: number
    sql: ${TABLE}.VV361 ;;
  }

  dimension: vv362 {
    type: number
    sql: ${TABLE}.VV362 ;;
  }

  dimension: vv363 {
    type: number
    sql: ${TABLE}.VV363 ;;
  }

  dimension: vv364 {
    type: number
    sql: ${TABLE}.VV364 ;;
  }

  dimension: vv365 {
    type: number
    sql: ${TABLE}.VV365 ;;
  }

  dimension: vv366 {
    type: number
    sql: ${TABLE}.VV366 ;;
  }

  dimension: vv367 {
    type: number
    sql: ${TABLE}.VV367 ;;
  }

  dimension: vv368 {
    type: number
    sql: ${TABLE}.VV368 ;;
  }

  dimension: vv369 {
    type: number
    sql: ${TABLE}.VV369 ;;
  }

  dimension: vv370 {
    type: number
    sql: ${TABLE}.VV370 ;;
  }

  dimension: vv371 {
    type: number
    sql: ${TABLE}.VV371 ;;
  }

  dimension: vv372 {
    type: number
    sql: ${TABLE}.VV372 ;;
  }

  dimension: vv373 {
    type: number
    sql: ${TABLE}.VV373 ;;
  }

  dimension: vv374 {
    type: number
    sql: ${TABLE}.VV374 ;;
  }

  dimension: vv375 {
    type: number
    sql: ${TABLE}.VV375 ;;
  }

  dimension: vv376 {
    type: number
    sql: ${TABLE}.VV376 ;;
  }

  dimension: vv377 {
    type: number
    sql: ${TABLE}.VV377 ;;
  }

  dimension: vv378 {
    type: number
    sql: ${TABLE}.VV378 ;;
  }

  dimension: vv379 {
    type: number
    sql: ${TABLE}.VV379 ;;
  }

  dimension: vv380 {
    type: number
    sql: ${TABLE}.VV380 ;;
  }

  dimension: vv381 {
    type: number
    sql: ${TABLE}.VV381 ;;
  }

  dimension: vv382 {
    type: number
    sql: ${TABLE}.VV382 ;;
  }

  dimension: vv383 {
    type: number
    sql: ${TABLE}.VV383 ;;
  }

  dimension: vv384 {
    type: number
    sql: ${TABLE}.VV384 ;;
  }

  dimension: vv385 {
    type: number
    sql: ${TABLE}.VV385 ;;
  }

  dimension: vv386 {
    type: number
    sql: ${TABLE}.VV386 ;;
  }

  dimension: vv387 {
    type: number
    sql: ${TABLE}.VV387 ;;
  }

  dimension: vv388 {
    type: number
    sql: ${TABLE}.VV388 ;;
  }

  dimension: vv389 {
    type: number
    sql: ${TABLE}.VV389 ;;
  }

  dimension: vv390 {
    type: number
    sql: ${TABLE}.VV390 ;;
  }

  dimension: vv391 {
    type: number
    sql: ${TABLE}.VV391 ;;
  }

  dimension: vv392 {
    type: number
    sql: ${TABLE}.VV392 ;;
  }

  dimension: vv393 {
    type: number
    sql: ${TABLE}.VV393 ;;
  }

  dimension: vv394 {
    type: number
    sql: ${TABLE}.VV394 ;;
  }

  dimension: wadat {
    type: string
    sql: ${TABLE}.WADAT ;;
  }

  dimension: werks {
    type: string
    sql: ${TABLE}.WERKS ;;
  }

  dimension: wwcat {
    type: string
    sql: ${TABLE}.WWCAT ;;
  }

  dimension: wwdir {
    type: string
    sql: ${TABLE}.WWDIR ;;
  }

  dimension: wwidp {
    type: string
    sql: ${TABLE}.WWIDP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
