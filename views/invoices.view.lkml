view: invoices {
  sql_table_name: dbo.Invoices ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
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

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: extended_price {
    type: string
    sql: ${TABLE}.ExtendedPrice ;;
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

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
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

  dimension: salesperson {
    type: string
    sql: ${TABLE}.Salesperson ;;
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

  dimension: shipper_name {
    type: string
    sql: ${TABLE}.ShipperName ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      ship_name,
      customer_name,
      shipper_name,
      product_name,
      customers.customer_id,
      customers.company_name,
      customers.contact_name,
      orders.order_id,
      orders.ship_name,
      products.product_id,
      products.product_name
    ]
  }
}
