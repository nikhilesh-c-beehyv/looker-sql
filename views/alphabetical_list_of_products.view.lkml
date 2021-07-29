view: alphabetical_list_of_products {
  sql_table_name: dbo.Alphabetical list of products ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryID ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: discontinued {
    type: string
    sql: ${TABLE}.Discontinued ;;
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

  dimension: quantity_per_unit {
    type: string
    sql: ${TABLE}.QuantityPerUnit ;;
  }

  dimension: reorder_level {
    type: number
    sql: ${TABLE}.ReorderLevel ;;
  }

  dimension: supplier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SupplierID ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  dimension: units_in_stock {
    type: number
    sql: ${TABLE}.UnitsInStock ;;
  }

  dimension: units_on_order {
    type: number
    sql: ${TABLE}.UnitsOnOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product_name,
      category_name,
      products.product_id,
      products.product_name,
      suppliers.supplier_id,
      suppliers.company_name,
      suppliers.contact_name
    ]
  }
}
