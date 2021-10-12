view: ok_victims_zip {
  sql_table_name: `myspringml2.ok_salesforce_mockup.ok_victims_zip`
    ;;

  measure: __of_victims {
    label: "# of Alleged Victims"
    type: sum
    sql: ${TABLE}.__of_Victims ;;
    drill_fields: [zip,city,county]
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: zip {
    type: zipcode
    sql: cast(${TABLE}.Zip as string) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
