view: cluster_count_predictions {
  sql_table_name: `lookerdata.MDOT_Processed.cluster_count_predictions`
    ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.global_id,'-',${TABLE}.accident_month) ;;
  }

  dimension: accident_month {
    type: string
    sql: ${TABLE}.accident_month ;;
    hidden: yes
  }

  dimension: accident_year {
    type: number
    sql: ${TABLE}.accident_year ;;
    hidden: yes
  }

  dimension: accident_date {
    type: date
    sql: parse_date('%Y-%b-%d', CONCAT(${accident_year},'-',${accident_month},'-01') ) ;;
    hidden: yes
  }

  dimension_group: date {
    type: time
    timeframes: [
      month,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${accident_date} ;;
  }

  dimension: ae {
    label: "Absolute Error"
    type: number
    sql: ${TABLE}.ae ;;
  }

  measure: total_absolute_error {
    type: sum
    sql: ${TABLE}.ae ;;
  }

  dimension: cluster_id {
    type: number
    sql: ${TABLE}.cluster_id ;;
  }

  dimension: count_cluster_count_predictions {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: crash_count {
    type: number
    sql: ${TABLE}.crash_count ;;
    hidden: yes
  }

  measure: crash_count_measure {
    type: sum
    sql: ${crash_count} ;;
    value_format_name: decimal_0
  }

  dimension: global_id {
    type: string
    sql: ${TABLE}.global_id ;;
  }

  dimension: mape {
    type: number
    sql: ${TABLE}.mape ;;
  }

  dimension: predicted_crash_count {
    type: number
    sql: ${TABLE}.predicted_crash_count ;;
    hidden: yes
  }

  measure: predicted_crash_count_measure {
    type: sum
    sql: ${predicted_crash_count} ;;
    value_format_name: decimal_0
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
