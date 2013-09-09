json.array!(@features) do |feature|
  json.extract! feature, :name, :category, :assigned_to
  json.url feature_url(feature, format: :json)
end
