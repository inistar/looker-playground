view: alleged_victim {
  sql_table_name: `myspringml2.ok_salesforce_mockup.Alleged_Victim`
    ;;
  drill_fields: [alleged_victim_id]

  dimension: alleged_victim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Alleged_Victim_ID ;;
  }

  dimension: adult_safety_concern {
    type: yesno
    sql: ${TABLE}.Adult_Safety_concern ;;
  }

  dimension: adult_safety_notes {
    type: string
    sql: ${TABLE}.Adult_Safety_notes ;;
  }

  dimension: alleged_victim_is_imparied_in_ability {
    type: yesno
    sql: ${TABLE}.Alleged_Victim_Is_Imparied_in_Ability ;;
  }

  dimension: approximate_age {
    type: number
    sql: ${TABLE}.Approximate_Age ;;
  }

  dimension: aps_contact_city {
    type: string
    sql: ${TABLE}.APS_Contact_City ;;
  }

  dimension: aps_contact_state {
    type: string
    sql: ${TABLE}.APS_Contact_State ;;
  }

  dimension: aps_contact_street_by {
    type: string
    sql: ${TABLE}.APS_Contact_StreetBy ;;
  }

  dimension: aps_contact_zip {
    type: string
    sql: ${TABLE}.APS_Contact_ZIP ;;
  }

  dimension: are_there_any_allegations_made {
    type: yesno
    sql: ${TABLE}.Are_There_any_allegations_made ;;
  }

  dimension: bria_is_recidivous {
    type: yesno
    sql: ${TABLE}.BRIA_is_recidivous ;;
  }

  dimension: client_ability_to_protect_him_herself {
    type: string
    sql: ${TABLE}.Client_ability_to_protect_him_herself ;;
  }

  dimension: client_needs_help_explanation {
    type: string
    sql: ${TABLE}.Client_needs_help_explanation ;;
  }

  dimension: communication_problem {
    type: string
    sql: ${TABLE}.communication_problem ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}.contact ;;
  }

  dimension: contact_sequential_av_number {
    type: number
    sql: ${TABLE}.contact_sequential_AV_Number ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.Created_by ;;
  }

  dimension: does_client_need_services {
    type: string
    sql: ${TABLE}.Does_Client_need_Services ;;
  }

  dimension: employment {
    type: yesno
    sql: ${TABLE}.Employment ;;
  }

  measure: count {
    type: count
    drill_fields: [alleged_victim_id]
  }

  dimension: age_bucket {
    type: tier
    sql: ${approximate_age} ;;
    tiers: [20,40,60,80]
    style: integer

  }
}
