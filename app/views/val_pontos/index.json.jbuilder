json.array!(@val_pontos) do |val_ponto|
  json.extract! val_ponto, :id, :interessado_id, :arquivo
  json.url val_ponto_url(val_ponto, format: :json)
end
