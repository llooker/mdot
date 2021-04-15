view: mdot_regions {
  sql_table_name: `mi-dept-of-transportation.reference.mdot_regions`
    ;;

  dimension: geom {
    type: string
    sql: ${TABLE}.geom ;;
  }

  dimension: region_abbreviation {
    type: string
    sql: ${TABLE}.Region_Abbreviation ;;
  }

  dimension: region_code {
    type: number
    map_layer_name: mdot_regions
    sql: ${TABLE}.Region_Code ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.Region_Name ;;
    case_sensitive: yes
    link: {
      label: "Regional Details Dashboard"
      url: "/dashboards-next/9?Region+Name={{ filterable_value | upcase }}"
    }
  }

  dimension: region_office_city {
    type: string
    sql: ${TABLE}.Region_Office_City ;;
  }

  dimension: region_office_county_fips_code {
    type: number
    sql: ${TABLE}.Region_Office_County_FIPS_Code ;;
  }

  dimension: region_office_fax_number {
    type: number
    sql: ${TABLE}.Region_Office_Fax_Number ;;
  }

  dimension: region_office_phone_number {
    type: number
    sql: ${TABLE}.Region_Office_Phone_Number ;;
  }

  dimension: region_office_street_addr {
    type: string
    sql: ${TABLE}.Region_Office_Street_Addr ;;
  }

  dimension: region_office_zip_code {
    type: number
    sql: ${TABLE}.Region_Office_Zip_Code ;;
  }

  measure: count {
    type: count
    drill_fields: [region_name]
  }
}
