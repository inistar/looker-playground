view: test {
  sql_table_name: `myspringml2.ok_sample_data.test`
    ;;

  dimension: capacity {
    type: number
    sql: ${TABLE}.capacity ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.LAT ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.LNG ;;
  }

  dimension: license_location {
    type: location
    sql_latitude: ${TABLE}.LAT ;;
    sql_longitude: ${TABLE}.LNG ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.population ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
