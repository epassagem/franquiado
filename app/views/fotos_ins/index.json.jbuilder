json.array!(@fotos_ins) do |fotos_in|
  json.extract! fotos_in, :id, :inauguracao_id, :foto
  json.url fotos_in_url(fotos_in, format: :json)
end
