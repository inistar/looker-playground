view: service_plan_item {
  sql_table_name: `myspringml2.ok_salesforce_mockup.service_plan_item`
    ;;
  drill_fields: [service_plan_item_id]

  dimension: service_plan_item_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.service_plan_item_id ;;
  }

  dimension: client_accenptance {
    type: yesno
    sql: ${TABLE}.client_accenptance ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: emergency_funds {
    type: yesno
    sql: ${TABLE}.emergency_funds ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension: last_modified_by {
    type: string
    sql: ${TABLE}.last_modified_by ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: provider_type {
    type: string
    sql: ${TABLE}.provider_type ;;
  }

  dimension: service_plan {
    type: number
    sql: ${TABLE}.service_plan ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [service_plan_item_id, name]
  }
}
