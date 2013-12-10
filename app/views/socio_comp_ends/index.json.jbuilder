json.array!(@socio_comp_ends) do |socio_comp_end|
  json.extract! socio_comp_end, :id, :interessado_id, :arquivo
  json.url socio_comp_end_url(socio_comp_end, format: :json)
end
