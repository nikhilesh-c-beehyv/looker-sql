view: employee_territories {
  sql_table_name: dbo.EmployeeTerritories ;;

  dimension: employee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.EmployeeID ;;
  }

  dimension: territory_id {
    type: string
    sql: ${TABLE}.TerritoryID ;;
  }

  measure: count {
    type: count
    drill_fields: [employees.employee_id, employees.last_name, employees.first_name]
  }
}
