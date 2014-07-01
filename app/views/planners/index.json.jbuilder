json.array!(@planners) do |planner|
  json.extract! planner, :id, :start_time, :end_time, :day, :max_temperature, :min_temperature, :start_date, :end_date, :enable, :termostat_id
  json.url planner_url(planner, format: :json)
end
