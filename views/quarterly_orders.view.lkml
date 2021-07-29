view: quarterly_orders {
  sql_table_name: dbo.Quarterly Orders ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name, customers.customer_id, customers.company_name, customers.contact_name]
  }
}
