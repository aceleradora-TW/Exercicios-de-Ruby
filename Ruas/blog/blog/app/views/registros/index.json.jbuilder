json.array!(@registros) do |registro|
  json.extract! registro, :id, :nome, :msg
  json.url registro_url(registro, format: :json)
end
