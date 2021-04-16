- dashboard: 3_mdot_crash_future_predictions
  title: 3- MDOT Crash Future Predictions
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Map
    name: Map
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_map
    fields: [MDOT_cluster_details.global_id, MDOT_cluster_details.cluster_area, crash_future_prediction.predicted_crash_count]
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
    row: 0
    col: 0
    width: 10
    height: 8
  - name: Note
    type: text
    title_text: Note
    subtitle_text: ''
    body_text: |-
      + The Cluster Area is in **square miles**
      + Severity index is calculated combining type of injury, no. of vehicles involved, property damage, crash density and is relative
    row: 8
    col: 0
    width: 10
    height: 3
  - title: Highway Details
    name: Highway Details
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: marketplace_viz_report_table::report_table-marketplace
    fields: [MDOT_cluster_details.crash_density, MDOT_cluster_details.global_id, highway_future_prediction.highway_number,
      highway_future_prediction.predicted_highway_crash, crash_future_prediction.date_month_name]
    sorts: [highway_future_prediction.predicted_highway_crash desc]
    limit: 1500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
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
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    series_types: {}
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
    truncate_column_names: false
    columnOrder: {}
    listen: {}
    row: 0
    col: 10
    width: 14
    height: 11
  - name: Graphical Visualization
    type: text
    title_text: Graphical Visualization
    subtitle_text: _________________________________________________________________________________
    body_text: ''
    row: 11
    col: 0
    width: 24
    height: 2
  - title: Crash Count
    name: Crash Count
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: single_value
    fields: [crash_future_prediction.predicted_crash_count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 13
    col: 0
    width: 7
    height: 4
  - title: Monthly Trend
    name: Monthly Trend
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_line
    fields: [crash_future_prediction.date_month_name, crash_future_prediction.predicted_crash_count]
    filters:
      crash_future_prediction.date_month_name: January,February,March
    sorts: [crash_future_prediction.date_month_name]
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hide_legend: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 13
    col: 7
    width: 7
    height: 5
  - title: Severe Crash Prediction
    name: Severe Crash Prediction
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_line
    fields: [severe_crash_future_prediction.predicted_crash, crash_future_prediction.date_month_name]
    filters:
      crash_future_prediction.date_month_name: January,February,March
    sorts: [crash_future_prediction.date_month_name]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: severe_crash_future_prediction.predicted_crash,
            id: severe_crash_future_prediction.predicted_crash, name: Predicted Crash}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 18
    col: 7
    width: 7
    height: 4
  - title: Highway Level Predictions
    name: Highway Level Predictions
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [highway_future_prediction.highway_number, highway_future_prediction.predicted_highway_crash]
    sorts: [highway_future_prediction.predicted_highway_crash desc]
    limit: 500
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '12'
    series_types: {}
    series_labels:
      highway_future_prediction.predicted_highway_crash: Count
    show_null_points: true
    defaults_version: 1
    listen: {}
    row: 13
    col: 14
    width: 10
    height: 9
  - name: Links
    type: text
    title_text: Links
    subtitle_text: ________
    body_text: |-
      <center><a href="https://michigandot.cloud.looker.com/dashboards-next/18"><h3>Cluster Analysis Dashboard</h3></a></center>
      <center><a href ="https://michigandot.cloud.looker.com/dashboards-next/12?Region=&Date+Month=2019-07%2C2019-08%2C2019-09%2C2019-10%2C2019-11%2C2019-12"><h3>Prediction Validation Dashboard</h3></a></center>
    row: 17
    col: 0
    width: 7
    height: 5
