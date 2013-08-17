json.array!(@areas) do |area|
  json.extract! area, :display_name, :internal_name, :area_type, :latitude, :longitude
  json.url area_url(area, format: :json)
end
