json.array!(@services) do |service|
  json.extract! service, :name, :assigned_to, :status_code, :description, :cost, :start_date, :end_date
  json.url service_url(service, format: :json)
end
