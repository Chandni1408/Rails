json.extract! register, :id, :name, :price, :created_at, :updated_at
json.url register_url(register, format: :json)
