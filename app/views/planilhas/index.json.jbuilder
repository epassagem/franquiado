json.array!(@planilhas) do |planilha|
  json.extract! planilha, :id, :interessado_id, :arquivo, :nome
  json.url planilha_url(planilha, format: :json)
end
