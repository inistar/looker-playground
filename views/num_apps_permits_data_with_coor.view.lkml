view: num_apps_permits_data_with_coor {
  sql_table_name: `myspringml2.ok_sample_data.num_apps_permits_data_with_coor`
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: capacity {
    type: number
    sql: ${TABLE}.Capacity ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: contract {
    type: number
    sql: ${TABLE}.Contract ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension_group: expire {
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
    sql: ${TABLE}.Expire_Date ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.Facility_Name ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.LAT ;;
  }

  dimension: license {
    type: string
    sql: ${TABLE}.License ;;
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

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.Zip_Code ;;
  }

  measure: count {
    type: count
    drill_fields: [facility_name]
  }
}
