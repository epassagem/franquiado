json.array!(@socio_cnhs) do |socio_cnh|
  json.extract! socio_cnh, :id, :interessado_id, :arquivo
  json.url socio_cnh_url(socio_cnh, format: :json)
end
