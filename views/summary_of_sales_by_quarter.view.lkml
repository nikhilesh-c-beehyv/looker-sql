view: summary_of_sales_by_quarter {
  sql_table_name: dbo.Summary of Sales by Quarter ;;

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderID ;;
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

  dimension: subtotal {
    type: string
    sql: ${TABLE}.Subtotal ;;
  }

  measure: count {
    type: count
    drill_fields: [orders.order_id, orders.ship_name]
  }
}
