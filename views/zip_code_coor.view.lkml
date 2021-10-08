view: zip_code_coor {
  sql_table_name: `myspringml2.ok_sample_data.zip_code_coor`
    ;;

  dimension: lat {
    type: number
    sql: ${TABLE}.LAT ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.LNG ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }

  dimension: zip_code {
    type: number
    sql: cast(${TABLE}.ZIP as int64);;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
