json.array!(@cronogramas) do |cronograma|
  json.extract! cronograma, :id, :interessado_id, :arquivo
  json.url cronograma_url(cronograma, format: :json)
end
