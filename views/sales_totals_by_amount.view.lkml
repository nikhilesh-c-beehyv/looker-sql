view: sales_totals_by_amount {
  sql_table_name: dbo.Sales Totals by Amount ;;

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderID ;;
  }

  dimension: sale_amount {
    type: string
    sql: ${TABLE}.SaleAmount ;;
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
    drill_fields: [company_name, orders.order_id, orders.ship_name]
  }
}
