json.array!(@professors) do |professor|
  json.extract! professor, :id, :interessado_id, :arquivo, :data_fim, :verificador
  json.url professor_url(professor, format: :json)
end
