json.array!(@fruta) do |frutum|
  json.extract! frutum, :id, :name, :color, :size
  json.url frutum_url(frutum, format: :json)
end
