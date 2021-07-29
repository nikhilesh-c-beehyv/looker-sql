view: customer_and_suppliers_by_city {
  sql_table_name: dbo.Customer and Suppliers by City ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: contact_name {
    type: string
    sql: ${TABLE}.ContactName ;;
  }

  dimension: relationship {
    type: string
    sql: ${TABLE}.Relationship ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name, contact_name]
  }
}
