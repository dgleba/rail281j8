json.extract! product, :id, :name, :type_name, :comment, :created_at, :updated_at
json.url product_url(product, format: :json)