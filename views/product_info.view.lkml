
# If necessary, uncomment the line below to include explore_source.
# include: "crompton_123.model.lkml"

  view: product_info {
    derived_table: {
      explore_source: products {
        timezone: "UTC"
        column: id {}
        column: brand {}
        column: category {}
        column: count {}
        column: retail_price {}
        column: item_name {
          field: products.item_name
        }
        derived_column: average_retail_price {
          sql: retail_price / count ;;
        }
        filters: [products.brand: " jeans"]
      }
    }

    dimension: id {
      primary_key: yes
      description: ""
      type: number
    }
    dimension: brand {
      description: ""
    }
    dimension: category {
      description: ""
    }
    dimension: count {
      description: ""
      type: number
    }
    dimension: retail_price {
      description: ""
      type: number
    }
    dimension: item_name {
      type: string
    }
    dimension: average_retail_price {
      type: number
      }
  }
