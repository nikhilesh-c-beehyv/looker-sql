view: region {
  sql_table_name: dbo.Region ;;
  drill_fields: [region_id]

  dimension: region_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.RegionID ;;
  }

  dimension: region_description {
    type: string
    sql: ${TABLE}.RegionDescription ;;
  }

  measure: count {
    type: count
    drill_fields: [region_id, territories.count]
  }
}
