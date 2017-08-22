json.extract! product, :id, :name, :price, :descreption, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
