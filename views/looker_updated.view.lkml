view: looker_updated {
  sql_table_name: `mi-dept-of-transportation.MDOT_Processed.looker_updated`
    ;;
    label: "Crash Count"

  dimension: accident_day {
    type: number
    sql: ${TABLE}.accident_day ;;
    hidden: yes
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
    sql: parse_date('%Y-%b-%d', CONCAT(${accident_year},'-',${accident_month},'-',${accident_day}) ) ;;
    hidden: yes
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      day_of_week_index,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${accident_date} ;;
  }

  dimension: area_of_road_at_crash {
    type: string
    sql: ${TABLE}.area_of_road_at_crash ;;
  }

  dimension: city_or_township {
    type: string
    sql: ${TABLE}.city_or_township ;;
  }

  dimension: cluster_id {
    type: number
    sql: ${TABLE}.cluster_id ;;
  }

  dimension: control_section {
    type: string
    sql: ${TABLE}.control_section ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: crash_animal_type_involv_assoc {
    type: string
    sql: ${TABLE}.crash_animal_type_involv_assoc ;;
  }

  dimension: crash_deer_involv_assoc {
    type: string
    sql: ${TABLE}.crash_deer_involv_assoc ;;
  }

  dimension: crash_driver_distracted {
    type: string
    sql: ${TABLE}.crash_driver_distracted ;;
  }

  dimension: crash_elderly_driver {
    type: string
    sql: ${TABLE}.crash_elderly_driver ;;
  }

  dimension: crash_fleeing_pursuing {
    type: string
    sql: ${TABLE}.crash_fleeing_pursuing ;;
  }

  dimension: crash_hit_and_run {
    type: string
    sql: ${TABLE}.crash_hit_and_run ;;
  }

  dimension: crash_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.crash_id ;;
  }

  dimension: crash_intersection {
    type: string
    sql: ${TABLE}.crash_intersection ;;
  }

  dimension: crash_lane_departure {
    type: string
    sql: ${TABLE}.crash_lane_departure ;;
  }

  dimension: crash_pedestrian {
    type: string
    sql: ${TABLE}.crash_pedestrian ;;
  }

  dimension: crash_property_damage {
    type: string
    sql: ${TABLE}.crash_property_damage ;;
  }

  dimension: crash_type {
    type: string
    sql: ${TABLE}.crash_type ;;
  }

  dimension: crash_young_driver {
    type: string
    sql: ${TABLE}.crash_young_driver ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: drinking_and_drug_use {
    type: string
    sql: ${TABLE}.drinking_and_drug_use ;;
  }

  dimension: global_id {
    type: string
    sql: ${TABLE}.global_id ;;
  }

  dimension: gps_x_coordinate {
    type: number
    sql: ${TABLE}.gps_x_coordinate ;;
  }

  dimension: gps_y_coordinate {
    type: number
    sql: ${TABLE}.gps_y_coordinate ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.gps_y_coordinate ;;
    sql_longitude: ${TABLE}.gps_x_coordinate ;;
  }

  dimension: highway_class {
    type: string
    sql: ${TABLE}.highway_class ;;
  }

  dimension: highway_number {
    type: string
    sql: ${TABLE}.highway_number ;;
  }

  dimension: light {
    type: string
    sql: ${TABLE}.light ;;
  }

  dimension: mdot_region2 {
    label: "MDOT Region"
    type: string
    sql: ${TABLE}.mdot_region2 ;;
  }

  dimension: mi_tsc {
    type: string
    sql: ${TABLE}.mi_tsc ;;
  }

  dimension: msp_districts_current {
    type: string
    sql: ${TABLE}.msp_districts_current ;;
  }

  dimension: msp_posts_updated16 {
    type: string
    sql: ${TABLE}.msp_posts_updated16 ;;
  }

  dimension: number_of_traffic_lanes {
    type: string
    sql: ${TABLE}.number_of_traffic_lanes ;;
  }

  measure: average_lanes {
    type: average
    sql: ${TABLE}.number_of_traffic_lanes ;;
  }

  dimension: other_vehicles_involved {
    type: string
    sql: ${TABLE}.other_vehicles_involved ;;
  }

  dimension: posted_speed_limit {
    type: string
    sql: ${TABLE}.posted_speed_limit ;;
  }

  dimension: relation_to_roadway {
    type: string
    sql: ${TABLE}.relation_to_roadway ;;
  }

  dimension: road_conditions {
    type: string
    sql: ${TABLE}.road_conditions ;;
  }

  dimension: severity_index {
    type: number
    sql: ${TABLE}.severity_index ;;
  }

  dimension: speed_limit_at_crashsite {
    type: string
    sql: ${TABLE}.speed_limit_at_crashsite ;;
  }

  dimension: time_of_day {
    type: string
    sql: ${TABLE}.time_of_day ;;
  }

  dimension: total_motor_vehicles {
    type: number
    sql: ${TABLE}.total_motor_vehicles ;;
  }

  measure: average_motor_vehicles {
    type: average
    sql: ${TABLE}.total_motor_vehicles ;;
  }

  dimension: traffic_control {
    type: string
    sql: ${TABLE}.traffic_control ;;
  }

  dimension: trafficway {
    type: string
    sql: ${TABLE}.trafficway ;;
  }

  dimension: weather_merged {
    type: string
    sql: ${TABLE}.weather_merged ;;
  }

  dimension: worst_injury_in_accident {
    type: string
    sql: ${TABLE}.worst_injury_in_accident ;;
  }

  measure: count {
    label: "Count"
    type: count
    drill_fields: []
  }
}
