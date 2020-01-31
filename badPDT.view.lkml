include: "base_orders.view.lkml"

view: badpdt {
derived_table: {
  create_process: {
    sql_step: CREATE ${SQL_TABLE_NAME} AS (
    SELECT * FROM ORDERS ;;
    sql_step: INSERT INTO demo_db_generator.orders
    SELECT * ${SQL_TABLE_NAME} ;;
  }
  datagroup_trigger: bad_trigger_does_not_exist
}

  dimension: id {}

  }
  explore: badpdt {}

#### adding comment
