json.array!(@lembretes) do |lembrete|
  json.extract! lembrete, :id, :interessado_id, :observacao, :nome, :data_max
  json.url lembrete_url(lembrete, format: :json)
end
