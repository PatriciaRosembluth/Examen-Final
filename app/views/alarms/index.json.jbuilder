json.array!(@alarms) do |alarm|
  json.extract! alarm, :id, :temp_max, :temp_min, :trigger_time, :thermostat_id
  json.url alarm_url(alarm, format: :json)
end
