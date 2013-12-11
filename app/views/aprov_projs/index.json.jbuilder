json.array!(@aprov_projs) do |aprov_proj|
  json.extract! aprov_proj, :id, :interessado_id, :arquivo_doc
  json.url aprov_proj_url(aprov_proj, format: :json)
end
