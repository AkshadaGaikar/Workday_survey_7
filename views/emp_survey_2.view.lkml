view: emp_survey_2 {
  sql_table_name: `WORKDAY_SURVEY.EMP_Survey_2` ;;

  dimension: designation {
    type: string
    sql: ${TABLE}.Designation ;;
  }
  dimension: employee_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.EmployeeID ;;
  }
  dimension: manager_id {
    type: string
    sql: ${TABLE}.ManagerID ;;
  }
  dimension: number_of_emp {
    type: number
    sql: ${TABLE}.NumberOfEmp ;;
  }
  dimension: question {
    type: string
    sql: ${TABLE}.Question ;;
  }
  dimension: response {
    type: string
    sql: ${TABLE}.Response ;;
  }
  dimension: survey_name {
    type: string
    sql: ${TABLE}.SurveyName ;;
  }
  measure: count {
    type: count
    drill_fields: [survey_name]
  }
}
