connection: "midt_dev_connect_4905"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: workday_survey_7_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: workday_survey_7_default_datagroup

explore: emp_survey_2 {


}
