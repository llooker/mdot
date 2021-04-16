- dashboard: 1_crash_analysis
  title: 1- Crash Analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: "# of Crashes"
    name: "# of Crashes"
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: single_value
    fields: [MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.crash_week]
    fill_fields: [MDOT_Crash_Analysis.crash_week]
    sorts: [MDOT_Crash_Analysis.crash_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: previous_week, label: Previous Week, expression: 'offset(${MDOT_Crash_Analysis.count},1)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
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
    comparison_label: Previous Week
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
    note_state: collapsed
    note_display: hover
    note_text: Last Week
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 0
    col: 0
    width: 5
    height: 4
  - title: Average Vehicles Involved
    name: Average Vehicles Involved
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: single_value
    fields: [MDOT_Crash_Analysis.average_motor_vehicles_involved, MDOT_Crash_Analysis.crash_week]
    fill_fields: [MDOT_Crash_Analysis.crash_week]
    sorts: [MDOT_Crash_Analysis.crash_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: previous_week, label: Previous Week, expression: 'offset(${MDOT_Crash_Analysis.average_motor_vehicles_involved},1)',
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
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
    value_format: "#.#"
    comparison_label: ''
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
    note_state: collapsed
    note_display: hover
    note_text: Last Week
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 0
    col: 20
    width: 4
    height: 4
  - title: Average Severity Index
    name: Average Severity Index
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: single_value
    fields: [MDOT_Crash_Analysis.average_severity_index, MDOT_Crash_Analysis.crash_week]
    fill_fields: [MDOT_Crash_Analysis.crash_week]
    filters:
      MDOT_Crash_Analysis.severity_index: ">0"
    sorts: [MDOT_Crash_Analysis.crash_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: previous_week, label: Previous Week, expression: 'offset(${MDOT_Crash_Analysis.average_severity_index},1)',
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
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
    note_state: collapsed
    note_display: hover
    note_text: Last Week
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 0
    col: 10
    width: 5
    height: 4
  - title: Fatal Crashes
    name: Fatal Crashes
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: single_value
    fields: [MDOT_Crash_Analysis.crash_week, MDOT_Crash_Analysis.count]
    fill_fields: [MDOT_Crash_Analysis.crash_week]
    filters:
      MDOT_Crash_Analysis.worst_injury_in_accident: Fatal injury (K)
    sorts: [MDOT_Crash_Analysis.crash_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: previous_week, label: Previous Week, expression: 'offset(${MDOT_Crash_Analysis.count},1)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 10, background_color: "#fffef4",
        font_color: "#ff3e2c", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    note_state: collapsed
    note_display: hover
    note_text: Last Week
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 0
    col: 15
    width: 5
    height: 4
  - title: Total Vehicles Involved
    name: Total Vehicles Involved
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: single_value
    fields: [MDOT_Crash_Analysis.crash_week, MDOT_Crash_Analysis.total_motor_vehicles_involved]
    fill_fields: [MDOT_Crash_Analysis.crash_week]
    limit: 500
    dynamic_fields: [{table_calculation: previous_week, label: Previous Week, expression: 'offset(
          ${MDOT_Crash_Analysis.total_motor_vehicles_involved},1)', value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
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
    note_state: collapsed
    note_display: hover
    note_text: Last Week
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 0
    col: 5
    width: 5
    height: 4
  - title: Crashes and Severity Index
    name: Crashes and Severity Index
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_line
    fields: [MDOT_Crash_Analysis.crash_date, MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.total_severity_index]
    fill_fields: [MDOT_Crash_Analysis.crash_date]
    sorts: [MDOT_Crash_Analysis.crash_date desc]
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
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: MDOT_Crash_Analysis.total_severity_index,
            id: MDOT_Crash_Analysis.total_severity_index, name: Total Severity Index}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      MDOT_Crash_Analysis.total_severity_index: column
    series_colors:
      MDOT_Crash_Analysis.total_severity_index: "#c3d4f7"
      MDOT_Crash_Analysis.count: "#3EB0D5"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 31
    col: 0
    width: 12
    height: 9
  - title: Severity by Location
    name: Severity by Location
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_map
    fields: [MDOT_Crash_Analysis.total_severity_index, MDOT_Crash_Analysis.gps_location]
    filters:
      MDOT_Crash_Analysis.gps_location_bin_level: '11'
      MDOT_Crash_Analysis.gps_location: inside box from 45.089035564831036, -92.81250000000001
        to 40.979898069620155, -75.93750000000001
      MDOT_Crash_Analysis.severity_index: ">0"
    sorts: [MDOT_Crash_Analysis.total_severity_index desc]
    limit: 5000
    query_timezone: America/Los_Angeles
    map_plot_mode: automagic_heatmap
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
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 43.27720532212024
    map_longitude: -85.12756347656251
    map_zoom: 7
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: MDOT_Crash_Analysis.count,
            id: MDOT_Crash_Analysis.count, name: "# of Crashes"}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: MDOT_Crash_Analysis.total_severity_index,
            id: MDOT_Crash_Analysis.total_severity_index, name: Total Severity Index}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    series_types: {}
    point_style: none
    series_colors:
      MDOT_Crash_Analysis.total_severity_index: "#bfb1ff"
      MDOT_Crash_Analysis.count: "#4276BE"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 31
    col: 12
    width: 12
    height: 9
  - title: Crashes by Region
    name: Crashes by Region
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_map
    fields: [MDOT_Crash_Analysis.count, mdot_regions.region_name, mdot_regions.region_code]
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
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 6
    col: 0
    width: 12
    height: 8
  - title: "# of Crashes and Severity by Type"
    name: "# of Crashes and Severity by Type"
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_bar
    fields: [MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.crash_type, MDOT_Crash_Analysis.average_severity_index]
    sorts: [MDOT_Crash_Analysis.count desc]
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
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: MDOT_Crash_Analysis.average_severity_index,
            id: MDOT_Crash_Analysis.average_severity_index, name: Average Severity
              Index}], showLabels: true, showValues: true, maxValue: 4, minValue: 0,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 10, type: linear},
      {label: '', orientation: bottom, series: [{axisId: MDOT_Crash_Analysis.count,
            id: MDOT_Crash_Analysis.count, name: "# of Crashes"}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      MDOT_Crash_Analysis.total_severity_index: scatter
      MDOT_Crash_Analysis.average_severity_index: scatter
    series_colors:
      MDOT_Crash_Analysis.average_severity_index: "#4276BE"
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
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
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 6
    col: 12
    width: 12
    height: 8
  - title: Details
    name: Details
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_grid
    fields: [MDOT_Crash_Analysis.crash_date, MDOT_Crash_Analysis.crash_id, MDOT_Crash_Analysis.count,
      MDOT_Crash_Analysis.average_severity_index, MDOT_Crash_Analysis.average_motor_vehicles_involved,
      MDOT_Crash_Analysis.total_motor_vehicles_involved]
    sorts: [MDOT_Crash_Analysis.crash_date desc]
    subtotals: [MDOT_Crash_Analysis.crash_date]
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
    series_column_widths:
      MDOT_Crash_Analysis.crash_type: 143
      MDOT_Crash_Analysis.crash_hit_and_run: 136
    series_cell_visualizations:
      MDOT_Crash_Analysis.count:
        is_active: true
    series_collapsed:
      MDOT_Crash_Analysis.crash_date: true
    series_value_format:
      MDOT_Crash_Analysis.average_severity_index:
        name: decimal_1
        format_string: "#,##0.0"
        label: Decimals (1)
      MDOT_Crash_Analysis.average_motor_vehicles_involved:
        name: decimal_1
        format_string: "#,##0.0"
        label: Decimals (1)
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: MDOT_Crash_Analysis.count,
            id: MDOT_Crash_Analysis.count, name: "# of Crashes"}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    legend_position: center
    series_types: {}
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
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
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
    hidden_fields:
    note_state: collapsed
    note_display: hover
    note_text: Last 1000 accidents
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 42
    col: 0
    width: 24
    height: 8
  - name: Crash Analysis
    type: text
    title_text: Crash Analysis
    subtitle_text: __________________________________________________________________________________
    body_text: ''
    row: 4
    col: 0
    width: 24
    height: 2
  - name: Severity Index
    type: text
    title_text: Severity Index
    subtitle_text: __________________________________________________________________________________
    body_text: ''
    row: 29
    col: 0
    width: 24
    height: 2
  - title: Crash Characteristics
    name: Crash Characteristics
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_column
    fields: [MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.crash_characteristic]
    filters: {}
    sorts: [MDOT_Crash_Analysis.count desc]
    limit: 500
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: "*Select the characteristic from the filter at the top of the Dashboard"
    listen:
      Select Characteristic (* Crash Characteristics Report): MDOT_Crash_Analysis.select_crash_characteristic
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 14
    col: 0
    width: 12
    height: 8
  - title: Crashes by Time of Day
    name: Crashes by Time of Day
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_column
    fields: [MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.time_of_day, MDOT_Crash_Analysis.average_severity_index]
    filters:
      MDOT_Crash_Analysis.severity_index: ">0"
    sorts: [MDOT_Crash_Analysis.count desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: MDOT_Crash_Analysis.count,
            id: MDOT_Crash_Analysis.count, name: "# of Crashes"}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: MDOT_Crash_Analysis.average_severity_index,
            id: MDOT_Crash_Analysis.average_severity_index, name: Average Severity
              Index}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      MDOT_Crash_Analysis.average_severity_index: scatter
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 14
    col: 12
    width: 12
    height: 8
  - name: Details (2)
    type: text
    title_text: Details
    subtitle_text: _________________________________________________________________________________
    body_text: ''
    row: 40
    col: 0
    width: 24
    height: 2
  - title: Crashes by Day of week
    name: Crashes by Day of week
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_area
    fields: [MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.crash_day_of_week]
    fill_fields: [MDOT_Crash_Analysis.crash_day_of_week]
    sorts: [MDOT_Crash_Analysis.crash_day_of_week]
    limit: 500
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application: undefined
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      MDOT_Crash_Analysis.count:
        is_active: true
        palette:
          palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
        value_display: true
    ordering: none
    show_null_labels: false
    x_axis_label: Day of Week
    font_size: '12'
    series_types: {}
    series_colors:
      No property damage: "#75E2E2"
    reference_lines: []
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen: {}
    row: 22
    col: 0
    width: 8
    height: 7
  - title: Crashes by Month
    name: Crashes by Month
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_line
    fields: [MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.crash_month_name]
    fill_fields: [MDOT_Crash_Analysis.crash_month_name]
    sorts: [MDOT_Crash_Analysis.crash_month_name]
    limit: 500
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
      MDOT_Crash_Analysis.count:
        is_active: true
        palette:
          palette_id: a3f9463f-88e2-450e-9363-9525c96ecd6d
          collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 22
    col: 15
    width: 9
    height: 7
  - title: Property Damage Involved
    name: Property Damage Involved
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    type: looker_pie
    fields: [MDOT_Crash_Analysis.count, MDOT_Crash_Analysis.crash_property_damage]
    sorts: [MDOT_Crash_Analysis.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_colors:
      No property damage: "#75E2E2"
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
    font_size: 12
    listen:
      Crash Date: MDOT_Crash_Analysis.crash_date
    row: 22
    col: 8
    width: 7
    height: 7
  filters:
  - name: Crash Date
    title: Crash Date
    type: field_filter
    default_value: 2019/06/23 to 2019/07/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    listens_to_filters: []
    field: MDOT_Crash_Analysis.crash_date
  - name: Select Characteristic (* Crash Characteristics Report)
    title: Select Characteristic (* Crash Characteristics Report)
    type: field_filter
    default_value: road^_conditions
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: dl_mdot_crash_analysis
    explore: MDOT_Crash_Analysis
    listens_to_filters: []
    field: MDOT_Crash_Analysis.select_crash_characteristic
