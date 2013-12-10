json.array!(@observs) do |observ|
  json.extract! observ, :id, :interessado_id, :observacao
  json.url observ_url(observ, format: :json)
end
