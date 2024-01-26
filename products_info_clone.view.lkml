
view: products_info_clone {
  derived_table: {
    sql: SELECT id as ID, 
      category as cate,
      brand as branding 
      FROM 
      products
      GROUP BY id ; ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: cate {
    type: string
    sql: ${TABLE}.cate ;;
  }

  dimension: branding {
    type: string
    sql: ${TABLE}.branding ;;
  }

  set: detail {
    fields: [
        id,
	cate,
	branding
    ]
  }
}
