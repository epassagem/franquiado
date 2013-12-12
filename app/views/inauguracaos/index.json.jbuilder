json.array!(@inauguracaos) do |inauguracao|
  json.extract! inauguracao, :id, :interessado_id, :arquivo_doc, :data_start, :data_end
  json.url inauguracao_url(inauguracao, format: :json)
end
