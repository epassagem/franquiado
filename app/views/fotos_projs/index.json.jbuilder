json.array!(@fotos_projs) do |fotos_proj|
  json.extract! fotos_proj, :id, :aprov_proj_id, :foto
  json.url fotos_proj_url(fotos_proj, format: :json)
end
