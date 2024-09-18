view: product {
  sql_table_name: `hubspot_dataset.Product` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: agegroup {
    type: string
    sql: ${TABLE}.`age-group` ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: brand_google {
    sql: ${brand} ;;
    link: {
      label: "Google"
      url: "https://www.google.com/search?q={{ value }}"
      icon_url: "https://google.com/favicon.ico"
    }
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: closetupprice {
    type: number
    sql: ${TABLE}.`closetup-price` ;;
  }
  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: hubspotcontactid {
    type: number
    sql: ${TABLE}.`hubspot-contact-id` ;;
  }
  dimension: hubspotcontractid {
    type: number
    sql: ${TABLE}.`hubspot-contract-id` ;;
  }
  dimension: hubspotid {
    type: number
    sql: ${TABLE}.`hubspot-id` ;;
  }
  dimension: hubspotstage {
    type: string
    sql: ${TABLE}.`hubspot-stage` ;;
  }
  dimension: margin {
    type: number
    sql: ${TABLE}.margin ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }
  dimension: owneremail {
    type: string
    sql: ${TABLE}.`owner-email` ;;
  }
  dimension: ownername {
    type: string
    sql: ${TABLE}.`owner-name` ;;
  }
  dimension: pageimage {
    type: string
    sql: ${TABLE}.`page-image` ;;
  }
  dimension: productstate {
    type: string
    sql: ${TABLE}.`product-state` ;;
  }
  dimension: publicimage {
    type: string
    sql: ${TABLE}.`public-image` ;;
  }
  dimension: sellerprice {
    type: number
    sql: ${TABLE}.`seller-price` ;;
  }
  dimension: sellprice {
    type: number
    sql: ${TABLE}.`sell-price` ;;
  }
  dimension: sigoproductnumber {
    type: string
    sql: ${TABLE}.`sigo-product-number` ;;
  }
  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  dimension: subcategory {
    type: string
    sql: ${TABLE}.`sub-category` ;;
  }
  measure: count {
    type: count
    drill_fields: [id, ownername, name]
  }
}
