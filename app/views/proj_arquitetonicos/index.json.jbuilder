json.array!(@proj_arquitetonicos) do |proj_arquitetonico|
  json.extract! proj_arquitetonico, :id, :interessado_id, :arquivo
  json.url proj_arquitetonico_url(proj_arquitetonico, format: :json)
end
