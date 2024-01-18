
# If necessary, uncomment the line below to include explore_source.
# include: "crompton_123.model.lkml"

  view: product_info {
    derived_table: {
      explore_source: products {
        column: id {}
        column: brand {}
        column: category {}
        column: count {}
        column: retail_price {}
      }
    }
    dimension: id {
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
  }
