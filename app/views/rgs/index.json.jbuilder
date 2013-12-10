json.array!(@rgs) do |rg|
  json.extract! rg, :id, :interessado_id, :arquivo
  json.url rg_url(rg, format: :json)
end
