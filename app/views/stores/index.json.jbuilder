json.array!(@stores) do |store|
  json.extract! store, :client_id, :branded_name, :status_code, :advertising_start_date, :advertising_end_date, :street, :city, :state, :zip, :url, :contact_name, :contact_email, :facility_number, :marketing_number, :logo_url
  json.url store_url(store, format: :json)
end
