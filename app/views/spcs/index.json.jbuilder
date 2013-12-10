json.array!(@spcs) do |spc|
  json.extract! spc, :id, :interessado_id, :arquivo
  json.url spc_url(spc, format: :json)
end
