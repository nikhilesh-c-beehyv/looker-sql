view: order_subtotals {
  sql_table_name: dbo.Order Subtotals ;;

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderID ;;
  }

  dimension: subtotal {
    type: string
    sql: ${TABLE}.Subtotal ;;
  }

  measure: count {
    type: count
    drill_fields: [orders.order_id, orders.ship_name]
  }
}
