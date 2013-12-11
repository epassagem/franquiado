json.array!(@cofs) do |cof|
  json.extract! cof, :id, :interessado_id, :data_fim, :estatus, :arquivo
  json.url cof_url(cof, format: :json)
end
