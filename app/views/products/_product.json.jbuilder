json.extract! product, :id, :name, :quant, :created_at, :updated_at
json.url product_url(product, format: :json)
