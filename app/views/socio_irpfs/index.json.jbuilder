json.array!(@socio_irpfs) do |socio_irpf|
  json.extract! socio_irpf, :id, :interessado_id, :arquivo
  json.url socio_irpf_url(socio_irpf, format: :json)
end
