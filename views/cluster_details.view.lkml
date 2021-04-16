view: cluster_details {
  sql_table_name: `lookerdata.MDOT_Processed.cluster_details`
    ;;

  dimension: cluster_area {
    type: number
    sql: ${TABLE}.cluster_area ;;
    value_format_name: decimal_3

  }

  dimension: cluster_count {
    type: number
    sql: ${TABLE}.cluster_count ;;
  }

  dimension: cluster_id {
    type: number
    sql: ${TABLE}.cluster_id ;;
  }

  dimension: crash_density {
    type: number
    sql: ${TABLE}.crash_density ;;
    value_format_name: decimal_2
  }

  dimension: geofence {
    type: string
    sql: ${TABLE}.geofence ;;
  }

  dimension: global_id {
    primary_key: yes
    type: string
    map_layer_name: cluster_map
    sql: ${TABLE}.global_id ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: mdot_region2 {
    type: string
    sql: ${TABLE}.mdot_region2 ;;
  }

  dimension: severity_index {
    type: number
    sql: ${TABLE}.severity_index ;;
  }

  measure: severity_index_measure {
    type: average
    sql: ${severity_index} ;;
    value_format_name: decimal_2
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
