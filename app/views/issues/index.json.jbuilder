json.array!(@issues) do |issue|
  json.extract! issue, :id, :thermostat_id, :description, :status, :resolution
  json.url issue_url(issue, format: :json)
end
