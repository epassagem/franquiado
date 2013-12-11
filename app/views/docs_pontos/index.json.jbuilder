json.array!(@docs_pontos) do |docs_ponto|
  json.extract! docs_ponto, :id, :interessado_id, :arquivo, :nome
  json.url docs_ponto_url(docs_ponto, format: :json)
end
