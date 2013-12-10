json.array!(@irpjs) do |irpj|
  json.extract! irpj, :id, :interessado_id, :arquivo
  json.url irpj_url(irpj, format: :json)
end
