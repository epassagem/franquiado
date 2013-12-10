json.array!(@socio_cpfs) do |socio_cpf|
  json.extract! socio_cpf, :id, :interessado_id, :arquivo
  json.url socio_cpf_url(socio_cpf, format: :json)
end
