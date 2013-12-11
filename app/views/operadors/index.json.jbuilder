json.array!(@operadors) do |operador|
  json.extract! operador, :id, :interessado_id, :arquivo, :data_fim, :verificador
  json.url operador_url(operador, format: :json)
end
