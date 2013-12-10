json.array!(@socio_spcs) do |socio_spc|
  json.extract! socio_spc, :id, :interessado_id, :arquivo
  json.url socio_spc_url(socio_spc, format: :json)
end
