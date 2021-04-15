view: road_count_predictions {
  sql_table_name: `mi-dept-of-transportation.MDOT_Processed.road_count_predictions`
    ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.global_id,'-',${TABLE}.accident_month,'-',${highway_number}) ;;
  }

  dimension: accident_month {
    type: string
    sql: ${TABLE}.accident_month ;;
  }

  dimension: accident_year {
    type: number
    sql: ${TABLE}.accident_year ;;
  }

  dimension: ae {
    label: "Absolute Error"
    type: number
    sql: ${TABLE}.ae ;;
  }

  dimension: cluster_id {
    type: number
    sql: ${TABLE}.cluster_id ;;
  }

  dimension: count_road_count_predictions {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: crash_count {
    type: number
    sql: ${TABLE}.crash_count ;;
    hidden: yes
  }

  dimension: global_id {
    type: string
    sql: ${TABLE}.global_id ;;
  }

  dimension: highway_number {
    type: number
    sql: ${TABLE}.highway_number ;;
  }

  dimension: mape {
    type: number
    sql: ${TABLE}.mape ;;
  }

  dimension: predicted_count {
    type: number
    sql: ${TABLE}.predicted_crash_count ;;
    hidden: yes
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: actual_crash_count {
    type: sum
    sql: ${TABLE}.crash_count ;;
  }

  measure: predicted_crash_count {
    type: sum
    sql: ${TABLE}.predicted_crash_count ;;
  }

  measure: average_absolute_error {
    type: average
    sql: ${TABLE}.ae;;
  }

}
