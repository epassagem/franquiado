json.array!(@coordenadors) do |coordenador|
  json.extract! coordenador, :id, :interessado_id, :arquivo, :data_fim, :verificador
  json.url coordenador_url(coordenador, format: :json)
end
