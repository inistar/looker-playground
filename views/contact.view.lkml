view: contact {
  sql_table_name: `myspringml2.ok_salesforce_mockup.Contact`
    ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: active_employee {
    type: yesno
    sql: ${TABLE}.active_employee ;;
  }

  dimension: address_unknown {
    type: yesno
    sql: ${TABLE}.address_unknown ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: age_and_name_dupe_tool {
    type: string
    sql: ${TABLE}.age_and_name_dupe_tool ;;
  }

  dimension: age_of_contact {
    type: number
    sql: ${TABLE}.age_of_contact ;;
  }

  dimension: aka_first_name {
    type: string
    sql: ${TABLE}.AKA_first_name ;;
  }

  dimension: aka_last_name {
    type: string
    sql: ${TABLE}.AKA_last_name ;;
  }

  dimension: allow_customer_portal_self_registration {
    type: yesno
    sql: ${TABLE}.allow_customer_portal_self_registration ;;
  }

  dimension: apparent_motivation_expected_action {
    type: string
    sql: ${TABLE}.Apparent_motivation_expected_action ;;
  }

  dimension: assistant {
    type: string
    sql: ${TABLE}.Assistant ;;
  }

  dimension: asst_phone {
    type: string
    sql: ${TABLE}.Asst_phone ;;
  }

  dimension_group: birthdate {
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
    sql: ${TABLE}.birthdate ;;
  }

  dimension: citizenship {
    type: string
    sql: ${TABLE}.citizenship ;;
  }

  dimension: collateral_type {
    type: string
    sql: ${TABLE}.collateral_type ;;
  }

  dimension: contact_owner {
    type: string
    sql: ${TABLE}.contact_owner ;;
  }

  dimension: contact_record_type {
    type: string
    sql: ${TABLE}.contact_record_type ;;
  }

  dimension: contact_type {
    type: string
    sql: ${TABLE}.Contact_Type ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: created_from_referral {
    type: string
    sql: ${TABLE}.created_from_referral ;;
  }

  measure: count {
    type: count
    drill_fields: [aka_last_name, aka_first_name, account_name]
  }
}
