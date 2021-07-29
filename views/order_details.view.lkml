view: order_details {
  sql_table_name: dbo.Order Details ;;

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderID ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  measure: count {
    type: count
    drill_fields: [orders.order_id, orders.ship_name, products.product_id, products.product_name]
  }
}
