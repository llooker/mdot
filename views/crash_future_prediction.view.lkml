view: crash_future_prediction {
  sql_table_name: `lookerdata.mdot.crash_future_prediction`
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
    type: number
    sql: ${TABLE}.ae ;;
    hidden: yes
  }

  dimension: cluster_id {
    type: number
    sql: ${TABLE}.cluster_id ;;
  }

  dimension: count_crash_future_prediction {
    type: number
    sql: ${TABLE}.count ;;
    hidden: yes
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

  dimension: mape {
    type: number
    sql: ${TABLE}.mape ;;
    hidden: yes
  }

  dimension: predikted_crash_count {
    type: number
    sql: ${TABLE}.predicted_crash_count ;;
    hidden: yes
  }

  measure: predicted_crash_count {
    type: sum
    sql: ${TABLE}.predicted_crash_count ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
