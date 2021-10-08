view: qris_applications_county_population_under_age_5 {
  sql_table_name: `myspringml2.ok_sample_data.qris_applications_county_population_under_age_5`
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

  dimension: contract_number {
    type: number
    sql: ${TABLE}.Contract_Number ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: county_1 {
    type: string
    sql: ${TABLE}.county_1 ;;
  }

  dimension: current_level {
    type: string
    sql: ${TABLE}.Current_Level ;;
  }

  dimension: data {
    type: number
    sql: ${TABLE}.data ;;
  }

  dimension_group: effective {
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
    sql: ${TABLE}.Effective_Date ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.Facility_Name ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.LAT ;;
  }

  dimension: license_number {
    type: string
    sql: ${TABLE}.License_Number ;;
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

  dimension: phone_number {
    type: number
    sql: ${TABLE}.Phone_Number ;;
  }

  dimension: previous_level {
    type: string
    sql: ${TABLE}.Previous_Level ;;
  }

  dimension: sos {
    type: string
    sql: ${TABLE}.SOS ;;
  }

  dimension: star {
    type: string
    sql: ${TABLE}.Star ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }

  measure: count {
    type: count
    drill_fields: [facility_name]
  }

}
