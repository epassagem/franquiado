json.array!(@pagto_taxas) do |pagto_taxa|
  json.extract! pagto_taxa, :id, :interessado_id, :arquivo
  json.url pagto_taxa_url(pagto_taxa, format: :json)
end
