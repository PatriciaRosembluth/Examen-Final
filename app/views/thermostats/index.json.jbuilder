json.array!(@thermostats) do |thermostat|
  json.extract! thermostat, :id, :serial, :user_id
  json.url thermostat_url(thermostat, format: :json)
end
