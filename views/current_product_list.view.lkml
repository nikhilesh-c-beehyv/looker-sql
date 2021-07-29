view: current_product_list {
  sql_table_name: dbo.Current Product List ;;

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, products.product_id, products.product_name]
  }
}
