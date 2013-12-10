json.array!(@socio_doc_fiscais_corings) do |socio_doc_fiscais_coring|
  json.extract! socio_doc_fiscais_coring, :id, :interessado_id, :arquivo, :nome
  json.url socio_doc_fiscais_coring_url(socio_doc_fiscais_coring, format: :json)
end
