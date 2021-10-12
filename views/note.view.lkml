view: note {
  sql_table_name: `myspringml2.ok_salesforce_mockup.note`
    ;;

  dimension: balance_amount {
    type: number
    sql: ${TABLE}.balance_amount ;;
  }

  dimension: court_order {
    type: number
    sql: ${TABLE}.court_order ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: date_resolved {
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
    sql: ${TABLE}.date_resolved ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension: interpreter_present {
    type: yesno
    sql: ${TABLE}.interpreter_present ;;
  }

  dimension_group: interview {
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
    sql: ${TABLE}.interview_date ;;
  }

  dimension: interview_name {
    type: string
    sql: ${TABLE}.interview_name ;;
  }

  dimension: last_modified_by {
    type: string
    sql: ${TABLE}.last_modified_by ;;
  }

  dimension_group: leaps_last_modification {
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
    sql: ${TABLE}.leaps_last_modification_date ;;
  }

  measure: count {
    type: count
    drill_fields: [interview_name]
  }
}
