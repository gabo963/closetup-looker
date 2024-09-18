connection: "closetup_base"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: closetup_prueba_2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: closetup_prueba_2_default_datagroup

explore: product {}

