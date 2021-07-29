view: products_by_category {
  sql_table_name: dbo.Products by Category ;;

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: discontinued {
    type: string
    sql: ${TABLE}.Discontinued ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: quantity_per_unit {
    type: string
    sql: ${TABLE}.QuantityPerUnit ;;
  }

  dimension: units_in_stock {
    type: number
    sql: ${TABLE}.UnitsInStock ;;
  }

  measure: count {
    type: count
    drill_fields: [category_name, product_name]
  }
}
