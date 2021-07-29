view: sales_by_category {
  sql_table_name: dbo.Sales by Category ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryID ;;
  }

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
