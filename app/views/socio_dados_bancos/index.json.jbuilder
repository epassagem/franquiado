json.array!(@socio_dados_bancos) do |socio_dados_banco|
  json.extract! socio_dados_banco, :id, :interessado_id, :arquivo
  json.url socio_dados_banco_url(socio_dados_banco, format: :json)
end
