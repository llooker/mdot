view: mdot_county_region_lookup {
  sql_table_name: `lookerdata.reference.mdot_county_region_lookup`
    ;;

  dimension: county_fips_code {
    type: string
    map_layer_name: us_counties_fips
    sql: ${TABLE}.County_FIPS_Code ;;
  }

  dimension: county_id {
    type: string
    sql: ${TABLE}.County_Id ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.County_Name ;;
  }

  dimension: region_abbreviation {
    type: string
    sql: ${TABLE}.Region_Abbreviation ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.Region_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [region_name, county_name]
  }
}
