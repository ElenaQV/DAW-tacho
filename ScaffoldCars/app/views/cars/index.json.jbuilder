json.array!(@cars) do |car|
  json.extract! car, :id, :brand, :model, :year, :price, :acdquisition_date
  json.url car_url(car, format: :json)
end
