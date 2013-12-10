json.array!(@socio_serasas) do |socio_serasa|
  json.extract! socio_serasa, :id, :interessado_id, :arquivo
  json.url socio_serasa_url(socio_serasa, format: :json)
end
