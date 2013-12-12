json.array!(@consultors) do |consultor|
  json.extract! consultor, :id, :interessado_id, :arquivo, :data_fim, :verificador
  json.url consultor_url(consultor, format: :json)
end
