view: orders_qry {
  sql_table_name: dbo.Orders Qry ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

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

  dimension: employee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.EmployeeID ;;
  }

  dimension: freight {
    type: string
    sql: ${TABLE}.Freight ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.OrderDate ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderID ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension_group: required {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.RequiredDate ;;
  }

  dimension: ship_address {
    type: string
    sql: ${TABLE}.ShipAddress ;;
  }

  dimension: ship_city {
    type: string
    sql: ${TABLE}.ShipCity ;;
  }

  dimension: ship_country {
    type: string
    sql: ${TABLE}.ShipCountry ;;
  }

  dimension: ship_name {
    type: string
    sql: ${TABLE}.ShipName ;;
  }

  dimension: ship_postal_code {
    type: string
    sql: ${TABLE}.ShipPostalCode ;;
  }

  dimension: ship_region {
    type: string
    sql: ${TABLE}.ShipRegion ;;
  }

  dimension: ship_via {
    type: number
    sql: ${TABLE}.ShipVia ;;
  }

  dimension_group: shipped {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ShippedDate ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      ship_name,
      company_name,
      orders.order_id,
      orders.ship_name,
      customers.customer_id,
      customers.company_name,
      customers.contact_name,
      employees.employee_id,
      employees.last_name,
      employees.first_name
    ]
  }
}
