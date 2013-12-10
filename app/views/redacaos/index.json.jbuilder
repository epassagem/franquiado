json.array!(@redacaos) do |redacao|
  json.extract! redacao, :id, :interessado_id, :arquivo
  json.url redacao_url(redacao, format: :json)
end
