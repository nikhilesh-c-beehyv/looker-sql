connection: "sql_server"

# include all the views
include: "/views/**/*.view"

datagroup: sqlserver_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sqlserver_default_datagroup

explore: alphabetical_list_of_products {
  join: products {
    type: left_outer
    sql_on: ${alphabetical_list_of_products.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${alphabetical_list_of_products.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }
}

explore: categories {}

explore: category_sales_for_1997 {}

explore: current_product_list {
  join: products {
    type: left_outer
    sql_on: ${current_product_list.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${products.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }
}

explore: customer_and_suppliers_by_city {}

explore: customer_customer_demo {
  join: customers {
    type: left_outer
    sql_on: ${customer_customer_demo.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }
}

explore: customer_demographics {}

explore: customers {}

explore: employee_territories {
  join: employees {
    type: left_outer
    sql_on: ${employee_territories.employee_id} = ${employees.employee_id} ;;
    relationship: many_to_one
  }
}

explore: employees {}

explore: invoices {
  join: customers {
    type: left_outer
    sql_on: ${invoices.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${invoices.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${invoices.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: employees {
    type: left_outer
    sql_on: ${orders.employee_id} = ${employees.employee_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${products.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }
}

explore: order_details {
  join: orders {
    type: left_outer
    sql_on: ${order_details.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${order_details.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: employees {
    type: left_outer
    sql_on: ${orders.employee_id} = ${employees.employee_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${products.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }
}

explore: order_details_extended {
  join: orders {
    type: left_outer
    sql_on: ${order_details_extended.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${order_details_extended.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: employees {
    type: left_outer
    sql_on: ${orders.employee_id} = ${employees.employee_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${products.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }
}

explore: order_subtotals {
  join: orders {
    type: left_outer
    sql_on: ${order_subtotals.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: employees {
    type: left_outer
    sql_on: ${orders.employee_id} = ${employees.employee_id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: employees {
    type: left_outer
    sql_on: ${orders.employee_id} = ${employees.employee_id} ;;
    relationship: many_to_one
  }
}

explore: orders_qry {
  join: orders {
    type: left_outer
    sql_on: ${orders_qry.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${orders_qry.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: employees {
    type: left_outer
    sql_on: ${orders_qry.employee_id} = ${employees.employee_id} ;;
    relationship: many_to_one
  }
}

explore: product_sales_for_1997 {}

explore: products {
  join: suppliers {
    type: left_outer
    sql_on: ${products.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }
}

explore: products_above_average_price {}

explore: products_by_category {}

explore: quarterly_orders {
  join: customers {
    type: left_outer
    sql_on: ${quarterly_orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }
}

explore: region {}

explore: sales_by_category {}

explore: sales_totals_by_amount {
  join: orders {
    type: left_outer
    sql_on: ${sales_totals_by_amount.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: employees {
    type: left_outer
    sql_on: ${orders.employee_id} = ${employees.employee_id} ;;
    relationship: many_to_one
  }
}

explore: shippers {}

explore: summary_of_sales_by_quarter {
  join: orders {
    type: left_outer
    sql_on: ${summary_of_sales_by_quarter.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: employees {
    type: left_outer
    sql_on: ${orders.employee_id} = ${employees.employee_id} ;;
    relationship: many_to_one
  }
}

explore: summary_of_sales_by_year {
  join: orders {
    type: left_outer
    sql_on: ${summary_of_sales_by_year.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: employees {
    type: left_outer
    sql_on: ${orders.employee_id} = ${employees.employee_id} ;;
    relationship: many_to_one
  }
}

explore: suppliers {}

explore: sysdiagrams {}

explore: territories {
  join: region {
    type: left_outer
    sql_on: ${territories.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}
