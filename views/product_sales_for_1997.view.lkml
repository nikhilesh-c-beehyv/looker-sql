view: product_sales_for_1997 {
  sql_table_name: dbo.Product Sales for 1997 ;;

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: product_sales {
    type: string
    sql: ${TABLE}.ProductSales ;;
  }

  measure: count {
    type: count
    drill_fields: [category_name, product_name]
  }
}
