json.array!(@doc_fiscais_corings) do |doc_fiscais_coring|
  json.extract! doc_fiscais_coring, :id, :interessado_id, :arquivo, :nome
  json.url doc_fiscais_coring_url(doc_fiscais_coring, format: :json)
end
