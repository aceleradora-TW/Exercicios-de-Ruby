json.array!(@geofences) do |geofence|
  json.extract! geofence, :id, :name, :lat, :lon, :radius
  json.url geofence_url(geofence, format: :json)
end
