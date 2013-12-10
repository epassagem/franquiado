json.array!(@socio_rgs) do |socio_rg|
  json.extract! socio_rg, :id, :interessado_id, :arquivo
  json.url socio_rg_url(socio_rg, format: :json)
end
