view: order_details_extended {
  sql_table_name: dbo.Order Details Extended ;;

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: extended_price {
    type: string
    sql: ${TABLE}.ExtendedPrice ;;
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

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
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
    drill_fields: [product_name, orders.order_id, orders.ship_name, products.product_id, products.product_name]
  }
}
