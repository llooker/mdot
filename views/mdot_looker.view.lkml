view: mdot_looker {
 sql_table_name: `mi-dept-of-transportation.MDOT_Processed.mdot_looker`

    ;;

  dimension: accident_day {
    type: number
    sql: ${TABLE}.accident_day ;;
  }



  dimension: accident_month {
    type: string
    sql: ${TABLE}.accident_month ;;
  }

  dimension: accident_year {
    type: number
    sql: ${TABLE}.accident_year ;;
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

  dimension_group: crash {
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
    sql: ${TABLE}.crash_date ;;
  }

  dimension: crash_deer_involv_assoc {
    type: string
    sql: ${TABLE}.crash_deer_involv_assoc ;;
  }

  dimension: crash_density {
    type: number
    sql: ${TABLE}.crash_density ;;
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
    type: number
    sql: ${TABLE}.crash_id ;;
    primary_key: yes
    value_format_name: id
    action: {
      label: "Send message to slack channel"
      url: "https://hooks.zapier.com/hooks/catch/1662138/tvc3zj/"
      param: {
        name: "user_dash_link"
        value: "/dashboards-next/8?Email=david.lomelin@looker.com"
      }
      form_param: {
        name: "Message"
        type: textarea
        default: "Hey,
        Can you please review what happened in this crash {{value}}?
        Thank you!"
      }
      form_param: {
        name: "Recipient"
        type: select
        default: "David"
        option: {
          name: "David"
          label: "David"
        }
        option: {
          name: "crashanalysts"
          label: "Accident Analysts"
        }
      }
      form_param: {
        name: "Slack Channels"
        type: select
        default: "accidents"
        option: {
          name: "Construction Projects"
          label: "Construction Projects"
        }
        option: {
          name: "accidents"
          label: "Accidents"
        }
      }
    }
    action: {
      label: "Send a Project Form Request"
      url: "https://hooks.zapier.com/hooks/catch/2813548/oosxkej/"
      form_param: {
        name: "Project Name"
        type: string
        default: "Project Name"
      }

      form_param: {
        name: "Number of Crashes"
        type: string
        default: "{{count._value}}"
      }

      form_param: {
        name: "Date"
        type: string
        default: "{{crash_date._value}}"
      }

      form_param: {
        name: "Project Timeline"
        type: string
        default: "Nov 2020"
      }

      form_param: {
        name: "Comments"
        type: string
        default: "Please call the project manager for an update."
      }
      form_param: {
        name: "Project Status"
        type: select
        default: "Pending"
        option: {
          name: "Approve"
          label: "Approve"
        }
        option: {
          name: "Pending"
          label: "Pending"
        }
        option: {
          name: "In Review"
          label: "In Review"
        }
      }

    }
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

  dimension: geofence {
    type: string
    sql: ${TABLE}.geofence ;;
  }

  dimension: global_id {
    type: string
    sql: ${TABLE}.global_id ;;
  }

  dimension: gps_x_coordinate {
    type: string
    sql: ${TABLE}.gps_x_coordinate ;;
  }

  dimension: gps_y_coordinate {
    type: string
    sql: ${TABLE}.gps_y_coordinate ;;
  }

  dimension: gps_location {
    type: location
    sql_latitude: ${gps_y_coordinate} ;;
    sql_longitude:  ${gps_x_coordinate} ;;
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

  parameter: select_crash_characteristic {
    type: unquoted
    default_value: "road_conditions"
    allowed_value: {
      value: "road_conditions"
      label: "Road Conditions"
    }
    allowed_value: {
      value: "relation_to_roadway"
      label: "Relation to Roadway"
    }
    allowed_value: {
      value: "crash_animal_type_involv_assoc"
      label: "Animal Type Involvement Assoc."
    }
    allowed_value: {
      value: "crash_deer_involv_assoc"
      label: "Deer Involvement Assoc."
    }
    allowed_value: {
      value: "crash_density"
      label: "Crash Density"
    }
    allowed_value: {
      value: "crash_driver_distracted"
      label: "Driver Distracted"
    }
    allowed_value: {
      value: "crash_elderly_driver"
      label: "Elderly Driver"
    }
    allowed_value: {
      value: "crash_fleeing_pursuing"
      label: "Fleeing Pursuing"
    }
    allowed_value: {
      value: "crash_hit_and_run"
      label: "Hit and Run"
    }
    allowed_value: {
      value: "crash_intersection"
      label: "Intersection"
    }
    allowed_value: {
      value: "crash_lane_departure"
      label: "Lane Departure"
    }
    allowed_value: {
      value: "crash_pedestrian"
      label: "Pedestrian"
    }
    allowed_value: {
      value: "crash_property_damage"
      label: "Property Damage"
    }
    allowed_value: {
      value: "crash_young_driver"
      label: "Young Driver"
    }
  }

  dimension: crash_characteristic {
    label_from_parameter: select_crash_characteristic
    type: string
    sql: {% if select_crash_characteristic._parameter_value == 'road_conditions' %} ${road_conditions}
    {% elsif select_crash_characteristic._parameter_value == 'relation_to_roadway' %} ${relation_to_roadway}
    {% elsif select_crash_characteristic._parameter_value == 'crash_animal_type_involv_assoc' %} ${crash_animal_type_involv_assoc}
    {% elsif select_crash_characteristic._parameter_value == 'crash_deer_involv_assoc' %} ${crash_deer_involv_assoc}
    {% elsif select_crash_characteristic._parameter_value == 'crash_density' %} ${crash_density}
    {% elsif select_crash_characteristic._parameter_value == 'crash_driver_distracted' %} ${crash_driver_distracted}
    {% elsif select_crash_characteristic._parameter_value == 'crash_elderly_driver' %} ${crash_elderly_driver}
    {% elsif select_crash_characteristic._parameter_value == 'crash_fleeing_pursuing' %} ${crash_fleeing_pursuing}
    {% elsif select_crash_characteristic._parameter_value == 'crash_hit_and_run' %} ${crash_hit_and_run}
    {% elsif select_crash_characteristic._parameter_value == 'crash_intersection' %} ${crash_intersection}
    {% elsif select_crash_characteristic._parameter_value == 'crash_lane_departure' %} ${crash_lane_departure}
    {% elsif select_crash_characteristic._parameter_value == 'crash_pedestrian' %} ${crash_pedestrian}
    {% elsif select_crash_characteristic._parameter_value == 'crash_property_damage' %} ${crash_property_damage}
    {% elsif select_crash_characteristic._parameter_value == 'crash_young_driver' %} ${crash_young_driver}
    {% else %} Null
    {% endif %}
    ;;
  }

  measure: total_severity_index {
    type: sum
    sql: ${severity_index} ;;
    value_format_name: decimal_1
  }

  measure: average_severity_index {
    type: average
    sql: ${severity_index} ;;
    value_format_name: decimal_1
  }

  measure: total_motor_vehicles_involved {
    type: sum
    sql: ${TABLE}.total_motor_vehicles ;;
  }

  measure: average_motor_vehicles_involved {
    type: average
    sql: ${TABLE}.total_motor_vehicles ;;
  }

  measure: count {
    label: "# of Crashes"
    type: count
    drill_fields: [total_motor_vehicles_involved, average_severity_index, crash_id, crash_date, time_of_day, crash_type, mdot_region2, crash_intersection]
  }
}
