json.array!(@plan_resumos) do |plan_resumo|
  json.extract! plan_resumo, :id, :interessado_id, :arquivo
  json.url plan_resumo_url(plan_resumo, format: :json)
end
