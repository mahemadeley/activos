json.extract! activo, :id, :descripcion, :precio, :fecha, :sector, :created_at, :updated_at
json.url activo_url(activo, format: :json)
