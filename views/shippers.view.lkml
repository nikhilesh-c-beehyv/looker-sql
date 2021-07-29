view: shippers {
  sql_table_name: dbo.Shippers ;;
  drill_fields: [shipper_id]

  dimension: shipper_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ShipperID ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  measure: count {
    type: count
    drill_fields: [shipper_id, company_name]
  }
}
