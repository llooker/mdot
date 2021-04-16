- dashboard: 4_mdot_crash_predictions_validation
  title: 4- MDOT Crash Predictions Validation
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Percentage Accuracy in Prediction
    name: Percentage Accuracy in Prediction
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: single_value
    fields: [cluster_count_predictions.crash_count_measure, cluster_count_predictions.predicted_crash_count_measure]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '1-abs((${cluster_count_predictions.crash_count_measure}-${cluster_count_predictions.predicted_crash_count_measure})/${cluster_count_predictions.crash_count_measure})',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    legend_position: center
    series_types: {}
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [cluster_count_predictions.predicted_crash_count_measure, cluster_count_predictions.crash_count_measure]
    listen:
      Region: cluster_count_predictions.region
      Date Month: cluster_count_predictions.date_month
    row: 18
    col: 0
    width: 6
    height: 3
  - title: Fatal Injury Predictions
    name: Fatal Injury Predictions
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [cluster_severe_count_predictions.actual_severe_crash, cluster_severe_count_predictions.predicted_severe_crash,
      cluster_severe_count_predictions.date_month_name]
    filters:
      cluster_severe_count_predictions.date_month_name: July,August,September,October,November,December
    sorts: [cluster_severe_count_predictions.date_month_name]
    limit: 500
    query_timezone: America/Los_Angeles
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: []
    hide_legend: false
    font_size: '13'
    series_types:
      cluster_severe_count_predictions.actual_severe_crash: line
      cluster_severe_count_predictions.predicted_severe_crash: line
    series_colors:
      cluster_severe_count_predictions.predicted_severe_crash: "#C2DD67"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen:
      Region: cluster_count_predictions.region
      Date Month: cluster_count_predictions.date_month
    row: 21
    col: 6
    width: 8
    height: 5
  - title: Predicted Crashes
    name: Predicted Crashes
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: single_value
    fields: [cluster_count_predictions.predicted_crash_count_measure, cluster_count_predictions.crash_count_measure]
    limit: 500
    dynamic_fields: [{table_calculation: actual_crashes, label: Actual Crashes, expression: "${cluster_count_predictions.crash_count_measure}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    value_format: "###,###"
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    legend_position: center
    series_types: {}
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [cluster_count_predictions.crash_count_measure]
    listen:
      Region: cluster_count_predictions.region
      Date Month: cluster_count_predictions.date_month
    row: 15
    col: 0
    width: 6
    height: 3
  - title: Highway Level Predictions
    name: Highway Level Predictions
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [road_count_predictions.actual_crash_count, road_count_predictions.highway_number,
      road_count_predictions.predicted_crash_count]
    sorts: [road_count_predictions.actual_crash_count desc]
    limit: 500
    dynamic_fields: [{table_calculation: error_in_prediction, label: Error in prediction,
        expression: 'abs(${road_count_predictions.actual_crash_count}-${road_count_predictions.predicted_crash_count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: road_count_predictions.actual_crash_count,
            id: road_count_predictions.actual_crash_count, name: Actual Crash Count},
          {axisId: error_in_prediction, id: error_in_prediction, name: Error in prediction},
          {axisId: road_count_predictions.predicted_crash_count, id: road_count_predictions.predicted_crash_count,
            name: Predicted Crash Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    series_types:
      error_in_prediction: scatter
    series_colors:
      road_count_predictions.predicted_crash_count: "#75E2E2"
      error_in_prediction: "#B32F37"
      road_count_predictions.actual_crash_count: "#4dcbf5"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Region: cluster_count_predictions.region
      Date Month: cluster_count_predictions.date_month
    row: 15
    col: 14
    width: 10
    height: 11
  - name: Crash Predictions
    type: text
    title_text: Crash Predictions
    subtitle_text: _________________________________________________________________________________
    body_text: ''
    row: 13
    col: 0
    width: 24
    height: 2
  - title: Map
    name: Map
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_map
    fields: [MDOT_cluster_details.cluster_area, MDOT_cluster_details.crash_density,
      MDOT_cluster_details.global_id, cluster_count_predictions.crash_count_measure]
    sorts: [MDOT_cluster_details.crash_density]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: traffic_day
    map_position: custom
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
    map_latitude: 43.79753224345763
    map_longitude: -83.34594637155534
    map_zoom: 6
    defaults_version: 1
    hidden_fields:
    listen: {}
    row: 0
    col: 0
    width: 10
    height: 10
  - title: Highway Details
    name: Highway Details
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_grid
    fields: [MDOT_cluster_details.crash_density, MDOT_cluster_details.global_id, road_count_predictions.highway_number,
      road_count_predictions.actual_crash_count, road_count_predictions.predicted_crash_count,
      road_count_predictions.accident_month]
    sorts: [MDOT_cluster_details.crash_density]
    limit: 5000
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      road_count_predictions.actual_crash_count:
        is_active: true
      road_count_predictions.predicted_crash_count:
        is_active: true
      MDOT_cluster_details.crash_density:
        is_active: true
        palette:
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
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
    defaults_version: 1
    map_latitude: 44.54723665148148
    map_longitude: -83.28366279602051
    map_zoom: 6
    series_types: {}
    listen: {}
    row: 0
    col: 10
    width: 14
    height: 13
  - name: Note
    type: text
    title_text: Note
    subtitle_text: ''
    body_text: |-
      + The Cluster Area is in **square miles**
      + Severity index is calculated combining type of injury, no. of vehicles involved, property damage, crash density and is relative
    row: 10
    col: 0
    width: 10
    height: 3
  - title: Monthly Trend of Crash Prediction
    name: Monthly Trend of Crash Prediction
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    type: looker_column
    fields: [cluster_count_predictions.date_month_name, cluster_count_predictions.crash_count_measure,
      cluster_count_predictions.predicted_crash_count_measure]
    filters:
      cluster_count_predictions.date_month_name: July,August,September,October,November,December
    sorts: [cluster_count_predictions.date_month_name]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: cluster_count_predictions.crash_count_measure,
            id: cluster_count_predictions.crash_count_measure, name: Crash Count Measure},
          {axisId: cluster_count_predictions.predicted_crash_count_measure, id: cluster_count_predictions.predicted_crash_count_measure,
            name: Predicted Crash Count Measure}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: false
    series_types:
      cluster_count_predictions.crash_count_measure: line
      cluster_count_predictions.predicted_crash_count_measure: line
    series_labels:
      cluster_count_predictions.crash_count_measure: Actual Crashes
      cluster_count_predictions.predicted_crash_count_measure: Predicted Crashes
    series_point_styles:
      cluster_count_predictions.crash_count_measure: square
    defaults_version: 1
    listen: {}
    row: 15
    col: 6
    width: 8
    height: 6
  - name: Links
    type: text
    title_text: Links
    subtitle_text: ________________
    body_text: |-
      <center><a href ="https://michigandot.cloud.looker.com/dashboards-next/18"><h3>Cluster Analysis Dashboard</h3></a></center>
      <center><a href="https://michigandot.cloud.looker.com/dashboards-next/19"><h3>Future Prediction Dashboard</h3></a></center>
    row: 21
    col: 0
    width: 6
    height: 5
  filters:
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    listens_to_filters: []
    field: cluster_count_predictions.region
  - name: Date Month
    title: Date Month
    type: field_filter
    default_value: 2020-07,2020-08,2020-09,2020-10,2020-11,2020-12
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: dl_mdot_crash_analysis
    explore: MDOT_cluster_details
    listens_to_filters: []
    field: cluster_count_predictions.date_month
