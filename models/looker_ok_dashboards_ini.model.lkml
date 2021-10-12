connection: "looker_ini"

# include all the views
include: "/views/**/*.view"

datagroup: looker_ok_dashboards_ini_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_ok_dashboards_ini_default_datagroup

explore: connection_reg_r3 {}

explore: num_apps_pemits_data {}

explore: num_licensed_programs_data {}

explore: qris_applications_approved {}

explore: zip_code_coor {}

explore: num_licensed_programs_data_with_coor {}

explore: num_apps_permits_data_with_coor {}

explore: qris_applications_county_population_under_age_5 {}

explore: test {}

explore: alleged_victim {}

explore: ok_victims_zip {}

explore: service_plan {}

explore: service_plan_item {}
