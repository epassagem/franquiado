json.array!(@dados_bancos) do |dados_banco|
  json.extract! dados_banco, :id, :interessado_id, :arquivo
  json.url dados_banco_url(dados_banco, format: :json)
end
