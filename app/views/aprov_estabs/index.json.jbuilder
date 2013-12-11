json.array!(@aprov_estabs) do |aprov_estab|
  json.extract! aprov_estab, :id, :interessado_id, :arquivo_doc
  json.url aprov_estab_url(aprov_estab, format: :json)
end
