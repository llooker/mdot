view: cluster_severe_count_predictions {
  sql_table_name: `lookerdata.MDOT_Processed.cluster_severe_count_predictions`
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

  dimension: accident_date {
    type: date
    sql: parse_date('%Y-%b-%d', CONCAT(${accident_year},'-',${accident_month},'-01') ) ;;
    hidden: yes
  }

  dimension: accident_year {
    type: number
    sql: ${TABLE}.accident_year ;;
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

  dimension: cluster_id {
    type: number
    sql: ${TABLE}.cluster_id ;;
  }

  dimension: total_crashes {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: global_id {
    type: string
    sql: ${TABLE}.global_id ;;
  }

  dimension: predicted_crash_count {
    type: number
    sql: ${TABLE}.predicted_crash_count ;;
    hidden: yes
  }

  measure: predicted_severe_crash {
    type: sum
    sql: ${predicted_crash_count} ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: severe_crash_count {
    type: number
    sql: ${TABLE}.severe_crash_count ;;
    hidden: yes
  }

  measure: actual_severe_crash {
    type: sum
    sql: ${severe_crash_count} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
