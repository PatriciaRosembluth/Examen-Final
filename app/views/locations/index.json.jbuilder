json.array!(@locations) do |location|
  json.extract! location, :id, :property, :room, :city, :address, :thermostat_id, :user_id
  json.url location_url(location, format: :json)
end
