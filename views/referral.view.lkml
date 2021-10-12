view: referral {
  sql_table_name: `myspringml2.ok_salesforce_mockup.referral`
    ;;

  dimension: account_number {
    type: string
    sql: ${TABLE}.account_number ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: age_of_guardian {
    type: number
    sql: ${TABLE}.age_of_guardian ;;
  }

  dimension: alleged_perpertrator {
    type: string
    sql: ${TABLE}.alleged_perpertrator ;;
  }

  dimension: alleged_victim {
    type: string
    sql: ${TABLE}.alleged_victim ;;
  }

  dimension: anonymous {
    type: yesno
    sql: ${TABLE}.anonymous ;;
  }

  dimension_group: assigned {
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
    sql: ${TABLE}.assigned_date ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: confidential {
    type: yesno
    sql: ${TABLE}.confidential ;;
  }

  dimension: county_of_incident {
    type: string
    sql: ${TABLE}.county_of_incident ;;
  }

  dimension: county_of_resident {
    type: string
    sql: ${TABLE}.county_of_resident ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: date_incident {
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
    sql: ${TABLE}.date_incident ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
