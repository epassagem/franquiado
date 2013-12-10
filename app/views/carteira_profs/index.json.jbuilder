json.array!(@carteira_profs) do |carteira_prof|
  json.extract! carteira_prof, :id, :interessado_id, :arquivo
  json.url carteira_prof_url(carteira_prof, format: :json)
end
