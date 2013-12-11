json.array!(@fotos_estabs) do |fotos_estab|
  json.extract! fotos_estab, :id, :aprov_estab_id, :foto
  json.url fotos_estab_url(fotos_estab, format: :json)
end
