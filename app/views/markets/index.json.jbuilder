json.array!(@markets) do |market|
  json.extract! market, :id, :interessado_id, :arquivo, :nome
  json.url market_url(market, format: :json)
end
