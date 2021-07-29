view: customer_demographics {
  sql_table_name: dbo.CustomerDemographics ;;

  dimension: customer_desc {
    type: string
    sql: ${TABLE}.CustomerDesc ;;
  }

  dimension: customer_type_id {
    type: string
    sql: ${TABLE}.CustomerTypeID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
