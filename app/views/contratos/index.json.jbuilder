json.array!(@contratos) do |contrato|
  json.extract! contrato, :id, :interessado_id, :arquivo
  json.url contrato_url(contrato, format: :json)
end
