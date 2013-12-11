json.array!(@pre_contratos) do |pre_contrato|
  json.extract! pre_contrato, :id, :interessado_id, :arquivo
  json.url pre_contrato_url(pre_contrato, format: :json)
end
