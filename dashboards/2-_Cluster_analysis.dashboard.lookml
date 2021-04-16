- dashboard: 2_cluster_analysis
  title: 2- Cluster analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Map
    name: Map
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_map
    fields: [MDOT_cluster_details.global_id, MDOT_cluster_details.severity_index_measure,
      MDOT_cluster_details.cluster_area, MDOT_cluster_details.crash_density]
    sorts: [MDOT_cluster_details.severity_index_measure desc]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 3
    col: 0
    width: 10
    height: 10
  - title: Driver Distracted
    name: Driver Distracted
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_bar
    fields: [looker_updated.crash_driver_distracted, looker_updated.count]
    filters:
      looker_updated.crash_driver_distracted: "-Uncoded & errors"
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      looker_updated.count: "#d4746c"
    defaults_version: 1
    listen: {}
    row: 20
    col: 0
    width: 10
    height: 4
  - title: Drinking and Drug use
    name: Drinking and Drug use
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_pie
    fields: [looker_updated.drinking_and_drug_use, looker_updated.count]
    sorts: [looker_updated.count desc]
    limit: 500
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    series_colors:
      No intoxication involved: "#d4746c"
      Intoxication involved: "#FFD95F"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 24
    col: 4
    width: 6
    height: 7
  - title: Light Conditions
    name: Light Conditions
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [looker_updated.light, looker_updated.count]
    filters:
      looker_updated.light: "-Uncoded & errors"
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: false
    series_types: {}
    series_colors: {}
    defaults_version: 1
    listen: {}
    row: 8
    col: 18
    width: 6
    height: 6
  - title: No of Traffic Lanes
    name: No of Traffic Lanes
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_bar
    fields: [looker_updated.number_of_traffic_lanes, looker_updated.count]
    filters:
      looker_updated.number_of_traffic_lanes: "-Uncoded & errors"
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 35
    col: 10
    width: 6
    height: 9
  - title: Road Condition
    name: Road Condition
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [looker_updated.road_conditions, looker_updated.count]
    filters:
      looker_updated.road_conditions: "-Uncoded & errors"
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 16
    col: 17
    width: 7
    height: 6
  - title: Speed Limit at Site
    name: Speed Limit at Site
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [looker_updated.speed_limit_at_crashsite, looker_updated.count]
    filters:
      looker_updated.speed_limit_at_crashsite: "-Uncoded & errors"
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    defaults_version: 1
    listen: {}
    row: 34
    col: 16
    width: 8
    height: 4
  - title: Time of Day
    name: Time of Day
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [looker_updated.time_of_day, looker_updated.count]
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      looker_updated.count: "#EBC667"
    defaults_version: 1
    listen: {}
    row: 0
    col: 10
    width: 14
    height: 6
  - title: Total Motor Vehicles Involved
    name: Total Motor Vehicles Involved
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [looker_updated.total_motor_vehicles, looker_updated.count]
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '8'
    series_types: {}
    series_colors:
      looker_updated.count: "#592EC2"
    show_null_points: true
    defaults_version: 1
    listen: {}
    row: 33
    col: 5
    width: 5
    height: 6
  - title: Weather contribution
    name: Weather contribution
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [looker_updated.weather_merged, looker_updated.count]
    filters:
      looker_updated.weather_merged: "-Uncoded & errors"
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    defaults_version: 1
    listen: {}
    row: 8
    col: 10
    width: 8
    height: 6
  - title: Injury Type
    name: Injury Type
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [looker_updated.worst_injury_in_accident, looker_updated.count]
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      looker_updated.count: "#d4746c"
    defaults_version: 1
    listen: {}
    row: 24
    col: 0
    width: 4
    height: 7
  - title: Type of Road
    name: Type of Road
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_grid
    fields: [looker_updated.area_of_road_at_crash, looker_updated.count]
    filters:
      looker_updated.area_of_road_at_crash: "-Uncoded & errors"
    sorts: [looker_updated.count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 22
    col: 17
    width: 7
    height: 6
  - title: Highway details
    name: Highway details
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_grid
    fields: [looker_updated.highway_number, looker_updated.count]
    sorts: [looker_updated.count desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      looker_updated.count:
        is_active: true
        palette:
          palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 16
    col: 10
    width: 7
    height: 12
  - title: Relation to Roadway
    name: Relation to Roadway
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [looker_updated.relation_to_roadway, looker_updated.count]
    filters:
      looker_updated.relation_to_roadway: "-Uncoded & errors"
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      looker_updated.count: "#592EC2"
    defaults_version: 1
    listen: {}
    row: 33
    col: 0
    width: 5
    height: 6
  - title: Traffic Control Measures
    name: Traffic Control Measures
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_pie
    fields: [looker_updated.traffic_control, looker_updated.count]
    filters:
      looker_updated.traffic_control: "-Uncoded & errors"
    sorts: [looker_updated.count desc]
    limit: 500
    value_labels: legend
    label_type: labVal
    inner_radius: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 28
    col: 16
    width: 8
    height: 6
  - title: Trafficway
    name: Trafficway
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [looker_updated.trafficway, looker_updated.count]
    filters:
      looker_updated.trafficway: "-Uncoded & errors"
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    defaults_version: 1
    listen: {}
    row: 38
    col: 16
    width: 8
    height: 6
  - title: Speed Warning
    name: Speed Warning
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [looker_updated.posted_speed_limit, looker_updated.count]
    filters:
      looker_updated.posted_speed_limit: "-Uncoded & errors"
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    defaults_version: 1
    listen: {}
    row: 28
    col: 10
    width: 6
    height: 7
  - title: Region
    name: Region
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [looker_updated.mdot_region2, looker_updated.count]
    sorts: [looker_updated.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: looker_updated.count,
            id: looker_updated.count, name: Crash Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    series_colors:
      looker_updated.count: "#EBC667"
    defaults_version: 1
    listen: {}
    row: 13
    col: 0
    width: 10
    height: 5
  - name: Highway information
    type: text
    title_text: Highway information
    subtitle_text: _________________________________________________________________________________
    body_text: ''
    row: 14
    col: 10
    width: 14
    height: 2
  - name: Note
    type: text
    title_text: Note
    subtitle_text: ''
    body_text: |-
      + The Area of cluster is in **square miles**
      + The Severity Index is calculated using injury type, property damage, no. of vehicles involved, crash density
    row: 0
    col: 0
    width: 10
    height: 3
  - name: Additional information
    type: text
    title_text: Additional information
    subtitle_text: ________________________________________________________
    body_text: ''
    row: 31
    col: 0
    width: 10
    height: 2
  - name: Natural Factors
    type: text
    title_text: Natural Factors
    subtitle_text: _________________________________________________________________________________
    body_text: ''
    row: 6
    col: 10
    width: 14
    height: 2
  - name: Driver Information
    type: text
    title_text: Driver Information
    subtitle_text: _____________________________________________________
    body_text: ''
    row: 18
    col: 0
    width: 10
    height: 2
  - name: Link
    type: text
    title_text: Link
    subtitle_text: _______________________________________________
    body_text: |-
      <center><a href ="https://michigandot.cloud.looker.com/dashboards-next/12?Region=&Date+Month=2019-07%2C2019-08%2C2019-09%2C2019-10%2C2019-11%2C2019-12"><h3>Prediction Validation Dashboard</h3></a></center>
      <center><a href="https://michigandot.cloud.looker.com/dashboards-next/19"><h3>Future Prediction Dashboard</h3></a></center>
    row: 39
    col: 0
    width: 10
    height: 5
