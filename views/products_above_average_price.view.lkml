view: products_above_average_price {
  sql_table_name: dbo.Products Above Average Price ;;

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
