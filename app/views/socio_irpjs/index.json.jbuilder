json.array!(@socio_irpjs) do |socio_irpj|
  json.extract! socio_irpj, :id, :interessado_id, :arquivo
  json.url socio_irpj_url(socio_irpj, format: :json)
end
