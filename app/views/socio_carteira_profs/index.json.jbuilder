json.array!(@socio_carteira_profs) do |socio_carteira_prof|
  json.extract! socio_carteira_prof, :id, :interessado_id, :arquivo
  json.url socio_carteira_prof_url(socio_carteira_prof, format: :json)
end
