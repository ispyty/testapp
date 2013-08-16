json.array!(@clients) do |client|
  json.extract! client, :branded_name, :status, :advertising_start_date, :advertising_end_date, :url, :street, :city, :state, :zip, :logo_url
  json.url client_url(client, format: :json)
end
