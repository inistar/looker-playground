view: service_plan {
  sql_table_name: `myspringml2.ok_salesforce_mockup.Service_plan`
    ;;
  drill_fields: [service_plan_id]

  dimension: service_plan_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Service_Plan_ID ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.Created_By ;;
  }

  dimension_group: date_time_approved {
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
    sql: ${TABLE}.Date_Time_Approved ;;
  }

  dimension_group: date_time_submitted {
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
    sql: ${TABLE}.Date_Time_Submitted ;;
  }

  dimension: duration_of_approval {
    type: number
    sql: ${TABLE}.Duration_of_Approval ;;
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
    sql: ${TABLE}.End_Date ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.External_ID ;;
  }

  dimension: housing {
    type: string
    sql: ${TABLE}.Housing ;;
  }

  dimension: last_modified_by {
    type: string
    sql: ${TABLE}.Last_Modified_By ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.Locked ;;
  }

  dimension: medicaid_application {
    type: yesno
    sql: ${TABLE}.Medicaid_Application ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}.recipient ;;
  }

  dimension: recipient_name {
    type: string
    sql: ${TABLE}.Recipient_Name ;;
  }

  dimension: referral {
    type: string
    sql: ${TABLE}.Referral ;;
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
    sql: ${TABLE}.Start_Date ;;
  }

  dimension: status {
    type: string
    sql: Initcap(${TABLE}.Status) ;;
    html:  {% if value == 'Approved' %}
      <p style="color: black; background-color: lightgreen; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'Denied' %}
      <p style="color: black; background-color: Salmon; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% else %}
      <p style="color: black; background-color: orange; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %}
 ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.Summary ;;
  }

  measure: count {
    type: count
    drill_fields: [service_plan_id, recipient_name,referral,status,start_date,end_date,date_time_approved_date,date_time_submitted_date,created_by]
  }
}
