connection: "lookerdata"
label: "MDOT Crash Analysis"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/dashboards/*.dashboard.lookml"
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

# explore: mdot_looker {}

explore: MDOT_Crash_Analysis {
  label: "1- Crash Analysis"
  from: mdot_looker

  join: mdot_county_region_lookup {
    relationship:  many_to_one
    type:  left_outer
    sql_on: UPPER(${MDOT_Crash_Analysis.county})=UPPER(${mdot_county_region_lookup.county_name})  ;;
  }

  join: mdot_regions {
    relationship:  many_to_one
    type:  left_outer
    sql_on: ${MDOT_Crash_Analysis.mdot_region2}=${mdot_regions.region_name}   ;;
  }
}

map_layer: mdot_regions {
  file: "MDOT_Regions.json"
  property_key: "Code"
  property_label_key: "Name"
}

map_layer: cluster_map {
  file: "cluster_map_20201211.topojson"
  property_key: "global_id"
  property_label_key: "global_id"
}



explore: MDOT_cluster_details {
  label: "2- Cluster Details"
  from: cluster_details
  join:  cluster_count_predictions{
    relationship: many_to_one
    type: left_outer
    sql_on: ${cluster_count_predictions.global_id}=${MDOT_cluster_details.global_id} ;;
  }
  join: looker_updated {
    relationship: many_to_one
    type: left_outer
    sql_on: ${looker_updated.global_id}=${MDOT_cluster_details.global_id} ;;
  }
  join: cluster_severe_count_predictions {
    relationship: many_to_one
    type: left_outer
    sql_on: ${cluster_severe_count_predictions.global_id} = ${MDOT_cluster_details.global_id} ;;
  }
  join: road_count_predictions {
    relationship: many_to_one
    type: left_outer
    sql_on: ${road_count_predictions.global_id} = ${MDOT_cluster_details.global_id} ;;
  }
  join: crash_future_prediction {
    relationship: many_to_one
    type: left_outer
    sql_on: ${crash_future_prediction.global_id} = ${MDOT_cluster_details.global_id} ;;
  }
  join: highway_future_prediction {
    relationship: many_to_one
    type: left_outer
    sql_on: ${highway_future_prediction.global_id} = ${MDOT_cluster_details.global_id} ;;
  }
  join: severe_crash_future_prediction {
    relationship: many_to_one
    type: left_outer
    sql_on: ${severe_crash_future_prediction.global_id} = ${MDOT_cluster_details.global_id} ;;
  }
}
