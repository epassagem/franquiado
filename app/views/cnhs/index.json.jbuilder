json.array!(@cnhs) do |cnh|
  json.extract! cnh, :id, :interessado_id, :arquivo
  json.url cnh_url(cnh, format: :json)
end
