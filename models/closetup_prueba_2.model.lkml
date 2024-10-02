connection: "closetup_base"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: closetup_prueba_2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: closetup_prueba_2_default_datagroup

explore: product {
  #access_filter: {
  #  field: product.brand
  #  user_attribute: brand
  #}
  join: contacts {
    sql_on: ${product.owneremail} = ${contacts.email};;
    relationship: one_to_one
    type: full_outer
  }
}

explore: contacts {
}
