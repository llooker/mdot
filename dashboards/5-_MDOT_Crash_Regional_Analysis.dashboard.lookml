- dashboard: 5_mdot_crash_regional_analysis
  title: 5- MDOT Crash Regional Analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Average Motor Vehicles Involved
    name: Average Motor Vehicles Involved
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: single_value
    fields: [MDOT_Crash_Analysis.crash_date, MDOT_Crash_Analysis.average_motor_vehicles_involved]
    fill_fields: [MDOT_Crash_Analysis.crash_date]
    sorts: [MDOT_Crash_Analysis.crash_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: last_day, label: Last Day, expression: 'offset(${MDOT_Crash_Analysis.average_motor_vehicles_involved},1)',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Region Name: mdot_county_region_lookup.region_name
    row: 0
    col: 6
    width: 6
    height: 3
  - title: Average Severity Index
    name: Average Severity Index
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: single_value
    fields: [MDOT_Crash_Analysis.crash_date, MDOT_Crash_Analysis.average_severity_index]
    fill_fields: [MDOT_Crash_Analysis.crash_date]
    filters:
      MDOT_Crash_Analysis.severity_index: ">0"
    sorts: [MDOT_Crash_Analysis.crash_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: last_day, label: Last Day, expression: 'offset(${MDOT_Crash_Analysis.average_severity_index},1)',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Region Name: mdot_county_region_lookup.region_name
    row: 0
    col: 12
    width: 6
    height: 3
  - title: Total Motor Vehicles Involved
    name: Total Motor Vehicles Involved
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: single_value
    fields: [MDOT_Crash_Analysis.crash_date, MDOT_Crash_Analysis.total_motor_vehicles_involved]
    fill_fields: [MDOT_Crash_Analysis.crash_date]
    sorts: [MDOT_Crash_Analysis.crash_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: last_day, label: Last Day, expression: 'offset(${MDOT_Crash_Analysis.total_motor_vehicles_involved},1)',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Region Name: mdot_county_region_lookup.region_name
    row: 0
    col: 18
    width: 6
    height: 3
  - title: "# of Crashes"
    name: "# of Crashes"
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: single_value
    fields: [MDOT_Crash_Analysis.crash_date, MDOT_Crash_Analysis.count]
    fill_fields: [MDOT_Crash_Analysis.crash_date]
    sorts: [MDOT_Crash_Analysis.crash_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: last_day, label: Last Day, expression: 'offset(${MDOT_Crash_Analysis.count},1)',
        value_format: !!null '', value_format_name: decimal_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Region Name: mdot_county_region_lookup.region_name
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Crashes by Day of the Week
    name: Crashes by Day of the Week
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_column
    fields: [MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.crash_day_of_week, MDOT_Crash_Analysis.crash_day_of_week_index]
    sorts: [MDOT_Crash_Analysis.crash_day_of_week_index]
    limit: 500
    column_limit: 50
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
    series_types: {}
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#B32F37", label: Average (Mean)}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [MDOT_Crash_Analysis.crash_day_of_week_index]
    listen:
      Region Name: mdot_county_region_lookup.region_name
    row: 11
    col: 0
    width: 12
    height: 8
  - title: Crashes and Severity Index
    name: Crashes and Severity Index
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_line
    fields: [MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.crash_date, MDOT_Crash_Analysis.average_severity_index]
    fill_fields: [MDOT_Crash_Analysis.crash_date]
    filters:
      MDOT_Crash_Analysis.severity_index: ">0"
    sorts: [MDOT_Crash_Analysis.crash_date desc]
    limit: 500
    column_limit: 50
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: MDOT_Crash_Analysis.count,
            id: MDOT_Crash_Analysis.count, name: "# of Crashes"}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: MDOT_Crash_Analysis.average_severity_index,
            id: MDOT_Crash_Analysis.average_severity_index, name: Average Severity
              Index}], showLabels: true, showValues: true, maxValue: 4, minValue: 0,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      MDOT_Crash_Analysis.count: area
      MDOT_Crash_Analysis.average_severity_index: area
    series_colors:
      MDOT_Crash_Analysis.average_severity_index: "#adb4f0"
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Region Name: mdot_county_region_lookup.region_name
    row: 3
    col: 0
    width: 12
    height: 8
  - title: Accidents by Location
    name: Accidents by Location
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_map
    fields: [MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.gps_location]
    sorts: [MDOT_Crash_Analysis.count desc]
    limit: 500
    column_limit: 50
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
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_marker_color: ["#1167b1"]
    series_types: {}
    defaults_version: 1
    listen:
      Region Name: mdot_county_region_lookup.region_name
    row: 3
    col: 12
    width: 12
    height: 8
  - title: Crashes by Type
    name: Crashes by Type
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_pie
    fields: [MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.crash_type]
    sorts: [MDOT_Crash_Analysis.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_types: {}
    defaults_version: 1
    listen:
      Region Name: mdot_county_region_lookup.region_name
    row: 11
    col: 12
    width: 12
    height: 8
  filters:
  - name: Region Name
    title: Region Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    listens_to_filters: []
    field: mdot_county_region_lookup.region_name
