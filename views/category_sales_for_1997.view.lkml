view: category_sales_for_1997 {
  sql_table_name: dbo.Category Sales for 1997 ;;

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: category_sales {
    type: string
    sql: ${TABLE}.CategorySales ;;
  }

  measure: count {
    type: count
    drill_fields: [category_name]
  }
}
