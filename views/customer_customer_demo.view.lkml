view: customer_customer_demo {
  sql_table_name: dbo.CustomerCustomerDemo ;;

  dimension: customer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: customer_type_id {
    type: string
    sql: ${TABLE}.CustomerTypeID ;;
  }

  measure: count {
    type: count
    drill_fields: [customers.customer_id, customers.company_name, customers.contact_name]
  }
}
