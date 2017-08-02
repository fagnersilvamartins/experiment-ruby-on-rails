json.extract! client, :id, :name, :active, :birthday, :register, :height, :created_at, :updated_at
json.url client_url(client, format: :json)
