view: num_licensed_programs_data_with_coor {
  sql_table_name: `myspringml2.ok_sample_data.num_licensed_programs_data_with_coor`
    ;;

  dimension: capacity {
    type: number
    sql: ${TABLE}.Capacity ;;
  }

  dimension: case_number {
    type: string
    sql: ${TABLE}.Case_Number ;;
  }

  dimension: contract_number {
    type: number
    sql: ${TABLE}.Contract_Number ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.Facility_Name ;;
  }

  dimension: head_start {
    type: yesno
    sql: ${TABLE}.Head_Start ;;
  }

  dimension: insurance_exception_notification {
    type: yesno
    sql: ${TABLE}.Insurance_Exception_Notification ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.LAT ;;
  }

  dimension: liability_insurance {
    type: yesno
    sql: ${TABLE}.Liability_Insurance ;;
  }

  dimension_group: license_effective {
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
    sql: ${TABLE}.License_Effective_Date ;;
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

  dimension: location__city {
    type: string
    sql: ${TABLE}.Location__City ;;
  }

  dimension: location_address {
    type: string
    sql: ${TABLE}.Location_Address ;;
  }

  dimension: location_county_number {
    type: number
    sql: ${TABLE}.Location_County_Number ;;
  }

  dimension: location_state {
    type: string
    sql: ${TABLE}.Location_State ;;
  }

  dimension: location_zip {
    type: number
    sql: ${TABLE}.Location_Zip ;;
  }

  dimension: mailing_address {
    type: string
    sql: ${TABLE}.Mailing_Address ;;
  }

  dimension: mailing_city {
    type: string
    sql: ${TABLE}.Mailing_City ;;
  }

  dimension: mailing_state {
    type: string
    sql: ${TABLE}.Mailing_State ;;
  }

  dimension: mailing_zip {
    type: number
    sql: ${TABLE}.Mailing_Zip ;;
  }

  dimension: monitoring_frequency_plan {
    type: number
    sql: ${TABLE}.Monitoring_Frequency_Plan ;;
  }

  dimension: no_children_in_care {
    type: string
    sql: ${TABLE}.No_Children_In_Care ;;
  }

  dimension: phone {
    type: number
    sql: ${TABLE}.Phone ;;
  }

  dimension_group: star_effective {
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
    sql: ${TABLE}.Star_Effective_Date ;;
  }

  dimension: star_level {
    type: string
    sql: ${TABLE}.Star_Level ;;
  }

  dimension: supervisor_name {
    type: string
    sql: ${TABLE}.Supervisor_Name ;;
  }

  dimension: tribal {
    type: yesno
    sql: ${TABLE}.Tribal ;;
  }

  dimension: worker_name {
    type: string
    sql: ${TABLE}.Worker_Name ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }

  measure: count {
    type: count
    drill_fields: [worker_name, supervisor_name, facility_name]
  }
}
